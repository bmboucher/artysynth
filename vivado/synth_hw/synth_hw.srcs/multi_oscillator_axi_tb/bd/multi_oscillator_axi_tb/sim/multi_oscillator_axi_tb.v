//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Nov 28 11:48:28 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target multi_oscillator_axi_tb.bd
//Design      : multi_oscillator_axi_tb
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "multi_oscillator_axi_tb,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=multi_oscillator_axi_tb,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=2,synth_mode=Global}" *) (* HW_HANDOFF = "multi_oscillator_axi_tb.hwdef" *) 
module multi_oscillator_axi_tb
   (addrb,
    doutb,
    freq_mult,
    param_bram_addr,
    param_bram_data,
    param_bram_wen,
    peripheral_reset,
    reset,
    sys_clock);
  input [8:0]addrb;
  output [63:0]doutb;
  output [111:0]freq_mult;
  output [9:0]param_bram_addr;
  output [31:0]param_bram_data;
  output [3:0]param_bram_wen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PERIPHERAL_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PERIPHERAL_RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output [0:0]peripheral_reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN multi_oscillator_axi_tb_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [8:0]addrb_1;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire axi_vip_0_M_AXI_ARREADY;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire axi_vip_0_M_AXI_AWREADY;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [63:0]blk_mem_gen_0_doutb;
  wire clk_1;
  wire clk_wiz_locked;
  wire [111:0]multi_oscillator_axi_0_freq_mult;
  wire [9:0]multi_oscillator_axi_0_param_bram_addr;
  wire [31:0]multi_oscillator_axi_0_param_bram_data;
  wire [3:0]multi_oscillator_axi_0_param_bram_wen;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire [0:0]rst_clk_wiz_100M_peripheral_reset;
  wire sys_clock_1;

  assign addrb_1 = addrb[8:0];
  assign doutb[63:0] = blk_mem_gen_0_doutb;
  assign freq_mult[111:0] = multi_oscillator_axi_0_freq_mult;
  assign param_bram_addr[9:0] = multi_oscillator_axi_0_param_bram_addr;
  assign param_bram_data[31:0] = multi_oscillator_axi_0_param_bram_data;
  assign param_bram_wen[3:0] = multi_oscillator_axi_0_param_bram_wen;
  assign peripheral_reset[0] = rst_clk_wiz_100M_peripheral_reset;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  multi_oscillator_axi_tb_multi_oscillator_axi_0_0 axi_controller
       (.S_AXI_ARADDR(axi_vip_0_M_AXI_ARADDR),
        .S_AXI_ARPROT(axi_vip_0_M_AXI_ARPROT),
        .S_AXI_ARREADY(axi_vip_0_M_AXI_ARREADY),
        .S_AXI_ARVALID(axi_vip_0_M_AXI_ARVALID),
        .S_AXI_AWADDR(axi_vip_0_M_AXI_AWADDR),
        .S_AXI_AWPROT(axi_vip_0_M_AXI_AWPROT),
        .S_AXI_AWREADY(axi_vip_0_M_AXI_AWREADY),
        .S_AXI_AWVALID(axi_vip_0_M_AXI_AWVALID),
        .S_AXI_BREADY(axi_vip_0_M_AXI_BREADY),
        .S_AXI_BRESP(axi_vip_0_M_AXI_BRESP),
        .S_AXI_BVALID(axi_vip_0_M_AXI_BVALID),
        .S_AXI_RDATA(axi_vip_0_M_AXI_RDATA),
        .S_AXI_RREADY(axi_vip_0_M_AXI_RREADY),
        .S_AXI_RRESP(axi_vip_0_M_AXI_RRESP),
        .S_AXI_RVALID(axi_vip_0_M_AXI_RVALID),
        .S_AXI_WDATA(axi_vip_0_M_AXI_WDATA),
        .S_AXI_WREADY(axi_vip_0_M_AXI_WREADY),
        .S_AXI_WSTRB(axi_vip_0_M_AXI_WSTRB),
        .S_AXI_WVALID(axi_vip_0_M_AXI_WVALID),
        .clk(clk_1),
        .freq_mult(multi_oscillator_axi_0_freq_mult),
        .param_bram_addr(multi_oscillator_axi_0_param_bram_addr),
        .param_bram_data(multi_oscillator_axi_0_param_bram_data),
        .param_bram_wen(multi_oscillator_axi_0_param_bram_wen),
        .rst(rst_clk_wiz_100M_peripheral_reset));
  multi_oscillator_axi_tb_axi_vip_0_0 axi_vip
       (.aclk(clk_1),
        .aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  multi_oscillator_axi_tb_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_1),
        .locked(clk_wiz_locked),
        .resetn(reset_1));
  multi_oscillator_axi_tb_blk_mem_gen_0_0 param_bram
       (.addra(multi_oscillator_axi_0_param_bram_addr),
        .addrb(addrb_1),
        .clka(clk_1),
        .clkb(clk_1),
        .dina(multi_oscillator_axi_0_param_bram_data),
        .doutb(blk_mem_gen_0_doutb),
        .rstb(rst_clk_wiz_100M_peripheral_reset),
        .wea(multi_oscillator_axi_0_param_bram_wen));
  multi_oscillator_axi_tb_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .peripheral_reset(rst_clk_wiz_100M_peripheral_reset),
        .slowest_sync_clk(clk_1));
endmodule
