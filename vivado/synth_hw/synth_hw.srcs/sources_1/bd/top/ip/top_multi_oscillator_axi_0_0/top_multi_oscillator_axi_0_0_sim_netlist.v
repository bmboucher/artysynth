// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 28 11:50:24 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_multi_oscillator_axi_0_0/top_multi_oscillator_axi_0_0_sim_netlist.v
// Design      : top_multi_oscillator_axi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_multi_oscillator_axi_0_0,multi_oscillator_axi,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "multi_oscillator_axi,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_multi_oscillator_axi_0_0
   (freq_mult,
    param_bram_addr,
    param_bram_data,
    param_bram_wen,
    clk,
    rst,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output [111:0]freq_mult;
  output [9:0]param_bram_addr;
  output [31:0]param_bram_data;
  output [3:0]param_bram_wen;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [1:1]\^S_AXI_BRESP ;
  wire S_AXI_BVALID;
  wire [15:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire [1:1]\^S_AXI_RRESP ;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire clk;
  wire [111:0]freq_mult;
  wire [9:0]param_bram_addr;
  wire [31:0]param_bram_data;
  wire [3:0]param_bram_wen;
  wire rst;

  assign S_AXI_BRESP[1] = \^S_AXI_BRESP [1];
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15:0] = \^S_AXI_RDATA [15:0];
  assign S_AXI_RRESP[1] = \^S_AXI_RRESP [1];
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  top_multi_oscillator_axi_0_0_multi_oscillator_axi inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({S_AXI_AWADDR[31:25],S_AXI_AWADDR[22:0]}),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(\^S_AXI_BRESP ),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(\^S_AXI_RRESP ),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_bvalid_reg_0(S_AXI_BVALID),
        .axi_rvalid_reg_0(S_AXI_RVALID),
        .clk(clk),
        .freq_mult(freq_mult),
        .param_bram_addr(param_bram_addr),
        .param_bram_data(param_bram_data),
        .param_bram_wen(param_bram_wen),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "multi_oscillator_axi" *) 
module top_multi_oscillator_axi_0_0_multi_oscillator_axi
   (param_bram_wen,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    freq_mult,
    param_bram_addr,
    param_bram_data,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_BRESP,
    axi_bvalid_reg_0,
    axi_rvalid_reg_0,
    S_AXI_RRESP,
    rst,
    clk,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output [3:0]param_bram_wen;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [111:0]freq_mult;
  output [9:0]param_bram_addr;
  output [31:0]param_bram_data;
  output S_AXI_ARREADY;
  output [15:0]S_AXI_RDATA;
  output [0:0]S_AXI_BRESP;
  output axi_bvalid_reg_0;
  output axi_rvalid_reg_0;
  output [0:0]S_AXI_RRESP;
  input rst;
  input clk;
  input [29:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [29:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire [0:0]S_AXI_BRESP;
  wire [15:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [0:0]S_AXI_RRESP;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire \axi_awaddr[20]_i_1_n_0 ;
  wire \axi_awaddr[21]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[0] ;
  wire \axi_awaddr_reg_n_0_[10] ;
  wire \axi_awaddr_reg_n_0_[11] ;
  wire \axi_awaddr_reg_n_0_[12] ;
  wire \axi_awaddr_reg_n_0_[13] ;
  wire \axi_awaddr_reg_n_0_[14] ;
  wire \axi_awaddr_reg_n_0_[15] ;
  wire \axi_awaddr_reg_n_0_[16] ;
  wire \axi_awaddr_reg_n_0_[17] ;
  wire \axi_awaddr_reg_n_0_[18] ;
  wire \axi_awaddr_reg_n_0_[19] ;
  wire \axi_awaddr_reg_n_0_[1] ;
  wire \axi_awaddr_reg_n_0_[20] ;
  wire \axi_awaddr_reg_n_0_[21] ;
  wire \axi_awaddr_reg_n_0_[22] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire \axi_awaddr_reg_n_0_[8] ;
  wire \axi_awaddr_reg_n_0_[9] ;
  wire axi_awready0;
  wire axi_awready_i_2_n_0;
  wire \axi_bresp[1]_i_1_n_0 ;
  wire axi_bvalid_i_1_n_0;
  wire axi_bvalid_reg_0;
  wire [3:0]axi_device_id;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rresp[1]_i_1_n_0 ;
  wire \axi_rresp[1]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire bank_flag;
  wire [3:0]bank_offset;
  wire [3:0]bank_offset_reg;
  wire bank_skip_ahead__0;
  wire bank_wr_en;
  wire bram_flag;
  wire bram_param_index;
  wire clk;
  wire [111:0]freq_mult;
  wire freq_mult_wr_en__0;
  wire p_10_in;
  wire p_12_in;
  wire [111:7]p_1_in;
  wire [20:7]p_2_in;
  wire p_9_in;
  wire [9:0]param_bram_addr;
  wire \param_bram_addr_reg[1]_i_1_n_0 ;
  wire \param_bram_addr_reg[2]_i_1_n_0 ;
  wire \param_bram_addr_reg[3]_i_1_n_0 ;
  wire \param_bram_addr_reg[4]_i_1_n_0 ;
  wire \param_bram_addr_reg[5]_i_1_n_0 ;
  wire \param_bram_addr_reg[6]_i_1_n_0 ;
  wire \param_bram_addr_reg[7]_i_1_n_0 ;
  wire \param_bram_addr_reg[8]_i_1_n_0 ;
  wire \param_bram_addr_reg[9]_i_1_n_0 ;
  wire \param_bram_addr_reg[9]_i_2_n_0 ;
  wire [31:0]param_bram_data;
  wire param_bram_mask_en_i_1_n_0;
  wire param_bram_mask_en_reg_n_0;
  wire [3:0]param_bram_wen;
  wire param_bram_wen_reg;
  wire \param_bram_wen_reg_reg_n_0_[0] ;
  wire \param_bram_wen_reg_reg_n_0_[1] ;
  wire \param_bram_wen_reg_reg_n_0_[2] ;
  wire \param_bram_wen_reg_reg_n_0_[3] ;
  wire rd_en;
  wire rst;
  wire [2:0]sel0;

  LUT4 #(
    .INIT(16'h0F08)) 
    aw_en_i_1
       (.I0(S_AXI_BREADY),
        .I1(axi_bvalid_reg_0),
        .I2(axi_awready0),
        .I3(aw_en_reg_n_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(rst));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(rst));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[10]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[11] ),
        .I2(\axi_awaddr_reg_n_0_[12] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[10]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[11]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[12] ),
        .I2(\axi_awaddr_reg_n_0_[13] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[11]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[12]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[13] ),
        .I2(\axi_awaddr_reg_n_0_[14] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[12]),
        .O(p_2_in[12]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[13]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[14] ),
        .I2(\axi_awaddr_reg_n_0_[15] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[13]),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[14]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[15] ),
        .I2(\axi_awaddr_reg_n_0_[16] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[14]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[15]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[16] ),
        .I2(\axi_awaddr_reg_n_0_[17] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[15]),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[16]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[17] ),
        .I2(\axi_awaddr_reg_n_0_[18] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[16]),
        .O(p_2_in[16]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[17]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[18] ),
        .I2(\axi_awaddr_reg_n_0_[19] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[17]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[18]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[19] ),
        .I2(\axi_awaddr_reg_n_0_[20] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[18]),
        .O(p_2_in[18]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[19]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[20] ),
        .I2(\axi_awaddr_reg_n_0_[21] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[19]),
        .O(p_2_in[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_awaddr[20]_i_1 
       (.I0(axi_awready0),
        .I1(bank_wr_en),
        .O(\axi_awaddr[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[20]_i_2 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[21] ),
        .I2(\axi_awaddr_reg_n_0_[22] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[20]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h070F0F0F)) 
    \axi_awaddr[20]_i_3 
       (.I0(bank_offset_reg[3]),
        .I1(bank_offset_reg[2]),
        .I2(\axi_awaddr_reg_n_0_[7] ),
        .I3(bank_offset_reg[1]),
        .I4(bank_offset_reg[0]),
        .O(bank_skip_ahead__0));
  LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0C00)) 
    \axi_awaddr[21]_i_1 
       (.I0(S_AXI_AWADDR[21]),
        .I1(\axi_awaddr_reg_n_0_[22] ),
        .I2(bank_skip_ahead__0),
        .I3(bank_wr_en),
        .I4(axi_awready0),
        .I5(\axi_awaddr_reg_n_0_[21] ),
        .O(\axi_awaddr[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[7]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[8] ),
        .I2(\axi_awaddr_reg_n_0_[9] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[7]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[8]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[9] ),
        .I2(\axi_awaddr_reg_n_0_[10] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[8]),
        .O(p_2_in[8]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \axi_awaddr[9]_i_1 
       (.I0(bank_skip_ahead__0),
        .I1(\axi_awaddr_reg_n_0_[10] ),
        .I2(\axi_awaddr_reg_n_0_[11] ),
        .I3(axi_awready0),
        .I4(S_AXI_AWADDR[9]),
        .O(p_2_in[9]));
  FDRE \axi_awaddr_reg[0] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(\axi_awaddr_reg_n_0_[0] ),
        .R(rst));
  FDRE \axi_awaddr_reg[10] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\axi_awaddr_reg_n_0_[10] ),
        .R(rst));
  FDRE \axi_awaddr_reg[11] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\axi_awaddr_reg_n_0_[11] ),
        .R(rst));
  FDRE \axi_awaddr_reg[12] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(\axi_awaddr_reg_n_0_[12] ),
        .R(rst));
  FDRE \axi_awaddr_reg[13] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(\axi_awaddr_reg_n_0_[13] ),
        .R(rst));
  FDRE \axi_awaddr_reg[14] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(\axi_awaddr_reg_n_0_[14] ),
        .R(rst));
  FDRE \axi_awaddr_reg[15] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(\axi_awaddr_reg_n_0_[15] ),
        .R(rst));
  FDRE \axi_awaddr_reg[16] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(\axi_awaddr_reg_n_0_[16] ),
        .R(rst));
  FDRE \axi_awaddr_reg[17] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(\axi_awaddr_reg_n_0_[17] ),
        .R(rst));
  FDRE \axi_awaddr_reg[18] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(\axi_awaddr_reg_n_0_[18] ),
        .R(rst));
  FDRE \axi_awaddr_reg[19] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(\axi_awaddr_reg_n_0_[19] ),
        .R(rst));
  FDRE \axi_awaddr_reg[1] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(\axi_awaddr_reg_n_0_[1] ),
        .R(rst));
  FDRE \axi_awaddr_reg[20] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(\axi_awaddr_reg_n_0_[20] ),
        .R(rst));
  FDRE \axi_awaddr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_awaddr[21]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[21] ),
        .R(rst));
  FDRE \axi_awaddr_reg[22] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[22]),
        .Q(\axi_awaddr_reg_n_0_[22] ),
        .R(rst));
  FDRE \axi_awaddr_reg[25] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[23]),
        .Q(bram_param_index),
        .R(rst));
  FDRE \axi_awaddr_reg[26] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[24]),
        .Q(bank_flag),
        .R(rst));
  FDRE \axi_awaddr_reg[27] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[25]),
        .Q(bram_flag),
        .R(rst));
  FDRE \axi_awaddr_reg[28] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[26]),
        .Q(axi_device_id[0]),
        .R(rst));
  FDRE \axi_awaddr_reg[29] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[27]),
        .Q(axi_device_id[1]),
        .R(rst));
  FDRE \axi_awaddr_reg[2] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(sel0[0]),
        .R(rst));
  FDRE \axi_awaddr_reg[30] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[28]),
        .Q(axi_device_id[2]),
        .R(rst));
  FDRE \axi_awaddr_reg[31] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[29]),
        .Q(axi_device_id[3]),
        .R(rst));
  FDRE \axi_awaddr_reg[3] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(sel0[1]),
        .R(rst));
  FDRE \axi_awaddr_reg[4] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[4]),
        .Q(sel0[2]),
        .R(rst));
  FDRE \axi_awaddr_reg[5] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[5]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(rst));
  FDRE \axi_awaddr_reg[6] 
       (.C(clk),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[6]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(rst));
  FDRE \axi_awaddr_reg[7] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(rst));
  FDRE \axi_awaddr_reg[8] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\axi_awaddr_reg_n_0_[8] ),
        .R(rst));
  FDRE \axi_awaddr_reg[9] 
       (.C(clk),
        .CE(\axi_awaddr[20]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\axi_awaddr_reg_n_0_[9] ),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000080)) 
    axi_awready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .I4(axi_awready_i_2_n_0),
        .O(axi_awready0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    axi_awready_i_2
       (.I0(bank_offset_reg[1]),
        .I1(bank_offset_reg[0]),
        .I2(bank_offset_reg[3]),
        .I3(bank_offset_reg[2]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(rst));
  LUT5 #(
    .INIT(32'h40454444)) 
    \axi_bresp[1]_i_1 
       (.I0(rst),
        .I1(S_AXI_BRESP),
        .I2(axi_bvalid_reg_0),
        .I3(p_9_in),
        .I4(p_10_in),
        .O(\axi_bresp[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_bresp[1]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(p_10_in));
  FDRE \axi_bresp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_bresp[1]_i_1_n_0 ),
        .Q(S_AXI_BRESP),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(axi_bvalid_reg_0),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_WVALID),
        .I5(S_AXI_AWVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(axi_bvalid_reg_0),
        .R(rst));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[80]),
        .I5(freq_mult[96]),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[0]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[0]),
        .I5(freq_mult[48]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[0]_i_3 
       (.I0(freq_mult[16]),
        .I1(freq_mult[32]),
        .I2(freq_mult[64]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[90]),
        .I5(freq_mult[106]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata[10]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[10]),
        .I5(freq_mult[58]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[10]_i_3 
       (.I0(freq_mult[26]),
        .I1(freq_mult[42]),
        .I2(freq_mult[74]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[91]),
        .I5(freq_mult[107]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata[11]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[11]),
        .I5(freq_mult[59]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[11]_i_3 
       (.I0(freq_mult[27]),
        .I1(freq_mult[43]),
        .I2(freq_mult[75]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[92]),
        .I5(freq_mult[108]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata[12]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[12]),
        .I5(freq_mult[60]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[12]_i_3 
       (.I0(freq_mult[28]),
        .I1(freq_mult[44]),
        .I2(freq_mult[76]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[93]),
        .I5(freq_mult[109]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_rdata[13]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[13]),
        .I5(freq_mult[61]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[13]_i_3 
       (.I0(freq_mult[29]),
        .I1(freq_mult[45]),
        .I2(freq_mult[77]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[94]),
        .I5(freq_mult[110]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[14]_i_2 
       (.I0(\axi_rdata[14]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[14]),
        .I5(freq_mult[62]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[14]_i_3 
       (.I0(freq_mult[30]),
        .I1(freq_mult[46]),
        .I2(freq_mult[78]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \axi_rdata[15]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(bram_flag),
        .I4(p_9_in),
        .O(rd_en));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[15]_i_2 
       (.I0(\axi_rdata[15]_i_3_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[95]),
        .I5(freq_mult[111]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[15]_i_3 
       (.I0(\axi_rdata[15]_i_4_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[15]),
        .I5(freq_mult[63]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[15]_i_4 
       (.I0(freq_mult[31]),
        .I1(freq_mult[47]),
        .I2(freq_mult[79]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[81]),
        .I5(freq_mult[97]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata[1]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[1]),
        .I5(freq_mult[49]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[1]_i_3 
       (.I0(freq_mult[17]),
        .I1(freq_mult[33]),
        .I2(freq_mult[65]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[82]),
        .I5(freq_mult[98]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata[2]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[2]),
        .I5(freq_mult[50]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[2]_i_3 
       (.I0(freq_mult[18]),
        .I1(freq_mult[34]),
        .I2(freq_mult[66]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[83]),
        .I5(freq_mult[99]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata[3]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[3]),
        .I5(freq_mult[51]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[3]_i_3 
       (.I0(freq_mult[19]),
        .I1(freq_mult[35]),
        .I2(freq_mult[67]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[84]),
        .I5(freq_mult[100]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata[4]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[4]),
        .I5(freq_mult[52]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[4]_i_3 
       (.I0(freq_mult[20]),
        .I1(freq_mult[36]),
        .I2(freq_mult[68]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[85]),
        .I5(freq_mult[101]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata[5]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[5]),
        .I5(freq_mult[53]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[5]_i_3 
       (.I0(freq_mult[21]),
        .I1(freq_mult[37]),
        .I2(freq_mult[69]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[86]),
        .I5(freq_mult[102]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata[6]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[6]),
        .I5(freq_mult[54]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[6]_i_3 
       (.I0(freq_mult[22]),
        .I1(freq_mult[38]),
        .I2(freq_mult[70]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[87]),
        .I5(freq_mult[103]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata[7]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[7]),
        .I5(freq_mult[55]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[7]_i_3 
       (.I0(freq_mult[23]),
        .I1(freq_mult[39]),
        .I2(freq_mult[71]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[88]),
        .I5(freq_mult[104]),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata[8]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[8]),
        .I5(freq_mult[56]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[8]_i_3 
       (.I0(freq_mult[24]),
        .I1(freq_mult[40]),
        .I2(freq_mult[72]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAAAEAAABAAAAAAA)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult[89]),
        .I5(freq_mult[105]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBAABAAAABAAAAA)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata[9]_i_3_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult[9]),
        .I5(freq_mult[57]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F00000CC00AA00)) 
    \axi_rdata[9]_i_3 
       (.I0(freq_mult[25]),
        .I1(freq_mult[41]),
        .I2(freq_mult[73]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]),
        .R(rst));
  FDRE \axi_rdata_reg[10] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]),
        .R(rst));
  FDRE \axi_rdata_reg[11] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]),
        .R(rst));
  FDRE \axi_rdata_reg[12] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]),
        .R(rst));
  FDRE \axi_rdata_reg[13] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]),
        .R(rst));
  FDRE \axi_rdata_reg[14] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]),
        .R(rst));
  FDRE \axi_rdata_reg[15] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[15]_i_2_n_0 ),
        .Q(S_AXI_RDATA[15]),
        .R(rst));
  FDRE \axi_rdata_reg[1] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]),
        .R(rst));
  FDRE \axi_rdata_reg[2] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(S_AXI_RDATA[2]),
        .R(rst));
  FDRE \axi_rdata_reg[3] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(S_AXI_RDATA[3]),
        .R(rst));
  FDRE \axi_rdata_reg[4] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(S_AXI_RDATA[4]),
        .R(rst));
  FDRE \axi_rdata_reg[5] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(S_AXI_RDATA[5]),
        .R(rst));
  FDRE \axi_rdata_reg[6] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(S_AXI_RDATA[6]),
        .R(rst));
  FDRE \axi_rdata_reg[7] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(S_AXI_RDATA[7]),
        .R(rst));
  FDRE \axi_rdata_reg[8] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(S_AXI_RDATA[8]),
        .R(rst));
  FDRE \axi_rdata_reg[9] 
       (.C(clk),
        .CE(rd_en),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]),
        .R(rst));
  LUT5 #(
    .INIT(32'h45404545)) 
    \axi_rresp[1]_i_1 
       (.I0(rst),
        .I1(S_AXI_RRESP),
        .I2(\axi_rresp[1]_i_2_n_0 ),
        .I3(bram_flag),
        .I4(p_9_in),
        .O(\axi_rresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \axi_rresp[1]_i_2 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .O(\axi_rresp[1]_i_2_n_0 ));
  FDRE \axi_rresp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_rresp[1]_i_1_n_0 ),
        .Q(S_AXI_RRESP),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7444)) 
    axi_rvalid_i_1
       (.I0(S_AXI_RREADY),
        .I1(axi_rvalid_reg_0),
        .I2(S_AXI_ARREADY),
        .I3(S_AXI_ARVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(rst));
  LUT5 #(
    .INIT(32'h00000080)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .I4(axi_awready_i_2_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h552A55AA)) 
    \bank_offset[0]_i_1 
       (.I0(bank_offset_reg[0]),
        .I1(bank_offset_reg[3]),
        .I2(bank_offset_reg[2]),
        .I3(\axi_awaddr_reg_n_0_[7] ),
        .I4(bank_offset_reg[1]),
        .O(bank_offset[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h4B)) 
    \bank_offset[1]_i_1 
       (.I0(bank_offset_reg[0]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(bank_offset_reg[1]),
        .O(bank_offset[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5DA2)) 
    \bank_offset[2]_i_1 
       (.I0(bank_offset_reg[1]),
        .I1(\axi_awaddr_reg_n_0_[7] ),
        .I2(bank_offset_reg[0]),
        .I3(bank_offset_reg[2]),
        .O(bank_offset[2]));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \bank_offset[3]_i_1 
       (.I0(bank_flag),
        .I1(bram_flag),
        .I2(p_10_in),
        .I3(p_9_in),
        .I4(axi_awready_i_2_n_0),
        .O(bank_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \bank_offset[3]_i_2 
       (.I0(bank_offset_reg[2]),
        .I1(bank_offset_reg[0]),
        .I2(\axi_awaddr_reg_n_0_[7] ),
        .I3(bank_offset_reg[1]),
        .I4(bank_offset_reg[3]),
        .O(bank_offset[3]));
  FDRE \bank_offset_reg[0] 
       (.C(clk),
        .CE(bank_wr_en),
        .D(bank_offset[0]),
        .Q(bank_offset_reg[0]),
        .R(rst));
  FDRE \bank_offset_reg[1] 
       (.C(clk),
        .CE(bank_wr_en),
        .D(bank_offset[1]),
        .Q(bank_offset_reg[1]),
        .R(rst));
  FDRE \bank_offset_reg[2] 
       (.C(clk),
        .CE(bank_wr_en),
        .D(bank_offset[2]),
        .Q(bank_offset_reg[2]),
        .R(rst));
  FDRE \bank_offset_reg[3] 
       (.C(clk),
        .CE(bank_wr_en),
        .D(bank_offset[3]),
        .Q(bank_offset_reg[3]),
        .R(rst));
  LUT5 #(
    .INIT(32'h80000000)) 
    \freq_mult_reg[103]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(S_AXI_WSTRB[0]),
        .I3(freq_mult_wr_en__0),
        .I4(sel0[2]),
        .O(p_1_in[103]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \freq_mult_reg[111]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(S_AXI_WSTRB[1]),
        .I3(freq_mult_wr_en__0),
        .I4(sel0[2]),
        .O(p_1_in[111]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \freq_mult_reg[111]_i_2 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(p_9_in),
        .I5(bram_flag),
        .O(freq_mult_wr_en__0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \freq_mult_reg[15]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \freq_mult_reg[23]_i_1 
       (.I0(sel0[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h04000000)) 
    \freq_mult_reg[31]_i_1 
       (.I0(sel0[0]),
        .I1(S_AXI_WSTRB[1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \freq_mult_reg[39]_i_1 
       (.I0(sel0[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[39]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \freq_mult_reg[47]_i_1 
       (.I0(sel0[0]),
        .I1(S_AXI_WSTRB[1]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[47]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \freq_mult_reg[55]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(freq_mult_wr_en__0),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(p_1_in[55]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \freq_mult_reg[63]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(freq_mult_wr_en__0),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(sel0[1]),
        .O(p_1_in[63]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \freq_mult_reg[71]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(freq_mult_wr_en__0),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(p_1_in[71]));
  LUT5 #(
    .INIT(32'h00800000)) 
    \freq_mult_reg[79]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(freq_mult_wr_en__0),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .O(p_1_in[79]));
  LUT5 #(
    .INIT(32'h00200000)) 
    \freq_mult_reg[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(freq_mult_wr_en__0),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \freq_mult_reg[87]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(S_AXI_WSTRB[0]),
        .I3(freq_mult_wr_en__0),
        .I4(sel0[2]),
        .O(p_1_in[87]));
  LUT5 #(
    .INIT(32'h40000000)) 
    \freq_mult_reg[95]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(S_AXI_WSTRB[1]),
        .I3(freq_mult_wr_en__0),
        .I4(sel0[2]),
        .O(p_1_in[95]));
  FDRE \freq_mult_reg_reg[0] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[0]),
        .R(rst));
  FDRE \freq_mult_reg_reg[100] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[100]),
        .R(rst));
  FDRE \freq_mult_reg_reg[101] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[101]),
        .R(rst));
  FDRE \freq_mult_reg_reg[102] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[102]),
        .R(rst));
  FDRE \freq_mult_reg_reg[103] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[103]),
        .R(rst));
  FDRE \freq_mult_reg_reg[104] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[104]),
        .R(rst));
  FDRE \freq_mult_reg_reg[105] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[105]),
        .R(rst));
  FDRE \freq_mult_reg_reg[106] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[106]),
        .R(rst));
  FDRE \freq_mult_reg_reg[107] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[107]),
        .R(rst));
  FDRE \freq_mult_reg_reg[108] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[108]),
        .R(rst));
  FDRE \freq_mult_reg_reg[109] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[109]),
        .R(rst));
  FDRE \freq_mult_reg_reg[10] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[10]),
        .R(rst));
  FDRE \freq_mult_reg_reg[110] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[110]),
        .R(rst));
  FDRE \freq_mult_reg_reg[111] 
       (.C(clk),
        .CE(p_1_in[111]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[111]),
        .R(rst));
  FDRE \freq_mult_reg_reg[11] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[11]),
        .R(rst));
  FDRE \freq_mult_reg_reg[12] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[12]),
        .R(rst));
  FDRE \freq_mult_reg_reg[13] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[13]),
        .R(rst));
  FDRE \freq_mult_reg_reg[14] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[14]),
        .R(rst));
  FDRE \freq_mult_reg_reg[15] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[15]),
        .R(rst));
  FDRE \freq_mult_reg_reg[16] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[16]),
        .R(rst));
  FDRE \freq_mult_reg_reg[17] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[17]),
        .R(rst));
  FDRE \freq_mult_reg_reg[18] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[18]),
        .R(rst));
  FDRE \freq_mult_reg_reg[19] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[19]),
        .R(rst));
  FDRE \freq_mult_reg_reg[1] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[1]),
        .R(rst));
  FDRE \freq_mult_reg_reg[20] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[20]),
        .R(rst));
  FDRE \freq_mult_reg_reg[21] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[21]),
        .R(rst));
  FDRE \freq_mult_reg_reg[22] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[22]),
        .R(rst));
  FDRE \freq_mult_reg_reg[23] 
       (.C(clk),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[23]),
        .R(rst));
  FDRE \freq_mult_reg_reg[24] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[24]),
        .R(rst));
  FDRE \freq_mult_reg_reg[25] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[25]),
        .R(rst));
  FDRE \freq_mult_reg_reg[26] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[26]),
        .R(rst));
  FDRE \freq_mult_reg_reg[27] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[27]),
        .R(rst));
  FDRE \freq_mult_reg_reg[28] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[28]),
        .R(rst));
  FDRE \freq_mult_reg_reg[29] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[29]),
        .R(rst));
  FDRE \freq_mult_reg_reg[2] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[2]),
        .R(rst));
  FDRE \freq_mult_reg_reg[30] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[30]),
        .R(rst));
  FDRE \freq_mult_reg_reg[31] 
       (.C(clk),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[31]),
        .R(rst));
  FDRE \freq_mult_reg_reg[32] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[32]),
        .R(rst));
  FDRE \freq_mult_reg_reg[33] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[33]),
        .R(rst));
  FDRE \freq_mult_reg_reg[34] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[34]),
        .R(rst));
  FDRE \freq_mult_reg_reg[35] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[35]),
        .R(rst));
  FDRE \freq_mult_reg_reg[36] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[36]),
        .R(rst));
  FDRE \freq_mult_reg_reg[37] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[37]),
        .R(rst));
  FDRE \freq_mult_reg_reg[38] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[38]),
        .R(rst));
  FDRE \freq_mult_reg_reg[39] 
       (.C(clk),
        .CE(p_1_in[39]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[39]),
        .R(rst));
  FDRE \freq_mult_reg_reg[3] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[3]),
        .R(rst));
  FDRE \freq_mult_reg_reg[40] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[40]),
        .R(rst));
  FDRE \freq_mult_reg_reg[41] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[41]),
        .R(rst));
  FDRE \freq_mult_reg_reg[42] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[42]),
        .R(rst));
  FDRE \freq_mult_reg_reg[43] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[43]),
        .R(rst));
  FDRE \freq_mult_reg_reg[44] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[44]),
        .R(rst));
  FDRE \freq_mult_reg_reg[45] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[45]),
        .R(rst));
  FDRE \freq_mult_reg_reg[46] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[46]),
        .R(rst));
  FDRE \freq_mult_reg_reg[47] 
       (.C(clk),
        .CE(p_1_in[47]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[47]),
        .R(rst));
  FDRE \freq_mult_reg_reg[48] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[48]),
        .R(rst));
  FDRE \freq_mult_reg_reg[49] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[49]),
        .R(rst));
  FDRE \freq_mult_reg_reg[4] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[4]),
        .R(rst));
  FDRE \freq_mult_reg_reg[50] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[50]),
        .R(rst));
  FDRE \freq_mult_reg_reg[51] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[51]),
        .R(rst));
  FDRE \freq_mult_reg_reg[52] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[52]),
        .R(rst));
  FDRE \freq_mult_reg_reg[53] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[53]),
        .R(rst));
  FDRE \freq_mult_reg_reg[54] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[54]),
        .R(rst));
  FDRE \freq_mult_reg_reg[55] 
       (.C(clk),
        .CE(p_1_in[55]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[55]),
        .R(rst));
  FDRE \freq_mult_reg_reg[56] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[56]),
        .R(rst));
  FDRE \freq_mult_reg_reg[57] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[57]),
        .R(rst));
  FDRE \freq_mult_reg_reg[58] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[58]),
        .R(rst));
  FDRE \freq_mult_reg_reg[59] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[59]),
        .R(rst));
  FDRE \freq_mult_reg_reg[5] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[5]),
        .R(rst));
  FDRE \freq_mult_reg_reg[60] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[60]),
        .R(rst));
  FDRE \freq_mult_reg_reg[61] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[61]),
        .R(rst));
  FDRE \freq_mult_reg_reg[62] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[62]),
        .R(rst));
  FDRE \freq_mult_reg_reg[63] 
       (.C(clk),
        .CE(p_1_in[63]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[63]),
        .R(rst));
  FDRE \freq_mult_reg_reg[64] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[64]),
        .R(rst));
  FDRE \freq_mult_reg_reg[65] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[65]),
        .R(rst));
  FDRE \freq_mult_reg_reg[66] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[66]),
        .R(rst));
  FDRE \freq_mult_reg_reg[67] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[67]),
        .R(rst));
  FDRE \freq_mult_reg_reg[68] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[68]),
        .R(rst));
  FDRE \freq_mult_reg_reg[69] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[69]),
        .R(rst));
  FDRE \freq_mult_reg_reg[6] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[6]),
        .R(rst));
  FDRE \freq_mult_reg_reg[70] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[70]),
        .R(rst));
  FDRE \freq_mult_reg_reg[71] 
       (.C(clk),
        .CE(p_1_in[71]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[71]),
        .R(rst));
  FDRE \freq_mult_reg_reg[72] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[72]),
        .R(rst));
  FDRE \freq_mult_reg_reg[73] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[73]),
        .R(rst));
  FDRE \freq_mult_reg_reg[74] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[74]),
        .R(rst));
  FDRE \freq_mult_reg_reg[75] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[75]),
        .R(rst));
  FDRE \freq_mult_reg_reg[76] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[76]),
        .R(rst));
  FDRE \freq_mult_reg_reg[77] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[77]),
        .R(rst));
  FDRE \freq_mult_reg_reg[78] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[78]),
        .R(rst));
  FDRE \freq_mult_reg_reg[79] 
       (.C(clk),
        .CE(p_1_in[79]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[79]),
        .R(rst));
  FDRE \freq_mult_reg_reg[7] 
       (.C(clk),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[7]),
        .R(rst));
  FDRE \freq_mult_reg_reg[80] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[80]),
        .R(rst));
  FDRE \freq_mult_reg_reg[81] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[81]),
        .R(rst));
  FDRE \freq_mult_reg_reg[82] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[82]),
        .R(rst));
  FDRE \freq_mult_reg_reg[83] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[83]),
        .R(rst));
  FDRE \freq_mult_reg_reg[84] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[4]),
        .Q(freq_mult[84]),
        .R(rst));
  FDRE \freq_mult_reg_reg[85] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[5]),
        .Q(freq_mult[85]),
        .R(rst));
  FDRE \freq_mult_reg_reg[86] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[6]),
        .Q(freq_mult[86]),
        .R(rst));
  FDRE \freq_mult_reg_reg[87] 
       (.C(clk),
        .CE(p_1_in[87]),
        .D(S_AXI_WDATA[7]),
        .Q(freq_mult[87]),
        .R(rst));
  FDRE \freq_mult_reg_reg[88] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[88]),
        .R(rst));
  FDRE \freq_mult_reg_reg[89] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[89]),
        .R(rst));
  FDRE \freq_mult_reg_reg[8] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[8]),
        .Q(freq_mult[8]),
        .R(rst));
  FDRE \freq_mult_reg_reg[90] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[10]),
        .Q(freq_mult[90]),
        .R(rst));
  FDRE \freq_mult_reg_reg[91] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[11]),
        .Q(freq_mult[91]),
        .R(rst));
  FDRE \freq_mult_reg_reg[92] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[12]),
        .Q(freq_mult[92]),
        .R(rst));
  FDRE \freq_mult_reg_reg[93] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[13]),
        .Q(freq_mult[93]),
        .R(rst));
  FDRE \freq_mult_reg_reg[94] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[14]),
        .Q(freq_mult[94]),
        .R(rst));
  FDRE \freq_mult_reg_reg[95] 
       (.C(clk),
        .CE(p_1_in[95]),
        .D(S_AXI_WDATA[15]),
        .Q(freq_mult[95]),
        .R(rst));
  FDRE \freq_mult_reg_reg[96] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[0]),
        .Q(freq_mult[96]),
        .R(rst));
  FDRE \freq_mult_reg_reg[97] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[1]),
        .Q(freq_mult[97]),
        .R(rst));
  FDRE \freq_mult_reg_reg[98] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[2]),
        .Q(freq_mult[98]),
        .R(rst));
  FDRE \freq_mult_reg_reg[99] 
       (.C(clk),
        .CE(p_1_in[103]),
        .D(S_AXI_WDATA[3]),
        .Q(freq_mult[99]),
        .R(rst));
  FDRE \freq_mult_reg_reg[9] 
       (.C(clk),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[9]),
        .Q(freq_mult[9]),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[1]_i_1 
       (.I0(bank_offset_reg[0]),
        .I1(bank_wr_en),
        .I2(sel0[0]),
        .O(\param_bram_addr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[2]_i_1 
       (.I0(bank_offset_reg[1]),
        .I1(bank_wr_en),
        .I2(sel0[1]),
        .O(\param_bram_addr_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[3]_i_1 
       (.I0(bank_offset_reg[2]),
        .I1(bank_wr_en),
        .I2(sel0[2]),
        .O(\param_bram_addr_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[4]_i_1 
       (.I0(bank_offset_reg[3]),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(\param_bram_addr_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[5]_i_1 
       (.I0(sel0[0]),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .O(\param_bram_addr_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[6]_i_1 
       (.I0(sel0[1]),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[7] ),
        .O(\param_bram_addr_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[7]_i_1 
       (.I0(sel0[2]),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[8] ),
        .O(\param_bram_addr_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[8]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[9] ),
        .O(\param_bram_addr_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \param_bram_addr_reg[9]_i_1 
       (.I0(bank_offset_reg[1]),
        .I1(bank_offset_reg[0]),
        .I2(bank_offset_reg[3]),
        .I3(bank_offset_reg[2]),
        .I4(p_12_in),
        .O(\param_bram_addr_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \param_bram_addr_reg[9]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[6] ),
        .I1(bank_wr_en),
        .I2(\axi_awaddr_reg_n_0_[10] ),
        .O(\param_bram_addr_reg[9]_i_2_n_0 ));
  FDRE \param_bram_addr_reg_reg[0] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(bram_param_index),
        .Q(param_bram_addr[0]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[1] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[1]_i_1_n_0 ),
        .Q(param_bram_addr[1]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[2] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[2]_i_1_n_0 ),
        .Q(param_bram_addr[2]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[3] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[3]_i_1_n_0 ),
        .Q(param_bram_addr[3]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[4] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[4]_i_1_n_0 ),
        .Q(param_bram_addr[4]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[5] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[5]_i_1_n_0 ),
        .Q(param_bram_addr[5]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[6] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[6]_i_1_n_0 ),
        .Q(param_bram_addr[6]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[7] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[7]_i_1_n_0 ),
        .Q(param_bram_addr[7]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[8] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[8]_i_1_n_0 ),
        .Q(param_bram_addr[8]),
        .R(rst));
  FDRE \param_bram_addr_reg_reg[9] 
       (.C(clk),
        .CE(\param_bram_addr_reg[9]_i_1_n_0 ),
        .D(\param_bram_addr_reg[9]_i_2_n_0 ),
        .Q(param_bram_addr[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \param_bram_data_reg[31]_i_1 
       (.I0(bram_flag),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(p_9_in),
        .O(p_12_in));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \param_bram_data_reg[31]_i_2 
       (.I0(axi_device_id[0]),
        .I1(axi_device_id[1]),
        .I2(\axi_awaddr_reg_n_0_[0] ),
        .I3(\axi_awaddr_reg_n_0_[1] ),
        .I4(axi_device_id[3]),
        .I5(axi_device_id[2]),
        .O(p_9_in));
  FDRE \param_bram_data_reg_reg[0] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[0]),
        .Q(param_bram_data[0]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[10] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[10]),
        .Q(param_bram_data[10]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[11] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[11]),
        .Q(param_bram_data[11]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[12] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[12]),
        .Q(param_bram_data[12]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[13] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[13]),
        .Q(param_bram_data[13]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[14] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[14]),
        .Q(param_bram_data[14]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[15] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[15]),
        .Q(param_bram_data[15]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[16] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[16]),
        .Q(param_bram_data[16]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[17] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[17]),
        .Q(param_bram_data[17]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[18] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[18]),
        .Q(param_bram_data[18]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[19] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[19]),
        .Q(param_bram_data[19]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[1] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[1]),
        .Q(param_bram_data[1]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[20] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[20]),
        .Q(param_bram_data[20]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[21] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[21]),
        .Q(param_bram_data[21]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[22] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[22]),
        .Q(param_bram_data[22]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[23] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[23]),
        .Q(param_bram_data[23]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[24] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[24]),
        .Q(param_bram_data[24]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[25] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[25]),
        .Q(param_bram_data[25]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[26] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[26]),
        .Q(param_bram_data[26]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[27] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[27]),
        .Q(param_bram_data[27]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[28] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[28]),
        .Q(param_bram_data[28]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[29] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[29]),
        .Q(param_bram_data[29]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[2] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[2]),
        .Q(param_bram_data[2]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[30] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[30]),
        .Q(param_bram_data[30]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[31] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[31]),
        .Q(param_bram_data[31]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[3] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[3]),
        .Q(param_bram_data[3]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[4] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[4]),
        .Q(param_bram_data[4]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[5] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[5]),
        .Q(param_bram_data[5]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[6] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[6]),
        .Q(param_bram_data[6]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[7] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[7]),
        .Q(param_bram_data[7]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[8] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[8]),
        .Q(param_bram_data[8]),
        .R(rst));
  FDRE \param_bram_data_reg_reg[9] 
       (.C(clk),
        .CE(p_12_in),
        .D(S_AXI_WDATA[9]),
        .Q(param_bram_data[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'hE2FFE2FFE2FFE200)) 
    param_bram_mask_en_i_1
       (.I0(\axi_awaddr_reg_n_0_[7] ),
        .I1(bank_skip_ahead__0),
        .I2(\axi_awaddr_reg_n_0_[8] ),
        .I3(bank_wr_en),
        .I4(p_12_in),
        .I5(param_bram_mask_en_reg_n_0),
        .O(param_bram_mask_en_i_1_n_0));
  FDRE param_bram_mask_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(param_bram_mask_en_i_1_n_0),
        .Q(param_bram_mask_en_reg_n_0),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \param_bram_wen[0]_INST_0 
       (.I0(param_bram_mask_en_reg_n_0),
        .I1(\param_bram_wen_reg_reg_n_0_[0] ),
        .O(param_bram_wen[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \param_bram_wen[1]_INST_0 
       (.I0(param_bram_mask_en_reg_n_0),
        .I1(\param_bram_wen_reg_reg_n_0_[1] ),
        .O(param_bram_wen[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \param_bram_wen[2]_INST_0 
       (.I0(param_bram_mask_en_reg_n_0),
        .I1(\param_bram_wen_reg_reg_n_0_[2] ),
        .O(param_bram_wen[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \param_bram_wen[3]_INST_0 
       (.I0(param_bram_mask_en_reg_n_0),
        .I1(\param_bram_wen_reg_reg_n_0_[3] ),
        .O(param_bram_wen[3]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \param_bram_wen_reg[3]_i_1 
       (.I0(bank_offset_reg[1]),
        .I1(bank_offset_reg[0]),
        .I2(bank_offset_reg[3]),
        .I3(bank_offset_reg[2]),
        .I4(p_12_in),
        .I5(bank_flag),
        .O(param_bram_wen_reg));
  FDRE \param_bram_wen_reg_reg[0] 
       (.C(clk),
        .CE(param_bram_wen_reg),
        .D(S_AXI_WSTRB[0]),
        .Q(\param_bram_wen_reg_reg_n_0_[0] ),
        .R(rst));
  FDRE \param_bram_wen_reg_reg[1] 
       (.C(clk),
        .CE(param_bram_wen_reg),
        .D(S_AXI_WSTRB[1]),
        .Q(\param_bram_wen_reg_reg_n_0_[1] ),
        .R(rst));
  FDRE \param_bram_wen_reg_reg[2] 
       (.C(clk),
        .CE(param_bram_wen_reg),
        .D(S_AXI_WSTRB[2]),
        .Q(\param_bram_wen_reg_reg_n_0_[2] ),
        .R(rst));
  FDRE \param_bram_wen_reg_reg[3] 
       (.C(clk),
        .CE(param_bram_wen_reg),
        .D(S_AXI_WSTRB[3]),
        .Q(\param_bram_wen_reg_reg_n_0_[3] ),
        .R(rst));
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
