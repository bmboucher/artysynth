// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 08:06:07 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_multi_oscillator_acc_0_0/top_multi_oscillator_acc_0_0_stub.v
// Design      : top_multi_oscillator_acc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multi_oscillator_accum,Vivado 2020.1" *)
module top_multi_oscillator_acc_0_0(clk, rst, freq_mult, vibrato, param_bram_addr, 
  param_bram_data, state_fifo_en, prev_state, next_state, osc_index, osc_phase, osc_amp, 
  osc_ontime)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,freq_mult[15:0],vibrato[47:0],param_bram_addr[8:0],param_bram_data[63:0],state_fifo_en,prev_state[63:0],next_state[63:0],osc_index[8:0],osc_phase[31:0],osc_amp[15:0],osc_ontime[15:0]" */;
  input clk;
  input rst;
  input [15:0]freq_mult;
  input [47:0]vibrato;
  output [8:0]param_bram_addr;
  input [63:0]param_bram_data;
  output state_fifo_en;
  input [63:0]prev_state;
  output [63:0]next_state;
  output [8:0]osc_index;
  output [31:0]osc_phase;
  output [15:0]osc_amp;
  output [15:0]osc_ontime;
endmodule
