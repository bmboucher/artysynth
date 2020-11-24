// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:multi_oscillator_accum:1.0
// IP Revision: 1

(* X_CORE_INFO = "multi_oscillator_accum,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "top_multi_oscillator_acc_0_0,multi_oscillator_accum,{}" *)
(* CORE_GENERATION_INFO = "top_multi_oscillator_acc_0_0,multi_oscillator_accum,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=multi_oscillator_accum,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FREQ_MULT_WIDTH=16,VIBRATO_WIDTH=16,NUM_VIBRATO=3,BRAM_ADDR_WIDTH=9,BRAM_DATA_WIDTH=64,STATE_WIDTH=64,NUM_OSCILLATORS=500,OSC_PHASE_WIDTH=32,OSC_AMP_WIDTH=16,OSC_ONTIME_WIDTH=16}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module top_multi_oscillator_acc_0_0 (
  clk,
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
  osc_ontime
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [15 : 0] freq_mult;
input wire [47 : 0] vibrato;
output wire [8 : 0] param_bram_addr;
input wire [63 : 0] param_bram_data;
output wire state_fifo_en;
input wire [63 : 0] prev_state;
output wire [63 : 0] next_state;
output wire [8 : 0] osc_index;
output wire [31 : 0] osc_phase;
output wire [15 : 0] osc_amp;
output wire [15 : 0] osc_ontime;

  multi_oscillator_accum #(
    .FREQ_MULT_WIDTH(16),
    .VIBRATO_WIDTH(16),
    .NUM_VIBRATO(3),
    .BRAM_ADDR_WIDTH(9),
    .BRAM_DATA_WIDTH(64),
    .STATE_WIDTH(64),
    .NUM_OSCILLATORS(500),
    .OSC_PHASE_WIDTH(32),
    .OSC_AMP_WIDTH(16),
    .OSC_ONTIME_WIDTH(16)
  ) inst (
    .clk(clk),
    .rst(rst),
    .freq_mult(freq_mult),
    .vibrato(vibrato),
    .param_bram_addr(param_bram_addr),
    .param_bram_data(param_bram_data),
    .state_fifo_en(state_fifo_en),
    .prev_state(prev_state),
    .next_state(next_state),
    .osc_index(osc_index),
    .osc_phase(osc_phase),
    .osc_amp(osc_amp),
    .osc_ontime(osc_ontime)
  );
endmodule
