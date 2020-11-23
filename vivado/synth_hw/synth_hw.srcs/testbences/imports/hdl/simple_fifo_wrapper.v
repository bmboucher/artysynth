//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Nov 23 12:48:44 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target simple_fifo_wrapper.bd
//Design      : simple_fifo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ns / 10 ps

module tb_simple_fifo();

  reg [63:0] wr_data;
  reg rd_en;
  reg wr_en;
  reg clk;
  reg rst;
    
  wire [63:0]rd_data;
  wire empty;
  wire full;
  wire prog_full;
  wire valid;

  localparam period = 5;
  localparam reset_period = 50;

  simple_fifo uut
       (.FIFO_READ_empty(empty),
        .FIFO_READ_rd_data(rd_data),
        .FIFO_READ_rd_en(rd_en),
        .FIFO_WRITE_full(full),
        .FIFO_WRITE_wr_data(wr_data),
        .FIFO_WRITE_wr_en(wr_en),
        .clk(clk),
        .prog_full(prog_full),
        .rst(rst),
        .valid(valid));
    
    always #period clk = ~clk; 
       
    integer i;
    
    always @(posedge clk) if (prog_full) rd_en = 1;
        
    initial
    begin
        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        wr_data = 0;
        
        #reset_period;
        rst = 0;
        #reset_period;
    
        for (i = 0; i < 512; i = i + 1) begin
            @(posedge clk);
            wr_en = 1;
            wr_data = 10000 + i;
        end
        
        for (i = 0; i < 1024; i = i + 1) @(negedge clk);

        $stop;     
    end
    
    always @(posedge clk) if (valid) wr_data = rd_data + 512;
endmodule
