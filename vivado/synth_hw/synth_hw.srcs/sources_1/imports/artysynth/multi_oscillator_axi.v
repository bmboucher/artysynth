
`timescale 1 ns / 1 ps

    // AXI address space 0x1***_**** (dev1: Multi-Oscillator)
    // ======================================================
    //
    // Registers:
    //
    //    0b0001_0000_0000_0000_0000_0000_000n_nn00 = Frequency multiplier n (n=1..7)
    //
    // Direct mapping to parameter BRAM:
    //
    //    0b0001_100x_xxxx_xxxx_xxxx_xnnn_nnnn_nn00 = Oscillator n parameter (lower)
    //    0b0001_101x_xxxx_xxxx_xxxx_xnnn_nnnn_nn00 = Oscillator n parameter (upper)
    //    
    //    ** The parameter file is Nx64 bits for N oscillators, mapped to AXI in two
    //    *  contiguous N-arrays of 32-bit words, but stored in BRAM interleaved so that
    //    *  all 64 bits are accessed by PORTB each cycle. This requires shifting the
    //    ** MSB of the address to the LSB between AXI and BRAM.
    //
    //    0b0001_110x_xbbb_bbbb_bbbb_bbbb_bnnn_nn00 = Oscillator bank n, mask b parameters (lower)
    //    0b0001_111x_xbbb_bbbb_bbbb_bbbb_bnnn_nn00 = Oscillator bank n, mask b parameters (upper)
    //
    //    ** Oscillators are grouped into 'banks' of 16 which can have parameter values
    //    *  set simultaneously. The 'n' bits in the address are used to select the bank
    //    *  number, while the 'b' bits are a mask which select some or all of the
    //    ** oscillators from the selected bank to apply the data on the data bus to.

	module multi_oscillator_axi #
	(
		// S_AXI interface from MicroBlaze (32-bit addr/data)
		parameter integer C_S_AXI_DATA_WIDTH = 32,
		parameter integer C_S_AXI_ADDR_WIDTH = 32,

        // Number/size of software-controlled frequency multipliers
		parameter integer FREQ_MULT_WIDTH = 16,
		parameter integer NUM_FREQ_MULT = 7,
		
		// Determines the size of the parameter file
		parameter integer NUM_OSCILLATORS = 500,
		parameter integer NUM_PARAM_PER_OSC = 2,
		parameter integer OSC_PER_BANK = 16,

        // Dimensions of parameter BRAM interface
		parameter integer BRAM_DEPTH = NUM_OSCILLATORS * NUM_PARAM_PER_OSC,
		parameter integer BRAM_ADDR_WIDTH = $clog2(BRAM_DEPTH),
		parameter integer BRAM_DATA_WIDTH = C_S_AXI_DATA_WIDTH,

        // Prefix bits are used to select multiple 'devices' on the same AXI bus
		parameter integer DEVICE_ID_WIDTH = 4,
		parameter integer DEVICE_ID = 1
	)
	(
	    // Freq multipliers -> accumulator
        output [(NUM_FREQ_MULT * FREQ_MULT_WIDTH - 1):0] freq_mult,
        
        // Parameter update in BRAM        
        output [BRAM_ADDR_WIDTH-1:0] param_bram_addr,
        output [BRAM_DATA_WIDTH-1:0] param_bram_data,
        output [(BRAM_DATA_WIDTH/8)-1:0] param_bram_wen,
        
		// Global Clock Signal
		input wire  clk,
		// Global Reset Signal. This Signal is Active LOW
		input wire  rst,
		
		// AXI Slave interface
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
    wire S_AXI_ACLK = clk;
    wire S_AXI_ARESETN = ~rst;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;
	
	integer	byte_index;
	integer freq_mult_i;
	
    // Registered output interface to BRAM
    reg [(BRAM_DATA_WIDTH/8)-1:0]  param_bram_wen_reg; // Latched from S_AXI_WSTRB
    reg                            param_bram_mask_en; // Used during bank writes
    wire [(BRAM_DATA_WIDTH/8)-1:0] param_bram_wen_out;
    reg [BRAM_ADDR_WIDTH-1:0]      param_bram_addr_reg;
    reg [BRAM_DATA_WIDTH-1:0]      param_bram_data_reg;
    
    assign param_bram_wen  = param_bram_wen_out;
    assign param_bram_addr = param_bram_addr_reg;
    assign param_bram_data = param_bram_data_reg;

    // Registered frequency multiplier output 
	reg [(NUM_FREQ_MULT * FREQ_MULT_WIDTH - 1):0] freq_mult_reg;
    assign freq_mult = freq_mult_reg;
	
    // AXI addresses are memory-mapped, i.e. in bytes, so we ignore
    // the last two bits for 32-bit words (clog2(32/8) = 2)
	localparam integer ADDR_LSB = $clog2(C_S_AXI_DATA_WIDTH/8);
	
	// Sizes of various ranges in the address bus
	localparam integer DEVICE_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH - DEVICE_ID_WIDTH;
	localparam integer FREQ_MULT_ADDR_WIDTH = $clog2(NUM_FREQ_MULT);
	localparam integer PARAM_INDEX_WIDTH = $clog2(NUM_PARAM_PER_OSC);
	localparam integer OSC_INDEX_WIDTH = $clog2(NUM_OSCILLATORS);
	localparam integer NUM_BANKS = (NUM_OSCILLATORS + OSC_PER_BANK - 1) / OSC_PER_BANK;
	localparam integer BANK_INDEX_WIDTH = $clog2(NUM_BANKS);
	localparam integer BANK_OFFSET_WIDTH = OSC_INDEX_WIDTH - BANK_INDEX_WIDTH;

    // Decomposing the address bus
	wire [DEVICE_ADDR_WIDTH-1:0] axi_device_id      = axi_awaddr[(C_S_AXI_ADDR_WIDTH-1) : DEVICE_ADDR_WIDTH];
	wire bram_flag                                  = axi_awaddr[DEVICE_ADDR_WIDTH-1];
	wire bank_flag                                  = axi_awaddr[DEVICE_ADDR_WIDTH-2];
	wire [PARAM_INDEX_WIDTH-1:0] bram_param_index   = axi_awaddr[DEVICE_ADDR_WIDTH-3 -: PARAM_INDEX_WIDTH];
	wire [FREQ_MULT_ADDR_WIDTH-1:0] freq_mult_index = axi_awaddr[ADDR_LSB +: FREQ_MULT_ADDR_WIDTH];
	wire [OSC_INDEX_WIDTH-1:0] osc_index            = axi_awaddr[ADDR_LSB +: OSC_INDEX_WIDTH];
	wire [BANK_INDEX_WIDTH-1:0] bank_index          = axi_awaddr[ADDR_LSB +: BANK_INDEX_WIDTH];
	wire [OSC_PER_BANK-1:0] bank_mask               = axi_awaddr[ADDR_LSB + BANK_INDEX_WIDTH +: OSC_PER_BANK];

    // Generate AXI R/W signals
    assign axi_rd_en = axi_arready && S_AXI_ARVALID && ~axi_rvalid;
    assign axi_wr_en = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
    
    // Validate address = 0b0001_..._xx00
	assign axi_device_valid = (axi_device_id == DEVICE_ID);
	assign mem_access_aligned = ~|axi_awaddr[0 +: ADDR_LSB];
	assign valid_address = axi_device_valid && mem_access_aligned;
	
	// Generate 'pass-through' R/W signals
    assign rd_en = axi_rd_en && valid_address && ~bram_flag; // Can only read freq mult registers
	assign wr_en = axi_wr_en && valid_address;
	assign freq_mult_wr_en = wr_en && ~bram_flag;
	
	// I/O Connections assignments
	assign S_AXI_AWREADY = axi_awready;
	assign S_AXI_WREADY	 = axi_wready;
	assign S_AXI_BRESP	 = axi_bresp;
	assign S_AXI_BVALID	 = axi_bvalid;
	assign S_AXI_ARREADY = axi_arready;
	assign S_AXI_RDATA	 = axi_rdata;
	assign S_AXI_RRESP	 = axi_rresp;
	assign S_AXI_RVALID	 = axi_rvalid;

    // Counter for bank writes
    reg [BANK_OFFSET_WIDTH-1:0] bank_offset;
	assign bank_wr_en = (wr_en && bram_flag && bank_flag) || bank_offset != 0;
	assign bank_skip_ahead = ~bank_mask[0] && ~&bank_offset;
	
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.
	reg	aw_en; // Low when a write transaction has been received but not acknowledged
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	      aw_en <= 1'b1;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en && (bank_offset == 0))
	        begin
	          axi_awready <= 1'b1;
	          aw_en <= 1'b0;
	        end
	      else if (S_AXI_BREADY && axi_bvalid)
            begin
              aw_en <= 1'b1;
              axi_awready <= 1'b0;
            end
	      else           
	        begin
	          axi_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && aw_en)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	      else if ( bank_wr_en )
	        begin
	           if ( bank_skip_ahead )
	               axi_awaddr[ADDR_LSB + BANK_INDEX_WIDTH +: OSC_PER_BANK-2]
                    <= axi_awaddr[ADDR_LSB + BANK_INDEX_WIDTH + 2 +: OSC_PER_BANK-2];
               else
	               axi_awaddr[ADDR_LSB + BANK_INDEX_WIDTH +: OSC_PER_BANK-1]
                    <= axi_awaddr[ADDR_LSB + BANK_INDEX_WIDTH + 1 +: OSC_PER_BANK-1];                               
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && aw_en )
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.

    always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	       freq_mult_reg <= 0;
	    end 
	  else begin
	    if (freq_mult_wr_en)
	      begin
	        for (freq_mult_i = 1; freq_mult_i <= NUM_FREQ_MULT; freq_mult_i = freq_mult_i + 1) begin
	          if ( freq_mult_index == freq_mult_i ) begin
                for ( byte_index = 0; byte_index <= (FREQ_MULT_WIDTH/8)-1; byte_index = byte_index+1 ) begin
                  if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                  // Respective byte enables are asserted as per write strobes 
	                  freq_mult_reg[((freq_mult_i-1)*FREQ_MULT_WIDTH + byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end 
                end
	          end
	        end
	      end
	  end
	end    

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end 
	  else
	    begin    
	      if (axi_wr_en && ~axi_bvalid)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          if (wr_en)
    	          axi_bresp <= 2'b0; // 'OKAY' response
    	      else
    	          axi_bresp <= 2'b10; // 'SLVERR' response if device ID invalid 
	        end
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid) 
	            //check if bready is asserted while bvalid is high) 
	            //(there is a possibility that bready is always asserted high)   
	            begin
	              axi_bvalid <= 1'b0; 
	            end  
	        end
	    end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 32'b0;
	    end 
	  else
	    begin    
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end 
	end       


	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axi_rd_en)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          if (rd_en)
    	          axi_rresp <= 2'b0; // 'OKAY' response
              else
                  axi_rresp <= 2'b10; // 'SLVERR' response from invalid read
	        end   
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
    reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
	always @(*)
	begin
	   reg_data_out <= 0;
	   for (freq_mult_i = 1; freq_mult_i <= NUM_FREQ_MULT; freq_mult_i = freq_mult_i + 1) begin
	       if ( freq_mult_index == freq_mult_i ) begin
	           reg_data_out[FREQ_MULT_WIDTH-1:0] <= 
	               freq_mult_reg[(freq_mult_i-1)*FREQ_MULT_WIDTH +: FREQ_MULT_WIDTH];
	       end
	   end
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end 
	  else
	    begin    
	      // When there is a valid read address (S_AXI_ARVALID) with 
	      // acceptance of read address by the slave (axi_arready), 
	      // output the read dada 
	      if (rd_en)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end   
	    end
	end    

	// Latch BRAM outputs
	always @( posedge clk )
	begin
      param_bram_wen_reg <= 0;
      param_bram_mask_en <= 0;
      if ( S_AXI_ARESETN == 1'b0 ) begin
        bank_offset <= 0;
        param_bram_addr_reg <= 0;
        param_bram_data_reg <= 0;
      end else begin
        if (wr_en && bram_flag) begin
          param_bram_wen_reg <= S_AXI_WSTRB;
   	      param_bram_data_reg <= S_AXI_WDATA;
	      if (~bank_flag) begin
	        param_bram_addr_reg <= {osc_index, bram_param_index};
   	        param_bram_mask_en <= 1;
          end
        end  
      
	    if ( bank_wr_en ) begin
          param_bram_addr_reg <= {bank_index, bank_offset, bram_param_index};
          if (bank_skip_ahead) begin
              // Look-ahead logic, skip next oscillator in bank if deselected
              // In the extreme, an all-zero bank mask 'writes' in 8 cycles instead of 16
              param_bram_mask_en <= bank_mask[1];
              bank_offset <= bank_offset + 2;
          end else begin
              param_bram_mask_en <= bank_mask[0];
              bank_offset <= bank_offset + 1;          
          end          
        end 
      end
	end
	
	assign param_bram_wen_out = param_bram_mask_en ? param_bram_wen_reg : 0;
endmodule
