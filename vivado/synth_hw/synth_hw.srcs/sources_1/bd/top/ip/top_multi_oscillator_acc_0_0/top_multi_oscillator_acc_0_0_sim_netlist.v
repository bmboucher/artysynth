// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 01:24:36 2020
// Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Repos/artysynth/vivado/synth_hw/synth_hw.srcs/sources_1/bd/top/ip/top_multi_oscillator_acc_0_0/top_multi_oscillator_acc_0_0_sim_netlist.v
// Design      : top_multi_oscillator_acc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_multi_oscillator_acc_0_0,multi_oscillator_accum,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "multi_oscillator_accum,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_multi_oscillator_acc_0_0
   (clk,
    rst,
    freq_mult,
    vibrato,
    param_bram_addr,
    param_bram_data,
    state_fifo_en,
    prev_state,
    next_state,
    osc_index,
    osc_phase,
    osc_amp,
    osc_ontime);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
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

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]prev_state;

  assign next_state[63:0] = prev_state;
  assign osc_amp[15] = \<const0> ;
  assign osc_amp[14] = \<const0> ;
  assign osc_amp[13] = \<const0> ;
  assign osc_amp[12] = \<const0> ;
  assign osc_amp[11] = \<const0> ;
  assign osc_amp[10] = \<const0> ;
  assign osc_amp[9] = \<const0> ;
  assign osc_amp[8] = \<const0> ;
  assign osc_amp[7] = \<const0> ;
  assign osc_amp[6] = \<const0> ;
  assign osc_amp[5] = \<const0> ;
  assign osc_amp[4] = \<const0> ;
  assign osc_amp[3] = \<const0> ;
  assign osc_amp[2] = \<const0> ;
  assign osc_amp[1] = \<const0> ;
  assign osc_amp[0] = \<const0> ;
  assign osc_index[8] = \<const0> ;
  assign osc_index[7] = \<const0> ;
  assign osc_index[6] = \<const0> ;
  assign osc_index[5] = \<const0> ;
  assign osc_index[4] = \<const0> ;
  assign osc_index[3] = \<const0> ;
  assign osc_index[2] = \<const0> ;
  assign osc_index[1] = \<const0> ;
  assign osc_index[0] = \<const0> ;
  assign osc_ontime[15] = \<const0> ;
  assign osc_ontime[14] = \<const0> ;
  assign osc_ontime[13] = \<const0> ;
  assign osc_ontime[12] = \<const0> ;
  assign osc_ontime[11] = \<const0> ;
  assign osc_ontime[10] = \<const0> ;
  assign osc_ontime[9] = \<const0> ;
  assign osc_ontime[8] = \<const0> ;
  assign osc_ontime[7] = \<const0> ;
  assign osc_ontime[6] = \<const0> ;
  assign osc_ontime[5] = \<const0> ;
  assign osc_ontime[4] = \<const0> ;
  assign osc_ontime[3] = \<const0> ;
  assign osc_ontime[2] = \<const0> ;
  assign osc_ontime[1] = \<const0> ;
  assign osc_ontime[0] = \<const0> ;
  assign osc_phase[31] = \<const0> ;
  assign osc_phase[30] = \<const0> ;
  assign osc_phase[29] = \<const0> ;
  assign osc_phase[28] = \<const0> ;
  assign osc_phase[27] = \<const0> ;
  assign osc_phase[26] = \<const0> ;
  assign osc_phase[25] = \<const0> ;
  assign osc_phase[24] = \<const0> ;
  assign osc_phase[23] = \<const0> ;
  assign osc_phase[22] = \<const0> ;
  assign osc_phase[21] = \<const0> ;
  assign osc_phase[20] = \<const0> ;
  assign osc_phase[19] = \<const0> ;
  assign osc_phase[18] = \<const0> ;
  assign osc_phase[17] = \<const0> ;
  assign osc_phase[16] = \<const0> ;
  assign osc_phase[15] = \<const0> ;
  assign osc_phase[14] = \<const0> ;
  assign osc_phase[13] = \<const0> ;
  assign osc_phase[12] = \<const0> ;
  assign osc_phase[11] = \<const0> ;
  assign osc_phase[10] = \<const0> ;
  assign osc_phase[9] = \<const0> ;
  assign osc_phase[8] = \<const0> ;
  assign osc_phase[7] = \<const0> ;
  assign osc_phase[6] = \<const0> ;
  assign osc_phase[5] = \<const0> ;
  assign osc_phase[4] = \<const0> ;
  assign osc_phase[3] = \<const0> ;
  assign osc_phase[2] = \<const0> ;
  assign osc_phase[1] = \<const0> ;
  assign osc_phase[0] = \<const0> ;
  assign param_bram_addr[8] = \<const0> ;
  assign param_bram_addr[7] = \<const0> ;
  assign param_bram_addr[6] = \<const0> ;
  assign param_bram_addr[5] = \<const0> ;
  assign param_bram_addr[4] = \<const0> ;
  assign param_bram_addr[3] = \<const0> ;
  assign param_bram_addr[2] = \<const0> ;
  assign param_bram_addr[1] = \<const0> ;
  assign param_bram_addr[0] = \<const0> ;
  assign state_fifo_en = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
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
