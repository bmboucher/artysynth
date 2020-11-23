`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2020 02:25:17 PM
// Design Name: 
// Module Name: state_fifo
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


module state_fifo # (
    parameter integer WIDTH = 32
)(
    output [WIDTH-1:0] prev_state,
    input [WIDTH-1:0] next_state,
    input clk,
    input rstn, // Active low reset
    output ready, // FIFO has been initialized
    
    // State FIFO ports
    input wire state_fifo_prog_full,
    output [63:0] state_fifo_dout,  //
    input [63:0] state_fifo_din,
    output wire state_fifo_wr_en,   //
    output wire state_fifo_rd_en,   //
    input wire state_fifo_valid,
    output wire state_fifo_rst      //
);
    assign ready = state_fifo_valid;
    assign state_fifo_rst = ~rstn;
    assign state_fifo_wr_en = rstn;
    assign state_fifo_rd_en = state_fifo_prog_full && rstn;
    assign state_fifo_dout = ready ? next_state : 0;
    assign prev_state = ready ? state_fifo_din : 0;
endmodule