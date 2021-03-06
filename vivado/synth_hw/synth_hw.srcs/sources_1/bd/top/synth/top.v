//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Nov 28 11:49:30 2020
//Host        : DESKTOP-VU7H966 running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cpu_mem_imp_K7DDN2
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > top cpu_mem/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  top_dlmb_bram_if_cntlr_2 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  top_dlmb_v10_2 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  top_ilmb_bram_if_cntlr_2 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  top_ilmb_v10_2 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  top_lmb_bram_2 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

module multi_oscillator_imp_15JZR68
   (S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    clk,
    osc_amp,
    osc_index,
    osc_ontime,
    osc_phase,
    rst);
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input clk;
  output [15:0]osc_amp;
  output [8:0]osc_index;
  output [15:0]osc_ontime;
  output [31:0]osc_phase;
  input rst;

  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [3:0]axi_controller_freq_bram_wen;
  wire [111:0]axi_controller_freq_mult;
  wire [9:0]axi_controller_param_bram_addr;
  wire [31:0]axi_controller_param_bram_data;
  wire [63:0]blk_mem_gen_0_doutb;
  wire clk_1;
  wire [63:0]fifo_generator_0_dout;
  wire fifo_generator_0_prog_full;
  wire fifo_generator_0_valid;
  wire [63:0]multi_oscillator_acc_0_next_state;
  wire [15:0]multi_oscillator_acc_0_osc_amp;
  wire [8:0]multi_oscillator_acc_0_osc_index;
  wire [15:0]multi_oscillator_acc_0_osc_ontime;
  wire [31:0]multi_oscillator_acc_0_osc_phase;
  wire [8:0]multi_oscillator_acc_0_param_bram_addr;
  wire multi_oscillator_acc_0_state_fifo_en;
  wire rst_1;
  wire [63:0]state_fifo_0_prev_state;
  wire [63:0]state_fifo_0_state_fifo_dout;
  wire state_fifo_0_state_fifo_rd_en;
  wire state_fifo_0_state_fifo_wr_en;

  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARPROT = S_AXI_arprot[2:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWPROT = S_AXI_awprot[2:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign clk_1 = clk;
  assign osc_amp[15:0] = multi_oscillator_acc_0_osc_amp;
  assign osc_index[8:0] = multi_oscillator_acc_0_osc_index;
  assign osc_ontime[15:0] = multi_oscillator_acc_0_osc_ontime;
  assign osc_phase[31:0] = multi_oscillator_acc_0_osc_phase;
  assign rst_1 = rst;
  top_multi_oscillator_acc_0_0 accumulator
       (.clk(clk_1),
        .freq_mult(axi_controller_freq_mult[15:0]),
        .next_state(multi_oscillator_acc_0_next_state),
        .osc_amp(multi_oscillator_acc_0_osc_amp),
        .osc_index(multi_oscillator_acc_0_osc_index),
        .osc_ontime(multi_oscillator_acc_0_osc_ontime),
        .osc_phase(multi_oscillator_acc_0_osc_phase),
        .param_bram_addr(multi_oscillator_acc_0_param_bram_addr),
        .param_bram_data(blk_mem_gen_0_doutb),
        .prev_state(state_fifo_0_prev_state),
        .rst(rst_1),
        .state_fifo_en(multi_oscillator_acc_0_state_fifo_en),
        .vibrato({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  top_multi_oscillator_axi_0_0 axi_controller
       (.S_AXI_ARADDR(S_AXI_1_ARADDR),
        .S_AXI_ARPROT(S_AXI_1_ARPROT),
        .S_AXI_ARREADY(S_AXI_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_1_ARVALID),
        .S_AXI_AWADDR(S_AXI_1_AWADDR),
        .S_AXI_AWPROT(S_AXI_1_AWPROT),
        .S_AXI_AWREADY(S_AXI_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_1_AWVALID),
        .S_AXI_BREADY(S_AXI_1_BREADY),
        .S_AXI_BRESP(S_AXI_1_BRESP),
        .S_AXI_BVALID(S_AXI_1_BVALID),
        .S_AXI_RDATA(S_AXI_1_RDATA),
        .S_AXI_RREADY(S_AXI_1_RREADY),
        .S_AXI_RRESP(S_AXI_1_RRESP),
        .S_AXI_RVALID(S_AXI_1_RVALID),
        .S_AXI_WDATA(S_AXI_1_WDATA),
        .S_AXI_WREADY(S_AXI_1_WREADY),
        .S_AXI_WSTRB(S_AXI_1_WSTRB),
        .S_AXI_WVALID(S_AXI_1_WVALID),
        .clk(clk_1),
        .freq_mult(axi_controller_freq_mult),
        .param_bram_addr(axi_controller_param_bram_addr),
        .param_bram_data(axi_controller_param_bram_data),
        .param_bram_wen(axi_controller_freq_bram_wen),
        .rst(rst_1));
  top_blk_mem_gen_0_3 param_bram
       (.addra(axi_controller_param_bram_addr),
        .addrb(multi_oscillator_acc_0_param_bram_addr),
        .clka(clk_1),
        .clkb(clk_1),
        .dina(axi_controller_param_bram_data),
        .doutb(blk_mem_gen_0_doutb),
        .rstb(rst_1),
        .wea(axi_controller_freq_bram_wen[0]));
  top_fifo_generator_0_1 state_fifo
       (.clk(clk_1),
        .din(state_fifo_0_state_fifo_dout),
        .dout(fifo_generator_0_dout),
        .prog_full(fifo_generator_0_prog_full),
        .rd_en(state_fifo_0_state_fifo_rd_en),
        .rst(rst_1),
        .valid(fifo_generator_0_valid),
        .wr_en(state_fifo_0_state_fifo_wr_en));
  top_state_fifo_0_0 state_fifo_controller
       (.clk(clk_1),
        .en(multi_oscillator_acc_0_state_fifo_en),
        .next_state(multi_oscillator_acc_0_next_state),
        .prev_state(state_fifo_0_prev_state),
        .rst(rst_1),
        .state_fifo_din(fifo_generator_0_dout),
        .state_fifo_dout(state_fifo_0_state_fifo_dout),
        .state_fifo_prog_full(fifo_generator_0_prog_full),
        .state_fifo_rd_en(state_fifo_0_state_fifo_rd_en),
        .state_fifo_valid(fifo_generator_0_valid),
        .state_fifo_wr_en(state_fifo_0_state_fifo_wr_en));
endmodule

module s00_couplers_imp_Q8MLF3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_board_cnt=6,da_clkrst_cnt=4,da_mb_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (reset,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN top_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire clk_locked;
  wire [31:0]cpu_M_AXI_DP_ARADDR;
  wire [2:0]cpu_M_AXI_DP_ARPROT;
  wire cpu_M_AXI_DP_ARREADY;
  wire cpu_M_AXI_DP_ARVALID;
  wire [31:0]cpu_M_AXI_DP_AWADDR;
  wire [2:0]cpu_M_AXI_DP_AWPROT;
  wire cpu_M_AXI_DP_AWREADY;
  wire cpu_M_AXI_DP_AWVALID;
  wire cpu_M_AXI_DP_BREADY;
  wire [1:0]cpu_M_AXI_DP_BRESP;
  wire cpu_M_AXI_DP_BVALID;
  wire [31:0]cpu_M_AXI_DP_RDATA;
  wire cpu_M_AXI_DP_RREADY;
  wire [1:0]cpu_M_AXI_DP_RRESP;
  wire cpu_M_AXI_DP_RVALID;
  wire [31:0]cpu_M_AXI_DP_WDATA;
  wire cpu_M_AXI_DP_WREADY;
  wire [3:0]cpu_M_AXI_DP_WSTRB;
  wire cpu_M_AXI_DP_WVALID;
  wire [31:0]cpu_axi_periph_M00_AXI_ARADDR;
  wire [2:0]cpu_axi_periph_M00_AXI_ARPROT;
  wire cpu_axi_periph_M00_AXI_ARREADY;
  wire cpu_axi_periph_M00_AXI_ARVALID;
  wire [31:0]cpu_axi_periph_M00_AXI_AWADDR;
  wire [2:0]cpu_axi_periph_M00_AXI_AWPROT;
  wire cpu_axi_periph_M00_AXI_AWREADY;
  wire cpu_axi_periph_M00_AXI_AWVALID;
  wire cpu_axi_periph_M00_AXI_BREADY;
  wire [1:0]cpu_axi_periph_M00_AXI_BRESP;
  wire cpu_axi_periph_M00_AXI_BVALID;
  wire [31:0]cpu_axi_periph_M00_AXI_RDATA;
  wire cpu_axi_periph_M00_AXI_RREADY;
  wire [1:0]cpu_axi_periph_M00_AXI_RRESP;
  wire cpu_axi_periph_M00_AXI_RVALID;
  wire [31:0]cpu_axi_periph_M00_AXI_WDATA;
  wire cpu_axi_periph_M00_AXI_WREADY;
  wire [3:0]cpu_axi_periph_M00_AXI_WSTRB;
  wire cpu_axi_periph_M00_AXI_WVALID;
  wire [0:0]cpu_rst_interconnect_aresetn;
  wire [0:0]cpu_rst_peripheral_reset;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire microblaze_0_debug_DISABLE;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_1_ABUS;
  wire microblaze_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_1_BE;
  wire microblaze_0_dlmb_1_CE;
  wire [0:31]microblaze_0_dlmb_1_READDBUS;
  wire microblaze_0_dlmb_1_READSTROBE;
  wire microblaze_0_dlmb_1_READY;
  wire microblaze_0_dlmb_1_UE;
  wire microblaze_0_dlmb_1_WAIT;
  wire [0:31]microblaze_0_dlmb_1_WRITEDBUS;
  wire microblaze_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_1_ABUS;
  wire microblaze_0_ilmb_1_ADDRSTROBE;
  wire microblaze_0_ilmb_1_CE;
  wire [0:31]microblaze_0_ilmb_1_READDBUS;
  wire microblaze_0_ilmb_1_READSTROBE;
  wire microblaze_0_ilmb_1_READY;
  wire microblaze_0_ilmb_1_UE;
  wire microblaze_0_ilmb_1_WAIT;
  wire reset_0_1;
  wire [0:0]rst_clk_100M_bus_struct_reset;
  wire rst_clk_100M_mb_reset;
  wire sys_clock_1;

  assign reset_0_1 = reset;
  assign sys_clock_1 = sys_clock;
  top_clk_wiz_0_0 clk
       (.clk_in1(sys_clock_1),
        .clk_out1(microblaze_0_Clk),
        .locked(clk_locked),
        .resetn(reset_0_1));
  (* BMM_INFO_PROCESSOR = "microblaze-le > top cpu_mem/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  top_microblaze_0_2 cpu
       (.Byte_Enable(microblaze_0_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_1_CE),
        .DReady(microblaze_0_dlmb_1_READY),
        .DUE(microblaze_0_dlmb_1_UE),
        .DWait(microblaze_0_dlmb_1_WAIT),
        .D_AS(microblaze_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_1_ABUS),
        .Data_Read(microblaze_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Disable(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_1_CE),
        .IFetch(microblaze_0_ilmb_1_READSTROBE),
        .IReady(microblaze_0_ilmb_1_READY),
        .IUE(microblaze_0_ilmb_1_UE),
        .IWAIT(microblaze_0_ilmb_1_WAIT),
        .I_AS(microblaze_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_1_ABUS),
        .Interrupt(1'b0),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(cpu_M_AXI_DP_ARADDR),
        .M_AXI_DP_ARPROT(cpu_M_AXI_DP_ARPROT),
        .M_AXI_DP_ARREADY(cpu_M_AXI_DP_ARREADY),
        .M_AXI_DP_ARVALID(cpu_M_AXI_DP_ARVALID),
        .M_AXI_DP_AWADDR(cpu_M_AXI_DP_AWADDR),
        .M_AXI_DP_AWPROT(cpu_M_AXI_DP_AWPROT),
        .M_AXI_DP_AWREADY(cpu_M_AXI_DP_AWREADY),
        .M_AXI_DP_AWVALID(cpu_M_AXI_DP_AWVALID),
        .M_AXI_DP_BREADY(cpu_M_AXI_DP_BREADY),
        .M_AXI_DP_BRESP(cpu_M_AXI_DP_BRESP),
        .M_AXI_DP_BVALID(cpu_M_AXI_DP_BVALID),
        .M_AXI_DP_RDATA(cpu_M_AXI_DP_RDATA),
        .M_AXI_DP_RREADY(cpu_M_AXI_DP_RREADY),
        .M_AXI_DP_RRESP(cpu_M_AXI_DP_RRESP),
        .M_AXI_DP_RVALID(cpu_M_AXI_DP_RVALID),
        .M_AXI_DP_WDATA(cpu_M_AXI_DP_WDATA),
        .M_AXI_DP_WREADY(cpu_M_AXI_DP_WREADY),
        .M_AXI_DP_WSTRB(cpu_M_AXI_DP_WSTRB),
        .M_AXI_DP_WVALID(cpu_M_AXI_DP_WVALID),
        .Read_Strobe(microblaze_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_100M_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_1_WRITESTROBE));
  top_cpu_axi_periph_0 cpu_axi_periph
       (.ACLK(microblaze_0_Clk),
        .ARESETN(cpu_rst_interconnect_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(cpu_rst_interconnect_aresetn),
        .M00_AXI_araddr(cpu_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arprot(cpu_axi_periph_M00_AXI_ARPROT),
        .M00_AXI_arready(cpu_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(cpu_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(cpu_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awprot(cpu_axi_periph_M00_AXI_AWPROT),
        .M00_AXI_awready(cpu_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(cpu_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(cpu_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(cpu_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(cpu_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(cpu_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(cpu_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(cpu_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(cpu_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(cpu_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(cpu_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(cpu_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(cpu_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(cpu_rst_interconnect_aresetn),
        .S00_AXI_araddr(cpu_M_AXI_DP_ARADDR),
        .S00_AXI_arprot(cpu_M_AXI_DP_ARPROT),
        .S00_AXI_arready(cpu_M_AXI_DP_ARREADY),
        .S00_AXI_arvalid(cpu_M_AXI_DP_ARVALID),
        .S00_AXI_awaddr(cpu_M_AXI_DP_AWADDR),
        .S00_AXI_awprot(cpu_M_AXI_DP_AWPROT),
        .S00_AXI_awready(cpu_M_AXI_DP_AWREADY),
        .S00_AXI_awvalid(cpu_M_AXI_DP_AWVALID),
        .S00_AXI_bready(cpu_M_AXI_DP_BREADY),
        .S00_AXI_bresp(cpu_M_AXI_DP_BRESP),
        .S00_AXI_bvalid(cpu_M_AXI_DP_BVALID),
        .S00_AXI_rdata(cpu_M_AXI_DP_RDATA),
        .S00_AXI_rready(cpu_M_AXI_DP_RREADY),
        .S00_AXI_rresp(cpu_M_AXI_DP_RRESP),
        .S00_AXI_rvalid(cpu_M_AXI_DP_RVALID),
        .S00_AXI_wdata(cpu_M_AXI_DP_WDATA),
        .S00_AXI_wready(cpu_M_AXI_DP_WREADY),
        .S00_AXI_wstrb(cpu_M_AXI_DP_WSTRB),
        .S00_AXI_wvalid(cpu_M_AXI_DP_WVALID));
  top_mdm_1_2 cpu_debug
       (.Dbg_Capture_0(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_0_debug_CLK),
        .Dbg_Disable_0(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  cpu_mem_imp_K7DDN2 cpu_mem
       (.DLMB_abus(microblaze_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_1_BE),
        .DLMB_ce(microblaze_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_1_READY),
        .DLMB_ue(microblaze_0_dlmb_1_UE),
        .DLMB_wait(microblaze_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_1_READY),
        .ILMB_ue(microblaze_0_ilmb_1_UE),
        .ILMB_wait(microblaze_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_100M_bus_struct_reset));
  top_rst_clk_100M_0 cpu_rst
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_100M_bus_struct_reset),
        .dcm_locked(clk_locked),
        .ext_reset_in(reset_0_1),
        .interconnect_aresetn(cpu_rst_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_100M_mb_reset),
        .peripheral_reset(cpu_rst_peripheral_reset),
        .slowest_sync_clk(microblaze_0_Clk));
  multi_oscillator_imp_15JZR68 multi_oscillator
       (.S_AXI_araddr(cpu_axi_periph_M00_AXI_ARADDR),
        .S_AXI_arprot(cpu_axi_periph_M00_AXI_ARPROT),
        .S_AXI_arready(cpu_axi_periph_M00_AXI_ARREADY),
        .S_AXI_arvalid(cpu_axi_periph_M00_AXI_ARVALID),
        .S_AXI_awaddr(cpu_axi_periph_M00_AXI_AWADDR),
        .S_AXI_awprot(cpu_axi_periph_M00_AXI_AWPROT),
        .S_AXI_awready(cpu_axi_periph_M00_AXI_AWREADY),
        .S_AXI_awvalid(cpu_axi_periph_M00_AXI_AWVALID),
        .S_AXI_bready(cpu_axi_periph_M00_AXI_BREADY),
        .S_AXI_bresp(cpu_axi_periph_M00_AXI_BRESP),
        .S_AXI_bvalid(cpu_axi_periph_M00_AXI_BVALID),
        .S_AXI_rdata(cpu_axi_periph_M00_AXI_RDATA),
        .S_AXI_rready(cpu_axi_periph_M00_AXI_RREADY),
        .S_AXI_rresp(cpu_axi_periph_M00_AXI_RRESP),
        .S_AXI_rvalid(cpu_axi_periph_M00_AXI_RVALID),
        .S_AXI_wdata(cpu_axi_periph_M00_AXI_WDATA),
        .S_AXI_wready(cpu_axi_periph_M00_AXI_WREADY),
        .S_AXI_wstrb(cpu_axi_periph_M00_AXI_WSTRB),
        .S_AXI_wvalid(cpu_axi_periph_M00_AXI_WVALID),
        .clk(microblaze_0_Clk),
        .rst(cpu_rst_peripheral_reset));
endmodule

module top_cpu_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire cpu_axi_periph_ACLK_net;
  wire cpu_axi_periph_ARESETN_net;
  wire [31:0]cpu_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]cpu_axi_periph_to_s00_couplers_ARPROT;
  wire cpu_axi_periph_to_s00_couplers_ARREADY;
  wire cpu_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]cpu_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]cpu_axi_periph_to_s00_couplers_AWPROT;
  wire cpu_axi_periph_to_s00_couplers_AWREADY;
  wire cpu_axi_periph_to_s00_couplers_AWVALID;
  wire cpu_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]cpu_axi_periph_to_s00_couplers_BRESP;
  wire cpu_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]cpu_axi_periph_to_s00_couplers_RDATA;
  wire cpu_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]cpu_axi_periph_to_s00_couplers_RRESP;
  wire cpu_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]cpu_axi_periph_to_s00_couplers_WDATA;
  wire cpu_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]cpu_axi_periph_to_s00_couplers_WSTRB;
  wire cpu_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_cpu_axi_periph_ARADDR;
  wire [2:0]s00_couplers_to_cpu_axi_periph_ARPROT;
  wire s00_couplers_to_cpu_axi_periph_ARREADY;
  wire s00_couplers_to_cpu_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_cpu_axi_periph_AWADDR;
  wire [2:0]s00_couplers_to_cpu_axi_periph_AWPROT;
  wire s00_couplers_to_cpu_axi_periph_AWREADY;
  wire s00_couplers_to_cpu_axi_periph_AWVALID;
  wire s00_couplers_to_cpu_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_cpu_axi_periph_BRESP;
  wire s00_couplers_to_cpu_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_cpu_axi_periph_RDATA;
  wire s00_couplers_to_cpu_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_cpu_axi_periph_RRESP;
  wire s00_couplers_to_cpu_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_cpu_axi_periph_WDATA;
  wire s00_couplers_to_cpu_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_cpu_axi_periph_WSTRB;
  wire s00_couplers_to_cpu_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_cpu_axi_periph_ARADDR;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_cpu_axi_periph_ARPROT;
  assign M00_AXI_arvalid = s00_couplers_to_cpu_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_cpu_axi_periph_AWADDR;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_cpu_axi_periph_AWPROT;
  assign M00_AXI_awvalid = s00_couplers_to_cpu_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_cpu_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_cpu_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_cpu_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_cpu_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_cpu_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = cpu_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = cpu_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = cpu_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = cpu_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = cpu_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = cpu_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = cpu_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = cpu_axi_periph_to_s00_couplers_WREADY;
  assign cpu_axi_periph_ACLK_net = M00_ACLK;
  assign cpu_axi_periph_ARESETN_net = M00_ARESETN;
  assign cpu_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign cpu_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign cpu_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign cpu_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign cpu_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign cpu_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign cpu_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign cpu_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign cpu_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign cpu_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign cpu_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_cpu_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_cpu_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_cpu_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_cpu_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_cpu_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_cpu_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_cpu_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_cpu_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_Q8MLF3 s00_couplers
       (.M_ACLK(cpu_axi_periph_ACLK_net),
        .M_ARESETN(cpu_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_cpu_axi_periph_ARADDR),
        .M_AXI_arprot(s00_couplers_to_cpu_axi_periph_ARPROT),
        .M_AXI_arready(s00_couplers_to_cpu_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_cpu_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_cpu_axi_periph_AWADDR),
        .M_AXI_awprot(s00_couplers_to_cpu_axi_periph_AWPROT),
        .M_AXI_awready(s00_couplers_to_cpu_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_cpu_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_cpu_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_cpu_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_cpu_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_cpu_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_cpu_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_cpu_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_cpu_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_cpu_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_cpu_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_cpu_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_cpu_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(cpu_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(cpu_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(cpu_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(cpu_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(cpu_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(cpu_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(cpu_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(cpu_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(cpu_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(cpu_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(cpu_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(cpu_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(cpu_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(cpu_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(cpu_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(cpu_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(cpu_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(cpu_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(cpu_axi_periph_to_s00_couplers_WVALID));
endmodule
