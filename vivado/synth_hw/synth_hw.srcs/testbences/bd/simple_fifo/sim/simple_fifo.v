//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Nov 23 13:09:05 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target simple_fifo.bd
//Design      : simple_fifo
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "simple_fifo,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=simple_fifo,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "simple_fifo.hwdef" *) 
module simple_fifo
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output FIFO_READ_empty;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [63:0]FIFO_READ_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input FIFO_READ_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output FIFO_WRITE_full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [63:0]FIFO_WRITE_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input FIFO_WRITE_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN simple_fifo_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output prog_full;
  input rst;
  output valid;

  wire FIFO_READ_1_EMPTY;
  wire [63:0]FIFO_READ_1_RD_DATA;
  wire FIFO_READ_1_RD_EN;
  wire FIFO_WRITE_1_FULL;
  wire [63:0]FIFO_WRITE_1_WR_DATA;
  wire FIFO_WRITE_1_WR_EN;
  wire clk_1;
  wire fifo_generator_0_prog_full;
  wire fifo_generator_0_valid;
  wire rst_1;

  assign FIFO_READ_1_RD_EN = FIFO_READ_rd_en;
  assign FIFO_READ_empty = FIFO_READ_1_EMPTY;
  assign FIFO_READ_rd_data[63:0] = FIFO_READ_1_RD_DATA;
  assign FIFO_WRITE_1_WR_DATA = FIFO_WRITE_wr_data[63:0];
  assign FIFO_WRITE_1_WR_EN = FIFO_WRITE_wr_en;
  assign FIFO_WRITE_full = FIFO_WRITE_1_FULL;
  assign clk_1 = clk;
  assign prog_full = fifo_generator_0_prog_full;
  assign rst_1 = rst;
  assign valid = fifo_generator_0_valid;
  simple_fifo_fifo_generator_0_0 fifo
       (.clk(clk_1),
        .din(FIFO_WRITE_1_WR_DATA),
        .dout(FIFO_READ_1_RD_DATA),
        .empty(FIFO_READ_1_EMPTY),
        .full(FIFO_WRITE_1_FULL),
        .prog_full(fifo_generator_0_prog_full),
        .rd_en(FIFO_READ_1_RD_EN),
        .rst(rst_1),
        .valid(fifo_generator_0_valid),
        .wr_en(FIFO_WRITE_1_WR_EN));
endmodule
