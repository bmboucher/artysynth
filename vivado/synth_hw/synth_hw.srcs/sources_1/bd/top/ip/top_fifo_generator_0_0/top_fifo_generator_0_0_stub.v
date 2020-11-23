// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Nov 23 09:50:44 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_fifo_generator_0_0/top_fifo_generator_0_0_stub.v
// Design      : top_fifo_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.1" *)
module top_fifo_generator_0_0(clk, rst, din, wr_en, rd_en, dout, full, empty, 
  prog_full)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[63:0],wr_en,rd_en,dout[63:0],full,empty,prog_full" */;
  input clk;
  input rst;
  input [63:0]din;
  input wr_en;
  input rd_en;
  output [63:0]dout;
  output full;
  output empty;
  output prog_full;
endmodule
