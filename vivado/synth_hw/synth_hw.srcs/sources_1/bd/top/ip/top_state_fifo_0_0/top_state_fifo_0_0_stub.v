// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 01:24:37 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_state_fifo_0_0/top_state_fifo_0_0_stub.v
// Design      : top_state_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "state_fifo,Vivado 2020.1" *)
module top_state_fifo_0_0(prev_state, next_state, clk, rst, en, out_rst, 
  state_fifo_prog_full, state_fifo_dout, state_fifo_din, state_fifo_wr_en, 
  state_fifo_rd_en, state_fifo_valid)
/* synthesis syn_black_box black_box_pad_pin="prev_state[63:0],next_state[63:0],clk,rst,en,out_rst,state_fifo_prog_full,state_fifo_dout[63:0],state_fifo_din[63:0],state_fifo_wr_en,state_fifo_rd_en,state_fifo_valid" */;
  output [63:0]prev_state;
  input [63:0]next_state;
  input clk;
  input rst;
  input en;
  output out_rst;
  input state_fifo_prog_full;
  output [63:0]state_fifo_dout;
  input [63:0]state_fifo_din;
  output state_fifo_wr_en;
  output state_fifo_rd_en;
  input state_fifo_valid;
endmodule
