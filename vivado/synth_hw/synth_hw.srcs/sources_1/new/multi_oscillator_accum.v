`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2020 04:02:30 PM
// Design Name: 
// Module Name: multi_oscillator_accum
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multi_oscillator_accum # (
    parameter integer FREQ_MULT_WIDTH = 16,
    parameter integer VIBRATO_WIDTH = 16,
    parameter integer NUM_VIBRATO = 3,
    parameter integer BRAM_ADDR_WIDTH = 9,
    parameter integer BRAM_DATA_WIDTH = 64,
    parameter integer STATE_WIDTH = 64,
    parameter integer NUM_OSCILLATORS = 500,
    parameter integer OSC_PHASE_WIDTH = 32,
    parameter integer OSC_AMP_WIDTH = 16,
    parameter integer OSC_ONTIME_WIDTH = 16
)
(
    // Clock/reset signals
    input wire clk,
    input wire rst,

    // Global parameters (e.g. AXI registers)
    input [FREQ_MULT_WIDTH-1:0] freq_mult,
    input [(NUM_VIBRATO * VIBRATO_WIDTH - 1):0] vibrato,

    // Parameter BRAM interface
    output [BRAM_ADDR_WIDTH-1:0] param_bram_addr,
    input [BRAM_DATA_WIDTH-1:0] param_bram_data,

    // State FIFO interface
    output wire state_fifo_en,
    input [STATE_WIDTH-1:0] prev_state,
    output [STATE_WIDTH-1:0] next_state,
    
    // Oscillator outputs
    output [$clog2(NUM_OSCILLATORS)-1:0] osc_index,
    output [OSC_PHASE_WIDTH-1:0] osc_phase,
    output [OSC_AMP_WIDTH-1:0] osc_amp,
    output [OSC_ONTIME_WIDTH-1:0] osc_ontime
);

    assign param_bram_addr = 0;
    assign state_fifo_en = 1;
    assign next_state = prev_state;
    assign osc_index = 0;
    assign osc_phase = 0;
    assign osc_amp = 0;
    assign osc_ontime = 0;

endmodule
