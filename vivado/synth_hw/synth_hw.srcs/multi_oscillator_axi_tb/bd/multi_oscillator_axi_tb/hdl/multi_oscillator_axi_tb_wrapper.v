//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Nov 28 11:48:29 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target multi_oscillator_axi_tb_wrapper.bd
//Design      : multi_oscillator_axi_tb_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module multi_oscillator_axi_tb_wrapper
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
  output [0:0]peripheral_reset;
  input reset;
  input sys_clock;

  wire [8:0]addrb;
  wire [63:0]doutb;
  wire [111:0]freq_mult;
  wire [9:0]param_bram_addr;
  wire [31:0]param_bram_data;
  wire [3:0]param_bram_wen;
  wire [0:0]peripheral_reset;
  wire reset;
  wire sys_clock;

  multi_oscillator_axi_tb multi_oscillator_axi_tb_i
       (.addrb(addrb),
        .doutb(doutb),
        .freq_mult(freq_mult),
        .param_bram_addr(param_bram_addr),
        .param_bram_data(param_bram_data),
        .param_bram_wen(param_bram_wen),
        .peripheral_reset(peripheral_reset),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
