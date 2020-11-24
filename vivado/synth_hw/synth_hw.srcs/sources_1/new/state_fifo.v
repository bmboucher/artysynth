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
    parameter integer WIDTH = 64
)(
    output [WIDTH-1:0] prev_state,
    input [WIDTH-1:0] next_state,
    input clk,
    input rst,
    input en,
    
    output out_rst,
    
    // State FIFO ports
    input wire state_fifo_prog_full,
    output [WIDTH-1:0] state_fifo_dout,  //
    input [WIDTH-1:0] state_fifo_din,
    output wire state_fifo_wr_en,   //
    output wire state_fifo_rd_en,   //
    input wire state_fifo_valid
);
    reg out_rst_reg = 1;
    assign out_rst = rst || out_rst_reg;
    
    always @(posedge clk)
        if (~rst && state_fifo_prog_full) 
            out_rst_reg = 0;

    assign state_fifo_wr_en = (en || ~state_fifo_prog_full) && ~rst;
    assign state_fifo_rd_en = en && state_fifo_prog_full && ~rst;
    assign state_fifo_dout = ~state_fifo_prog_full ? 0 : next_state;
    assign prev_state = state_fifo_valid ? 0 : state_fifo_din;
endmodule