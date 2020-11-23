// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Nov 23 15:27:04 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_multi_oscillator_top_0_0/top_multi_oscillator_top_0_0_sim_netlist.v
// Design      : top_multi_oscillator_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_multi_oscillator_top_0_0,multi_oscillator_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "multi_oscillator_top,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_multi_oscillator_top_0_0
   (freq_bram_addr,
    freq_bram_rddata,
    state_fifo_full,
    state_fifo_prog_full,
    state_fifo_empty,
    state_fifo_dout,
    state_fifo_din,
    state_fifo_wr_en,
    state_fifo_rd_en,
    state_fifo_rst,
    ctrl_axi_aclk,
    ctrl_axi_aresetn,
    ctrl_axi_awaddr,
    ctrl_axi_awprot,
    ctrl_axi_awvalid,
    ctrl_axi_awready,
    ctrl_axi_wdata,
    ctrl_axi_wstrb,
    ctrl_axi_wvalid,
    ctrl_axi_wready,
    ctrl_axi_bresp,
    ctrl_axi_bvalid,
    ctrl_axi_bready,
    ctrl_axi_araddr,
    ctrl_axi_arprot,
    ctrl_axi_arvalid,
    ctrl_axi_arready,
    ctrl_axi_rdata,
    ctrl_axi_rresp,
    ctrl_axi_rvalid,
    ctrl_axi_rready);
  output [31:0]freq_bram_addr;
  input [31:0]freq_bram_rddata;
  input state_fifo_full;
  input state_fifo_prog_full;
  input state_fifo_empty;
  output [63:0]state_fifo_dout;
  input [63:0]state_fifo_din;
  output state_fifo_wr_en;
  output state_fifo_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 state_fifo_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME state_fifo_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output state_fifo_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ctrl_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi_aclk, ASSOCIATED_BUSIF ctrl_axi, ASSOCIATED_RESET ctrl_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input ctrl_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ctrl_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ctrl_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWADDR" *) input [6:0]ctrl_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWPROT" *) input [2:0]ctrl_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWVALID" *) input ctrl_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi AWREADY" *) output ctrl_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WDATA" *) input [31:0]ctrl_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WSTRB" *) input [3:0]ctrl_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WVALID" *) input ctrl_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi WREADY" *) output ctrl_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BRESP" *) output [1:0]ctrl_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BVALID" *) output ctrl_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi BREADY" *) input ctrl_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARADDR" *) input [6:0]ctrl_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARPROT" *) input [2:0]ctrl_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARVALID" *) input ctrl_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi ARREADY" *) output ctrl_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RDATA" *) output [31:0]ctrl_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RRESP" *) output [1:0]ctrl_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RVALID" *) output ctrl_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ctrl_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ctrl_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input ctrl_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire ctrl_axi_aclk;
  wire [6:0]ctrl_axi_araddr;
  wire ctrl_axi_aresetn;
  wire ctrl_axi_arready;
  wire ctrl_axi_arvalid;
  wire [6:0]ctrl_axi_awaddr;
  wire ctrl_axi_awready;
  wire ctrl_axi_awvalid;
  wire ctrl_axi_bready;
  wire ctrl_axi_bvalid;
  wire [31:0]ctrl_axi_rdata;
  wire ctrl_axi_rready;
  wire ctrl_axi_rvalid;
  wire [31:0]ctrl_axi_wdata;
  wire ctrl_axi_wready;
  wire [3:0]ctrl_axi_wstrb;
  wire ctrl_axi_wvalid;

  assign ctrl_axi_bresp[1] = \<const0> ;
  assign ctrl_axi_bresp[0] = \<const0> ;
  assign ctrl_axi_rresp[1] = \<const0> ;
  assign ctrl_axi_rresp[0] = \<const0> ;
  assign freq_bram_addr[31] = \<const0> ;
  assign freq_bram_addr[30] = \<const0> ;
  assign freq_bram_addr[29] = \<const0> ;
  assign freq_bram_addr[28] = \<const0> ;
  assign freq_bram_addr[27] = \<const0> ;
  assign freq_bram_addr[26] = \<const0> ;
  assign freq_bram_addr[25] = \<const0> ;
  assign freq_bram_addr[24] = \<const0> ;
  assign freq_bram_addr[23] = \<const0> ;
  assign freq_bram_addr[22] = \<const0> ;
  assign freq_bram_addr[21] = \<const0> ;
  assign freq_bram_addr[20] = \<const0> ;
  assign freq_bram_addr[19] = \<const0> ;
  assign freq_bram_addr[18] = \<const0> ;
  assign freq_bram_addr[17] = \<const0> ;
  assign freq_bram_addr[16] = \<const0> ;
  assign freq_bram_addr[15] = \<const0> ;
  assign freq_bram_addr[14] = \<const0> ;
  assign freq_bram_addr[13] = \<const0> ;
  assign freq_bram_addr[12] = \<const0> ;
  assign freq_bram_addr[11] = \<const0> ;
  assign freq_bram_addr[10] = \<const0> ;
  assign freq_bram_addr[9] = \<const0> ;
  assign freq_bram_addr[8] = \<const0> ;
  assign freq_bram_addr[7] = \<const0> ;
  assign freq_bram_addr[6] = \<const0> ;
  assign freq_bram_addr[5] = \<const0> ;
  assign freq_bram_addr[4] = \<const0> ;
  assign freq_bram_addr[3] = \<const0> ;
  assign freq_bram_addr[2] = \<const0> ;
  assign freq_bram_addr[1] = \<const0> ;
  assign freq_bram_addr[0] = \<const0> ;
  assign state_fifo_dout[63] = \<const0> ;
  assign state_fifo_dout[62] = \<const0> ;
  assign state_fifo_dout[61] = \<const0> ;
  assign state_fifo_dout[60] = \<const0> ;
  assign state_fifo_dout[59] = \<const0> ;
  assign state_fifo_dout[58] = \<const0> ;
  assign state_fifo_dout[57] = \<const0> ;
  assign state_fifo_dout[56] = \<const0> ;
  assign state_fifo_dout[55] = \<const0> ;
  assign state_fifo_dout[54] = \<const0> ;
  assign state_fifo_dout[53] = \<const0> ;
  assign state_fifo_dout[52] = \<const0> ;
  assign state_fifo_dout[51] = \<const0> ;
  assign state_fifo_dout[50] = \<const0> ;
  assign state_fifo_dout[49] = \<const0> ;
  assign state_fifo_dout[48] = \<const0> ;
  assign state_fifo_dout[47] = \<const0> ;
  assign state_fifo_dout[46] = \<const0> ;
  assign state_fifo_dout[45] = \<const0> ;
  assign state_fifo_dout[44] = \<const0> ;
  assign state_fifo_dout[43] = \<const0> ;
  assign state_fifo_dout[42] = \<const0> ;
  assign state_fifo_dout[41] = \<const0> ;
  assign state_fifo_dout[40] = \<const0> ;
  assign state_fifo_dout[39] = \<const0> ;
  assign state_fifo_dout[38] = \<const0> ;
  assign state_fifo_dout[37] = \<const0> ;
  assign state_fifo_dout[36] = \<const0> ;
  assign state_fifo_dout[35] = \<const0> ;
  assign state_fifo_dout[34] = \<const0> ;
  assign state_fifo_dout[33] = \<const0> ;
  assign state_fifo_dout[32] = \<const0> ;
  assign state_fifo_dout[31] = \<const0> ;
  assign state_fifo_dout[30] = \<const0> ;
  assign state_fifo_dout[29] = \<const0> ;
  assign state_fifo_dout[28] = \<const0> ;
  assign state_fifo_dout[27] = \<const0> ;
  assign state_fifo_dout[26] = \<const0> ;
  assign state_fifo_dout[25] = \<const0> ;
  assign state_fifo_dout[24] = \<const0> ;
  assign state_fifo_dout[23] = \<const0> ;
  assign state_fifo_dout[22] = \<const0> ;
  assign state_fifo_dout[21] = \<const0> ;
  assign state_fifo_dout[20] = \<const0> ;
  assign state_fifo_dout[19] = \<const0> ;
  assign state_fifo_dout[18] = \<const0> ;
  assign state_fifo_dout[17] = \<const0> ;
  assign state_fifo_dout[16] = \<const0> ;
  assign state_fifo_dout[15] = \<const0> ;
  assign state_fifo_dout[14] = \<const0> ;
  assign state_fifo_dout[13] = \<const0> ;
  assign state_fifo_dout[12] = \<const0> ;
  assign state_fifo_dout[11] = \<const0> ;
  assign state_fifo_dout[10] = \<const0> ;
  assign state_fifo_dout[9] = \<const0> ;
  assign state_fifo_dout[8] = \<const0> ;
  assign state_fifo_dout[7] = \<const0> ;
  assign state_fifo_dout[6] = \<const0> ;
  assign state_fifo_dout[5] = \<const0> ;
  assign state_fifo_dout[4] = \<const0> ;
  assign state_fifo_dout[3] = \<const0> ;
  assign state_fifo_dout[2] = \<const0> ;
  assign state_fifo_dout[1] = \<const0> ;
  assign state_fifo_dout[0] = \<const0> ;
  assign state_fifo_rd_en = \<const0> ;
  assign state_fifo_rst = \<const1> ;
  assign state_fifo_wr_en = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_multi_oscillator_top_0_0_multi_oscillator_top inst
       (.ctrl_axi_aclk(ctrl_axi_aclk),
        .ctrl_axi_araddr(ctrl_axi_araddr[3:2]),
        .ctrl_axi_aresetn(ctrl_axi_aresetn),
        .ctrl_axi_arready(ctrl_axi_arready),
        .ctrl_axi_arvalid(ctrl_axi_arvalid),
        .ctrl_axi_awaddr(ctrl_axi_awaddr[3:2]),
        .ctrl_axi_awready(ctrl_axi_awready),
        .ctrl_axi_awvalid(ctrl_axi_awvalid),
        .ctrl_axi_bready(ctrl_axi_bready),
        .ctrl_axi_bvalid(ctrl_axi_bvalid),
        .ctrl_axi_rdata(ctrl_axi_rdata),
        .ctrl_axi_rready(ctrl_axi_rready),
        .ctrl_axi_rvalid(ctrl_axi_rvalid),
        .ctrl_axi_wdata(ctrl_axi_wdata),
        .ctrl_axi_wready(ctrl_axi_wready),
        .ctrl_axi_wstrb(ctrl_axi_wstrb),
        .ctrl_axi_wvalid(ctrl_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "multi_oscillator_axi" *) 
module top_multi_oscillator_top_0_0_multi_oscillator_axi
   (ctrl_axi_wready,
    ctrl_axi_awready,
    ctrl_axi_arready,
    ctrl_axi_rdata,
    ctrl_axi_rvalid,
    ctrl_axi_bvalid,
    ctrl_axi_aclk,
    ctrl_axi_araddr,
    ctrl_axi_arvalid,
    ctrl_axi_awaddr,
    ctrl_axi_wvalid,
    ctrl_axi_awvalid,
    ctrl_axi_wdata,
    ctrl_axi_wstrb,
    ctrl_axi_aresetn,
    ctrl_axi_bready,
    ctrl_axi_rready);
  output ctrl_axi_wready;
  output ctrl_axi_awready;
  output ctrl_axi_arready;
  output [31:0]ctrl_axi_rdata;
  output ctrl_axi_rvalid;
  output ctrl_axi_bvalid;
  input ctrl_axi_aclk;
  input [1:0]ctrl_axi_araddr;
  input ctrl_axi_arvalid;
  input [1:0]ctrl_axi_awaddr;
  input ctrl_axi_wvalid;
  input ctrl_axi_awvalid;
  input [31:0]ctrl_axi_wdata;
  input [3:0]ctrl_axi_wstrb;
  input ctrl_axi_aresetn;
  input ctrl_axi_bready;
  input ctrl_axi_rready;

  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire ctrl_axi_aclk;
  wire [1:0]ctrl_axi_araddr;
  wire ctrl_axi_aresetn;
  wire ctrl_axi_arready;
  wire ctrl_axi_arvalid;
  wire [1:0]ctrl_axi_awaddr;
  wire ctrl_axi_awready;
  wire ctrl_axi_awvalid;
  wire ctrl_axi_bready;
  wire ctrl_axi_bvalid;
  wire [31:0]ctrl_axi_rdata;
  wire ctrl_axi_rready;
  wire ctrl_axi_rvalid;
  wire [31:0]ctrl_axi_wdata;
  wire ctrl_axi_wready;
  wire [3:0]ctrl_axi_wstrb;
  wire ctrl_axi_wvalid;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire [31:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(ctrl_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(ctrl_axi_awready),
        .I3(ctrl_axi_wvalid),
        .I4(ctrl_axi_bready),
        .I5(ctrl_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(ctrl_axi_araddr[0]),
        .I1(ctrl_axi_arvalid),
        .I2(ctrl_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(ctrl_axi_araddr[1]),
        .I1(ctrl_axi_arvalid),
        .I2(ctrl_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(ctrl_axi_arvalid),
        .I1(ctrl_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(ctrl_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(ctrl_axi_awaddr[0]),
        .I1(ctrl_axi_wvalid),
        .I2(ctrl_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(ctrl_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(ctrl_axi_awaddr[1]),
        .I1(ctrl_axi_wvalid),
        .I2(ctrl_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(ctrl_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(ctrl_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(ctrl_axi_wvalid),
        .I1(ctrl_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(ctrl_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(ctrl_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(ctrl_axi_awvalid),
        .I1(ctrl_axi_wvalid),
        .I2(ctrl_axi_awready),
        .I3(ctrl_axi_wready),
        .I4(ctrl_axi_bready),
        .I5(ctrl_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(ctrl_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg0[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(ctrl_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(ctrl_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(ctrl_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(ctrl_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(ctrl_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(ctrl_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(ctrl_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(ctrl_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(ctrl_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(ctrl_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(ctrl_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(ctrl_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(ctrl_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(ctrl_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(ctrl_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(ctrl_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(ctrl_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(ctrl_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(ctrl_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(ctrl_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(ctrl_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(ctrl_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(ctrl_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(ctrl_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(ctrl_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(ctrl_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(ctrl_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(ctrl_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(ctrl_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(ctrl_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(ctrl_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(ctrl_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(ctrl_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(ctrl_axi_arready),
        .I1(ctrl_axi_arvalid),
        .I2(ctrl_axi_rvalid),
        .I3(ctrl_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(ctrl_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(ctrl_axi_awvalid),
        .I1(ctrl_axi_wvalid),
        .I2(ctrl_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(ctrl_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(ctrl_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctrl_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctrl_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctrl_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(ctrl_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(ctrl_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(ctrl_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(ctrl_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(ctrl_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(ctrl_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(ctrl_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctrl_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctrl_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctrl_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(ctrl_axi_wready),
        .I1(ctrl_axi_awready),
        .I2(ctrl_axi_awvalid),
        .I3(ctrl_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(ctrl_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[23]),
        .D(ctrl_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[31]),
        .D(ctrl_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[7]),
        .D(ctrl_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(ctrl_axi_aclk),
        .CE(p_1_in[15]),
        .D(ctrl_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(ctrl_axi_arvalid),
        .I1(ctrl_axi_rvalid),
        .I2(ctrl_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "multi_oscillator_top" *) 
module top_multi_oscillator_top_0_0_multi_oscillator_top
   (ctrl_axi_wready,
    ctrl_axi_awready,
    ctrl_axi_arready,
    ctrl_axi_rdata,
    ctrl_axi_rvalid,
    ctrl_axi_bvalid,
    ctrl_axi_aclk,
    ctrl_axi_araddr,
    ctrl_axi_arvalid,
    ctrl_axi_awaddr,
    ctrl_axi_wvalid,
    ctrl_axi_awvalid,
    ctrl_axi_wdata,
    ctrl_axi_wstrb,
    ctrl_axi_aresetn,
    ctrl_axi_bready,
    ctrl_axi_rready);
  output ctrl_axi_wready;
  output ctrl_axi_awready;
  output ctrl_axi_arready;
  output [31:0]ctrl_axi_rdata;
  output ctrl_axi_rvalid;
  output ctrl_axi_bvalid;
  input ctrl_axi_aclk;
  input [1:0]ctrl_axi_araddr;
  input ctrl_axi_arvalid;
  input [1:0]ctrl_axi_awaddr;
  input ctrl_axi_wvalid;
  input ctrl_axi_awvalid;
  input [31:0]ctrl_axi_wdata;
  input [3:0]ctrl_axi_wstrb;
  input ctrl_axi_aresetn;
  input ctrl_axi_bready;
  input ctrl_axi_rready;

  wire ctrl_axi_aclk;
  wire [1:0]ctrl_axi_araddr;
  wire ctrl_axi_aresetn;
  wire ctrl_axi_arready;
  wire ctrl_axi_arvalid;
  wire [1:0]ctrl_axi_awaddr;
  wire ctrl_axi_awready;
  wire ctrl_axi_awvalid;
  wire ctrl_axi_bready;
  wire ctrl_axi_bvalid;
  wire [31:0]ctrl_axi_rdata;
  wire ctrl_axi_rready;
  wire ctrl_axi_rvalid;
  wire [31:0]ctrl_axi_wdata;
  wire ctrl_axi_wready;
  wire [3:0]ctrl_axi_wstrb;
  wire ctrl_axi_wvalid;

  top_multi_oscillator_top_0_0_multi_oscillator_axi multi_oscillator_axi_inst
       (.ctrl_axi_aclk(ctrl_axi_aclk),
        .ctrl_axi_araddr(ctrl_axi_araddr),
        .ctrl_axi_aresetn(ctrl_axi_aresetn),
        .ctrl_axi_arready(ctrl_axi_arready),
        .ctrl_axi_arvalid(ctrl_axi_arvalid),
        .ctrl_axi_awaddr(ctrl_axi_awaddr),
        .ctrl_axi_awready(ctrl_axi_awready),
        .ctrl_axi_awvalid(ctrl_axi_awvalid),
        .ctrl_axi_bready(ctrl_axi_bready),
        .ctrl_axi_bvalid(ctrl_axi_bvalid),
        .ctrl_axi_rdata(ctrl_axi_rdata),
        .ctrl_axi_rready(ctrl_axi_rready),
        .ctrl_axi_rvalid(ctrl_axi_rvalid),
        .ctrl_axi_wdata(ctrl_axi_wdata),
        .ctrl_axi_wready(ctrl_axi_wready),
        .ctrl_axi_wstrb(ctrl_axi_wstrb),
        .ctrl_axi_wvalid(ctrl_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif