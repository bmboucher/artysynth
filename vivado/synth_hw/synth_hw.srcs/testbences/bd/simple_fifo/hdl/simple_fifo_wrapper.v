//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Nov 23 13:09:05 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target simple_fifo_wrapper.bd
//Design      : simple_fifo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module simple_fifo_wrapper
   (FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    clk,
    prog_full,
    rst,
    valid);
  output FIFO_READ_empty;
  output [63:0]FIFO_READ_rd_data;
  input FIFO_READ_rd_en;
  output FIFO_WRITE_full;
  input [63:0]FIFO_WRITE_wr_data;
  input FIFO_WRITE_wr_en;
  input clk;
  output prog_full;
  input rst;
  output valid;

  wire FIFO_READ_empty;
  wire [63:0]FIFO_READ_rd_data;
  wire FIFO_READ_rd_en;
  wire FIFO_WRITE_full;
  wire [63:0]FIFO_WRITE_wr_data;
  wire FIFO_WRITE_wr_en;
  wire clk;
  wire prog_full;
  wire rst;
  wire valid;

  simple_fifo simple_fifo_i
       (.FIFO_READ_empty(FIFO_READ_empty),
        .FIFO_READ_rd_data(FIFO_READ_rd_data),
        .FIFO_READ_rd_en(FIFO_READ_rd_en),
        .FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .clk(clk),
        .prog_full(prog_full),
        .rst(rst),
        .valid(valid));
endmodule
