
`timescale 1 ns / 1 ps

	module multi_oscillator_top #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface CTRL_AXI
		parameter integer C_CTRL_AXI_DATA_WIDTH	= 32,
		parameter integer C_CTRL_AXI_ADDR_WIDTH	= 7
	)
	(
		// Frequency BRAM ports (read-only)
		output [31:0] freq_bram_addr,
        input [31:0] freq_bram_rddata,
        
        // State FIFO ports
        input wire state_fifo_full,
        input wire state_fifo_prog_full,
        input wire state_fifo_empty,
        output [63:0] state_fifo_dout,
        input [63:0] state_fifo_din,
        output wire state_fifo_wr_en,
        output wire state_fifo_rd_en,
        output wire state_fifo_rst,

		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface CTRL_AXI
		input wire  ctrl_axi_aclk,
		input wire  ctrl_axi_aresetn,
		input wire [C_CTRL_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_awaddr,
		input wire [2 : 0] ctrl_axi_awprot,
		input wire  ctrl_axi_awvalid,
		output wire  ctrl_axi_awready,
		input wire [C_CTRL_AXI_DATA_WIDTH-1 : 0] ctrl_axi_wdata,
		input wire [(C_CTRL_AXI_DATA_WIDTH/8)-1 : 0] ctrl_axi_wstrb,
		input wire  ctrl_axi_wvalid,
		output wire  ctrl_axi_wready,
		output wire [1 : 0] ctrl_axi_bresp,
		output wire  ctrl_axi_bvalid,
		input wire  ctrl_axi_bready,
		input wire [C_CTRL_AXI_ADDR_WIDTH-1 : 0] ctrl_axi_araddr,
		input wire [2 : 0] ctrl_axi_arprot,
		input wire  ctrl_axi_arvalid,
		output wire  ctrl_axi_arready,
		output wire [C_CTRL_AXI_DATA_WIDTH-1 : 0] ctrl_axi_rdata,
		output wire [1 : 0] ctrl_axi_rresp,
		output wire  ctrl_axi_rvalid,
		input wire  ctrl_axi_rready
	);
// Instantiation of Axi Bus Interface CTRL_AXI
	multi_oscillator_axi # ( 
		.C_S_AXI_DATA_WIDTH(C_CTRL_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_CTRL_AXI_ADDR_WIDTH)
	) multi_oscillator_axi_inst (
		.S_AXI_ACLK(ctrl_axi_aclk),
		.S_AXI_ARESETN(ctrl_axi_aresetn),
		.S_AXI_AWADDR(ctrl_axi_awaddr),
		.S_AXI_AWPROT(ctrl_axi_awprot),
		.S_AXI_AWVALID(ctrl_axi_awvalid),
		.S_AXI_AWREADY(ctrl_axi_awready),
		.S_AXI_WDATA(ctrl_axi_wdata),
		.S_AXI_WSTRB(ctrl_axi_wstrb),
		.S_AXI_WVALID(ctrl_axi_wvalid),
		.S_AXI_WREADY(ctrl_axi_wready),
		.S_AXI_BRESP(ctrl_axi_bresp),
		.S_AXI_BVALID(ctrl_axi_bvalid),
		.S_AXI_BREADY(ctrl_axi_bready),
		.S_AXI_ARADDR(ctrl_axi_araddr),
		.S_AXI_ARPROT(ctrl_axi_arprot),
		.S_AXI_ARVALID(ctrl_axi_arvalid),
		.S_AXI_ARREADY(ctrl_axi_arready),
		.S_AXI_RDATA(ctrl_axi_rdata),
		.S_AXI_RRESP(ctrl_axi_rresp),
		.S_AXI_RVALID(ctrl_axi_rvalid),
		.S_AXI_RREADY(ctrl_axi_rready)
	);
	
    localparam STATE_WIDTH = 32;	
	
	// Add user logic here
	wire fifo_ready;
    wire [STATE_WIDTH-1:0] prev_state;
    reg [STATE_WIDTH-1:0] next_state;

    state_fifo # (
        .WIDTH(STATE_WIDTH)
    ) state_fifo_inst (
        .prev_state(prev_state),
        .next_state(next_state),
        .clk(clk),
        .rstn(rstn),
        .ready(fifo_ready),
        .state_fifo_prog_full(state_fifo_prog_full),
        .state_fifo_dout(state_fifo_dout),
        .state_fifo_wr_en(state_fifo_wr_en),
        .state_fifo_rd_en(state_fifo_rd_en),
        .state_fifo_valid(state_fifo_valid),
        .state_fifo_rst(state_fifo_rst)
    );
	// User logic ends

	endmodule