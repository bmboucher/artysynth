// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Nov 23 15:27:04 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_multi_oscillator_top_0_0/top_multi_oscillator_top_0_0_stub.v
// Design      : top_multi_oscillator_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multi_oscillator_top,Vivado 2020.1" *)
module top_multi_oscillator_top_0_0(freq_bram_addr, freq_bram_rddata, 
  state_fifo_full, state_fifo_prog_full, state_fifo_empty, state_fifo_dout, state_fifo_din, 
  state_fifo_wr_en, state_fifo_rd_en, state_fifo_rst, ctrl_axi_aclk, ctrl_axi_aresetn, 
  ctrl_axi_awaddr, ctrl_axi_awprot, ctrl_axi_awvalid, ctrl_axi_awready, ctrl_axi_wdata, 
  ctrl_axi_wstrb, ctrl_axi_wvalid, ctrl_axi_wready, ctrl_axi_bresp, ctrl_axi_bvalid, 
  ctrl_axi_bready, ctrl_axi_araddr, ctrl_axi_arprot, ctrl_axi_arvalid, ctrl_axi_arready, 
  ctrl_axi_rdata, ctrl_axi_rresp, ctrl_axi_rvalid, ctrl_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="freq_bram_addr[31:0],freq_bram_rddata[31:0],state_fifo_full,state_fifo_prog_full,state_fifo_empty,state_fifo_dout[63:0],state_fifo_din[63:0],state_fifo_wr_en,state_fifo_rd_en,state_fifo_rst,ctrl_axi_aclk,ctrl_axi_aresetn,ctrl_axi_awaddr[6:0],ctrl_axi_awprot[2:0],ctrl_axi_awvalid,ctrl_axi_awready,ctrl_axi_wdata[31:0],ctrl_axi_wstrb[3:0],ctrl_axi_wvalid,ctrl_axi_wready,ctrl_axi_bresp[1:0],ctrl_axi_bvalid,ctrl_axi_bready,ctrl_axi_araddr[6:0],ctrl_axi_arprot[2:0],ctrl_axi_arvalid,ctrl_axi_arready,ctrl_axi_rdata[31:0],ctrl_axi_rresp[1:0],ctrl_axi_rvalid,ctrl_axi_rready" */;
  output [31:0]freq_bram_addr;
  input [31:0]freq_bram_rddata;
  input state_fifo_full;
  input state_fifo_prog_full;
  input state_fifo_empty;
  output [63:0]state_fifo_dout;
  input [63:0]state_fifo_din;
  output state_fifo_wr_en;
  output state_fifo_rd_en;
  output state_fifo_rst;
  input ctrl_axi_aclk;
  input ctrl_axi_aresetn;
  input [6:0]ctrl_axi_awaddr;
  input [2:0]ctrl_axi_awprot;
  input ctrl_axi_awvalid;
  output ctrl_axi_awready;
  input [31:0]ctrl_axi_wdata;
  input [3:0]ctrl_axi_wstrb;
  input ctrl_axi_wvalid;
  output ctrl_axi_wready;
  output [1:0]ctrl_axi_bresp;
  output ctrl_axi_bvalid;
  input ctrl_axi_bready;
  input [6:0]ctrl_axi_araddr;
  input [2:0]ctrl_axi_arprot;
  input ctrl_axi_arvalid;
  output ctrl_axi_arready;
  output [31:0]ctrl_axi_rdata;
  output [1:0]ctrl_axi_rresp;
  output ctrl_axi_rvalid;
  input ctrl_axi_rready;
endmodule
