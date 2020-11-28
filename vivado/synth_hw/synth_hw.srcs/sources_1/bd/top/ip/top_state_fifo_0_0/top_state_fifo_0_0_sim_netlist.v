// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Nov 28 11:50:23 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_state_fifo_0_0/top_state_fifo_0_0_sim_netlist.v
// Design      : top_state_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_state_fifo_0_0,state_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "state_fifo,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_state_fifo_0_0
   (prev_state,
    next_state,
    clk,
    rst,
    en,
    out_rst,
    state_fifo_prog_full,
    state_fifo_dout,
    state_fifo_din,
    state_fifo_wr_en,
    state_fifo_rd_en,
    state_fifo_valid);
  output [63:0]prev_state;
  input [63:0]next_state;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 out_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME out_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) output out_rst;
  input state_fifo_prog_full;
  output [63:0]state_fifo_dout;
  input [63:0]state_fifo_din;
  output state_fifo_wr_en;
  output state_fifo_rd_en;
  input state_fifo_valid;

  wire clk;
  wire en;
  wire [63:0]next_state;
  wire out_rst;
  wire [63:0]prev_state;
  wire rst;
  wire [63:0]state_fifo_din;
  wire [63:0]state_fifo_dout;
  wire state_fifo_prog_full;
  wire state_fifo_rd_en;
  wire state_fifo_valid;
  wire state_fifo_wr_en;

  top_state_fifo_0_0_state_fifo inst
       (.clk(clk),
        .out_rst(out_rst),
        .prev_state(prev_state),
        .rst(rst),
        .state_fifo_din(state_fifo_din),
        .state_fifo_prog_full(state_fifo_prog_full),
        .state_fifo_valid(state_fifo_valid));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[0]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[0]),
        .O(state_fifo_dout[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[10]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[10]),
        .O(state_fifo_dout[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[11]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[11]),
        .O(state_fifo_dout[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[12]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[12]),
        .O(state_fifo_dout[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[13]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[13]),
        .O(state_fifo_dout[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[14]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[14]),
        .O(state_fifo_dout[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[15]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[15]),
        .O(state_fifo_dout[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[16]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[16]),
        .O(state_fifo_dout[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[17]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[17]),
        .O(state_fifo_dout[17]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[18]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[18]),
        .O(state_fifo_dout[18]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[19]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[19]),
        .O(state_fifo_dout[19]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[1]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[1]),
        .O(state_fifo_dout[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[20]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[20]),
        .O(state_fifo_dout[20]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[21]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[21]),
        .O(state_fifo_dout[21]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[22]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[22]),
        .O(state_fifo_dout[22]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[23]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[23]),
        .O(state_fifo_dout[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[24]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[24]),
        .O(state_fifo_dout[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[25]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[25]),
        .O(state_fifo_dout[25]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[26]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[26]),
        .O(state_fifo_dout[26]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[27]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[27]),
        .O(state_fifo_dout[27]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[28]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[28]),
        .O(state_fifo_dout[28]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[29]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[29]),
        .O(state_fifo_dout[29]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[2]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[2]),
        .O(state_fifo_dout[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[30]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[30]),
        .O(state_fifo_dout[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[31]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[31]),
        .O(state_fifo_dout[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[32]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[32]),
        .O(state_fifo_dout[32]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[33]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[33]),
        .O(state_fifo_dout[33]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[34]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[34]),
        .O(state_fifo_dout[34]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[35]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[35]),
        .O(state_fifo_dout[35]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[36]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[36]),
        .O(state_fifo_dout[36]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[37]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[37]),
        .O(state_fifo_dout[37]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[38]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[38]),
        .O(state_fifo_dout[38]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[39]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[39]),
        .O(state_fifo_dout[39]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[3]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[3]),
        .O(state_fifo_dout[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[40]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[40]),
        .O(state_fifo_dout[40]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[41]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[41]),
        .O(state_fifo_dout[41]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[42]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[42]),
        .O(state_fifo_dout[42]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[43]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[43]),
        .O(state_fifo_dout[43]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[44]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[44]),
        .O(state_fifo_dout[44]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[45]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[45]),
        .O(state_fifo_dout[45]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[46]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[46]),
        .O(state_fifo_dout[46]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[47]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[47]),
        .O(state_fifo_dout[47]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[48]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[48]),
        .O(state_fifo_dout[48]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[49]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[49]),
        .O(state_fifo_dout[49]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[4]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[4]),
        .O(state_fifo_dout[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[50]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[50]),
        .O(state_fifo_dout[50]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[51]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[51]),
        .O(state_fifo_dout[51]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[52]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[52]),
        .O(state_fifo_dout[52]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[53]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[53]),
        .O(state_fifo_dout[53]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[54]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[54]),
        .O(state_fifo_dout[54]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[55]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[55]),
        .O(state_fifo_dout[55]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[56]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[56]),
        .O(state_fifo_dout[56]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[57]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[57]),
        .O(state_fifo_dout[57]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[58]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[58]),
        .O(state_fifo_dout[58]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[59]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[59]),
        .O(state_fifo_dout[59]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[5]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[5]),
        .O(state_fifo_dout[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[60]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[60]),
        .O(state_fifo_dout[60]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[61]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[61]),
        .O(state_fifo_dout[61]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[62]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[62]),
        .O(state_fifo_dout[62]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[63]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[63]),
        .O(state_fifo_dout[63]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[6]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[6]),
        .O(state_fifo_dout[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[7]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[7]),
        .O(state_fifo_dout[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[8]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[8]),
        .O(state_fifo_dout[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_fifo_dout[9]_INST_0 
       (.I0(state_fifo_prog_full),
        .I1(next_state[9]),
        .O(state_fifo_dout[9]));
  LUT3 #(
    .INIT(8'h40)) 
    state_fifo_rd_en_INST_0
       (.I0(rst),
        .I1(state_fifo_prog_full),
        .I2(en),
        .O(state_fifo_rd_en));
  LUT3 #(
    .INIT(8'h0D)) 
    state_fifo_wr_en_INST_0
       (.I0(state_fifo_prog_full),
        .I1(en),
        .I2(rst),
        .O(state_fifo_wr_en));
endmodule

(* ORIG_REF_NAME = "state_fifo" *) 
module top_state_fifo_0_0_state_fifo
   (out_rst,
    prev_state,
    clk,
    rst,
    state_fifo_prog_full,
    state_fifo_din,
    state_fifo_valid);
  output out_rst;
  output [63:0]prev_state;
  input clk;
  input rst;
  input state_fifo_prog_full;
  input [63:0]state_fifo_din;
  input state_fifo_valid;

  wire clk;
  wire out_rst;
  wire out_rst_reg;
  wire out_rst_reg_i_1_n_0;
  wire [63:0]prev_state;
  wire rst;
  wire [63:0]state_fifo_din;
  wire state_fifo_prog_full;
  wire state_fifo_valid;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    out_rst_INST_0
       (.I0(rst),
        .I1(out_rst_reg),
        .O(out_rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    out_rst_reg_i_1
       (.I0(out_rst_reg),
        .I1(rst),
        .I2(state_fifo_prog_full),
        .O(out_rst_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    out_rst_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(out_rst_reg_i_1_n_0),
        .Q(out_rst_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[0]_INST_0 
       (.I0(state_fifo_din[0]),
        .I1(state_fifo_valid),
        .O(prev_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[10]_INST_0 
       (.I0(state_fifo_din[10]),
        .I1(state_fifo_valid),
        .O(prev_state[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[11]_INST_0 
       (.I0(state_fifo_din[11]),
        .I1(state_fifo_valid),
        .O(prev_state[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[12]_INST_0 
       (.I0(state_fifo_din[12]),
        .I1(state_fifo_valid),
        .O(prev_state[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[13]_INST_0 
       (.I0(state_fifo_din[13]),
        .I1(state_fifo_valid),
        .O(prev_state[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[14]_INST_0 
       (.I0(state_fifo_din[14]),
        .I1(state_fifo_valid),
        .O(prev_state[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[15]_INST_0 
       (.I0(state_fifo_din[15]),
        .I1(state_fifo_valid),
        .O(prev_state[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[16]_INST_0 
       (.I0(state_fifo_din[16]),
        .I1(state_fifo_valid),
        .O(prev_state[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[17]_INST_0 
       (.I0(state_fifo_din[17]),
        .I1(state_fifo_valid),
        .O(prev_state[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[18]_INST_0 
       (.I0(state_fifo_din[18]),
        .I1(state_fifo_valid),
        .O(prev_state[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[19]_INST_0 
       (.I0(state_fifo_din[19]),
        .I1(state_fifo_valid),
        .O(prev_state[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[1]_INST_0 
       (.I0(state_fifo_din[1]),
        .I1(state_fifo_valid),
        .O(prev_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[20]_INST_0 
       (.I0(state_fifo_din[20]),
        .I1(state_fifo_valid),
        .O(prev_state[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[21]_INST_0 
       (.I0(state_fifo_din[21]),
        .I1(state_fifo_valid),
        .O(prev_state[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[22]_INST_0 
       (.I0(state_fifo_din[22]),
        .I1(state_fifo_valid),
        .O(prev_state[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[23]_INST_0 
       (.I0(state_fifo_din[23]),
        .I1(state_fifo_valid),
        .O(prev_state[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[24]_INST_0 
       (.I0(state_fifo_din[24]),
        .I1(state_fifo_valid),
        .O(prev_state[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[25]_INST_0 
       (.I0(state_fifo_din[25]),
        .I1(state_fifo_valid),
        .O(prev_state[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[26]_INST_0 
       (.I0(state_fifo_din[26]),
        .I1(state_fifo_valid),
        .O(prev_state[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[27]_INST_0 
       (.I0(state_fifo_din[27]),
        .I1(state_fifo_valid),
        .O(prev_state[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[28]_INST_0 
       (.I0(state_fifo_din[28]),
        .I1(state_fifo_valid),
        .O(prev_state[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[29]_INST_0 
       (.I0(state_fifo_din[29]),
        .I1(state_fifo_valid),
        .O(prev_state[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[2]_INST_0 
       (.I0(state_fifo_din[2]),
        .I1(state_fifo_valid),
        .O(prev_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[30]_INST_0 
       (.I0(state_fifo_din[30]),
        .I1(state_fifo_valid),
        .O(prev_state[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[31]_INST_0 
       (.I0(state_fifo_din[31]),
        .I1(state_fifo_valid),
        .O(prev_state[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[32]_INST_0 
       (.I0(state_fifo_din[32]),
        .I1(state_fifo_valid),
        .O(prev_state[32]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[33]_INST_0 
       (.I0(state_fifo_din[33]),
        .I1(state_fifo_valid),
        .O(prev_state[33]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[34]_INST_0 
       (.I0(state_fifo_din[34]),
        .I1(state_fifo_valid),
        .O(prev_state[34]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[35]_INST_0 
       (.I0(state_fifo_din[35]),
        .I1(state_fifo_valid),
        .O(prev_state[35]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[36]_INST_0 
       (.I0(state_fifo_din[36]),
        .I1(state_fifo_valid),
        .O(prev_state[36]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[37]_INST_0 
       (.I0(state_fifo_din[37]),
        .I1(state_fifo_valid),
        .O(prev_state[37]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[38]_INST_0 
       (.I0(state_fifo_din[38]),
        .I1(state_fifo_valid),
        .O(prev_state[38]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[39]_INST_0 
       (.I0(state_fifo_din[39]),
        .I1(state_fifo_valid),
        .O(prev_state[39]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[3]_INST_0 
       (.I0(state_fifo_din[3]),
        .I1(state_fifo_valid),
        .O(prev_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[40]_INST_0 
       (.I0(state_fifo_din[40]),
        .I1(state_fifo_valid),
        .O(prev_state[40]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[41]_INST_0 
       (.I0(state_fifo_din[41]),
        .I1(state_fifo_valid),
        .O(prev_state[41]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[42]_INST_0 
       (.I0(state_fifo_din[42]),
        .I1(state_fifo_valid),
        .O(prev_state[42]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[43]_INST_0 
       (.I0(state_fifo_din[43]),
        .I1(state_fifo_valid),
        .O(prev_state[43]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[44]_INST_0 
       (.I0(state_fifo_din[44]),
        .I1(state_fifo_valid),
        .O(prev_state[44]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[45]_INST_0 
       (.I0(state_fifo_din[45]),
        .I1(state_fifo_valid),
        .O(prev_state[45]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[46]_INST_0 
       (.I0(state_fifo_din[46]),
        .I1(state_fifo_valid),
        .O(prev_state[46]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[47]_INST_0 
       (.I0(state_fifo_din[47]),
        .I1(state_fifo_valid),
        .O(prev_state[47]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[48]_INST_0 
       (.I0(state_fifo_din[48]),
        .I1(state_fifo_valid),
        .O(prev_state[48]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[49]_INST_0 
       (.I0(state_fifo_din[49]),
        .I1(state_fifo_valid),
        .O(prev_state[49]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[4]_INST_0 
       (.I0(state_fifo_din[4]),
        .I1(state_fifo_valid),
        .O(prev_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[50]_INST_0 
       (.I0(state_fifo_din[50]),
        .I1(state_fifo_valid),
        .O(prev_state[50]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[51]_INST_0 
       (.I0(state_fifo_din[51]),
        .I1(state_fifo_valid),
        .O(prev_state[51]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[52]_INST_0 
       (.I0(state_fifo_din[52]),
        .I1(state_fifo_valid),
        .O(prev_state[52]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[53]_INST_0 
       (.I0(state_fifo_din[53]),
        .I1(state_fifo_valid),
        .O(prev_state[53]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[54]_INST_0 
       (.I0(state_fifo_din[54]),
        .I1(state_fifo_valid),
        .O(prev_state[54]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[55]_INST_0 
       (.I0(state_fifo_din[55]),
        .I1(state_fifo_valid),
        .O(prev_state[55]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[56]_INST_0 
       (.I0(state_fifo_din[56]),
        .I1(state_fifo_valid),
        .O(prev_state[56]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[57]_INST_0 
       (.I0(state_fifo_din[57]),
        .I1(state_fifo_valid),
        .O(prev_state[57]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[58]_INST_0 
       (.I0(state_fifo_din[58]),
        .I1(state_fifo_valid),
        .O(prev_state[58]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[59]_INST_0 
       (.I0(state_fifo_din[59]),
        .I1(state_fifo_valid),
        .O(prev_state[59]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[5]_INST_0 
       (.I0(state_fifo_din[5]),
        .I1(state_fifo_valid),
        .O(prev_state[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[60]_INST_0 
       (.I0(state_fifo_din[60]),
        .I1(state_fifo_valid),
        .O(prev_state[60]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[61]_INST_0 
       (.I0(state_fifo_din[61]),
        .I1(state_fifo_valid),
        .O(prev_state[61]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[62]_INST_0 
       (.I0(state_fifo_din[62]),
        .I1(state_fifo_valid),
        .O(prev_state[62]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[63]_INST_0 
       (.I0(state_fifo_din[63]),
        .I1(state_fifo_valid),
        .O(prev_state[63]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[6]_INST_0 
       (.I0(state_fifo_din[6]),
        .I1(state_fifo_valid),
        .O(prev_state[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[7]_INST_0 
       (.I0(state_fifo_din[7]),
        .I1(state_fifo_valid),
        .O(prev_state[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[8]_INST_0 
       (.I0(state_fifo_din[8]),
        .I1(state_fifo_valid),
        .O(prev_state[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \prev_state[9]_INST_0 
       (.I0(state_fifo_din[9]),
        .I1(state_fifo_valid),
        .O(prev_state[9]));
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
