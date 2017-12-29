// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Mon Dec 18 20:16:23 2017
// Host        : DESKTOP-827S4F3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Xilinx/singel_cpu/project_1/project_1.sim/sim_1/impl/timing/testbench_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD1
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD10
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD11
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD2
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD3
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD4
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD5
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD6
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD7
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD8
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD9
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module adder
   (D,
    Q,
    S,
    \q_reg[10] ,
    \q_reg[14] ,
    \q_reg[18] ,
    \q_reg[22] ,
    \q_reg[26] ,
    \q_reg[30] ,
    \q_reg[31] );
  output [28:0]D;
  input [28:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[10] ;
  input [3:0]\q_reg[14] ;
  input [3:0]\q_reg[18] ;
  input [3:0]\q_reg[22] ;
  input [3:0]\q_reg[26] ;
  input [3:0]\q_reg[30] ;
  input [0:0]\q_reg[31] ;

  wire [28:0]D;
  wire [28:0]Q;
  wire [3:0]S;
  wire numout_carry__0_n_0;
  wire numout_carry__1_n_0;
  wire numout_carry__2_n_0;
  wire numout_carry__3_n_0;
  wire numout_carry__4_n_0;
  wire numout_carry__5_n_0;
  wire numout_carry_n_0;
  wire [3:0]\q_reg[10] ;
  wire [3:0]\q_reg[14] ;
  wire [3:0]\q_reg[18] ;
  wire [3:0]\q_reg[22] ;
  wire [3:0]\q_reg[26] ;
  wire [3:0]\q_reg[30] ;
  wire [0:0]\q_reg[31] ;
  wire [2:0]NLW_numout_carry_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_numout_carry__6_CO_UNCONNECTED;
  wire [3:1]NLW_numout_carry__6_O_UNCONNECTED;

  CARRY4 numout_carry
       (.CI(1'b0),
        .CO({numout_carry_n_0,NLW_numout_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(D[3:0]),
        .S(S));
  CARRY4 numout_carry__0
       (.CI(numout_carry_n_0),
        .CO({numout_carry__0_n_0,NLW_numout_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(D[7:4]),
        .S(\q_reg[10] ));
  CARRY4 numout_carry__1
       (.CI(numout_carry__0_n_0),
        .CO({numout_carry__1_n_0,NLW_numout_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(D[11:8]),
        .S(\q_reg[14] ));
  CARRY4 numout_carry__2
       (.CI(numout_carry__1_n_0),
        .CO({numout_carry__2_n_0,NLW_numout_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(D[15:12]),
        .S(\q_reg[18] ));
  CARRY4 numout_carry__3
       (.CI(numout_carry__2_n_0),
        .CO({numout_carry__3_n_0,NLW_numout_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(D[19:16]),
        .S(\q_reg[22] ));
  CARRY4 numout_carry__4
       (.CI(numout_carry__3_n_0),
        .CO({numout_carry__4_n_0,NLW_numout_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(D[23:20]),
        .S(\q_reg[26] ));
  CARRY4 numout_carry__5
       (.CI(numout_carry__4_n_0),
        .CO({numout_carry__5_n_0,NLW_numout_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(D[27:24]),
        .S(\q_reg[30] ));
  CARRY4 numout_carry__6
       (.CI(numout_carry__5_n_0),
        .CO(NLW_numout_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_numout_carry__6_O_UNCONNECTED[3:1],D[28]}),
        .S({1'b0,1'b0,1'b0,\q_reg[31] }));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module adder_0
   (pcbranchD,
    Q,
    S,
    \q_reg[9] ,
    \q_reg[13] ,
    \q_reg[17] ,
    \q_reg[21] ,
    \q_reg[25] ,
    \q_reg[29] ,
    \q_reg[15] );
  output [28:0]pcbranchD;
  input [28:0]Q;
  input [3:0]S;
  input [3:0]\q_reg[9] ;
  input [3:0]\q_reg[13] ;
  input [3:0]\q_reg[17] ;
  input [3:0]\q_reg[21] ;
  input [3:0]\q_reg[25] ;
  input [3:0]\q_reg[29] ;
  input [1:0]\q_reg[15] ;

  wire [28:0]Q;
  wire [3:0]S;
  wire numout_carry__0_n_0;
  wire numout_carry__1_n_0;
  wire numout_carry__2_n_0;
  wire numout_carry__3_n_0;
  wire numout_carry__4_n_0;
  wire numout_carry__5_n_0;
  wire numout_carry_n_0;
  wire [28:0]pcbranchD;
  wire [3:0]\q_reg[13] ;
  wire [1:0]\q_reg[15] ;
  wire [3:0]\q_reg[17] ;
  wire [3:0]\q_reg[21] ;
  wire [3:0]\q_reg[25] ;
  wire [3:0]\q_reg[29] ;
  wire [3:0]\q_reg[9] ;
  wire [2:0]NLW_numout_carry_CO_UNCONNECTED;
  wire [0:0]NLW_numout_carry_O_UNCONNECTED;
  wire [2:0]NLW_numout_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_numout_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_numout_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_numout_carry__6_O_UNCONNECTED;

  CARRY4 numout_carry
       (.CI(1'b0),
        .CO({numout_carry_n_0,NLW_numout_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O({pcbranchD[2:0],NLW_numout_carry_O_UNCONNECTED[0]}),
        .S(S));
  CARRY4 numout_carry__0
       (.CI(numout_carry_n_0),
        .CO({numout_carry__0_n_0,NLW_numout_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(pcbranchD[6:3]),
        .S(\q_reg[9] ));
  CARRY4 numout_carry__1
       (.CI(numout_carry__0_n_0),
        .CO({numout_carry__1_n_0,NLW_numout_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(pcbranchD[10:7]),
        .S(\q_reg[13] ));
  CARRY4 numout_carry__2
       (.CI(numout_carry__1_n_0),
        .CO({numout_carry__2_n_0,NLW_numout_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(pcbranchD[14:11]),
        .S(\q_reg[17] ));
  CARRY4 numout_carry__3
       (.CI(numout_carry__2_n_0),
        .CO({numout_carry__3_n_0,NLW_numout_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(pcbranchD[18:15]),
        .S(\q_reg[21] ));
  CARRY4 numout_carry__4
       (.CI(numout_carry__3_n_0),
        .CO({numout_carry__4_n_0,NLW_numout_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(pcbranchD[22:19]),
        .S(\q_reg[25] ));
  CARRY4 numout_carry__5
       (.CI(numout_carry__4_n_0),
        .CO({numout_carry__5_n_0,NLW_numout_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(pcbranchD[26:23]),
        .S(\q_reg[29] ));
  CARRY4 numout_carry__6
       (.CI(numout_carry__5_n_0),
        .CO(NLW_numout_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[28]}),
        .O({NLW_numout_carry__6_O_UNCONNECTED[3:2],pcbranchD[28:27]}),
        .S({1'b0,1'b0,\q_reg[15] }));
endmodule

module alu
   (CO,
    data2,
    data5,
    DI,
    S,
    \q_reg[15] ,
    \q_reg[31] ,
    \q_reg[23] ,
    \q_reg[23]_0 ,
    \q_reg[31]_0 ,
    \q_reg[31]_1 ,
    \q_reg[3] ,
    \q_reg[3]_0 ,
    \q_reg[7] ,
    \q_reg[7]_0 ,
    \q_reg[11] ,
    \q_reg[11]_0 ,
    \q_reg[15]_0 ,
    \q_reg[31]_2 ,
    \q_reg[19] ,
    \q_reg[31]_3 ,
    \q_reg[23]_1 ,
    \q_reg[31]_4 ,
    \q_reg[27] ,
    \q_reg[31]_5 ,
    \q_reg[30] ,
    \q_reg[31]_6 ,
    \q_reg[3]_1 ,
    \q_reg[7]_1 ,
    \q_reg[11]_1 ,
    \q_reg[5] ,
    \q_reg[19]_0 ,
    \q_reg[23]_2 ,
    \q_reg[27]_0 ,
    \q_reg[31]_7 );
  output [0:0]CO;
  output [31:0]data2;
  output [31:0]data5;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]\q_reg[15] ;
  input [3:0]\q_reg[31] ;
  input [3:0]\q_reg[23] ;
  input [3:0]\q_reg[23]_0 ;
  input [3:0]\q_reg[31]_0 ;
  input [3:0]\q_reg[31]_1 ;
  input [3:0]\q_reg[3] ;
  input [3:0]\q_reg[3]_0 ;
  input [3:0]\q_reg[7] ;
  input [3:0]\q_reg[7]_0 ;
  input [3:0]\q_reg[11] ;
  input [3:0]\q_reg[11]_0 ;
  input [3:0]\q_reg[15]_0 ;
  input [3:0]\q_reg[31]_2 ;
  input [3:0]\q_reg[19] ;
  input [3:0]\q_reg[31]_3 ;
  input [3:0]\q_reg[23]_1 ;
  input [3:0]\q_reg[31]_4 ;
  input [3:0]\q_reg[27] ;
  input [3:0]\q_reg[31]_5 ;
  input [2:0]\q_reg[30] ;
  input [3:0]\q_reg[31]_6 ;
  input [3:0]\q_reg[3]_1 ;
  input [3:0]\q_reg[7]_1 ;
  input [3:0]\q_reg[11]_1 ;
  input [3:0]\q_reg[5] ;
  input [3:0]\q_reg[19]_0 ;
  input [3:0]\q_reg[23]_2 ;
  input [3:0]\q_reg[27]_0 ;
  input [3:0]\q_reg[31]_7 ;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [3:0]S;
  wire alu_out2_carry__0_n_0;
  wire alu_out2_carry__1_n_0;
  wire alu_out2_carry__2_n_0;
  wire alu_out2_carry__3_n_0;
  wire alu_out2_carry__4_n_0;
  wire alu_out2_carry__5_n_0;
  wire alu_out2_carry_n_0;
  wire alu_out5_carry__0_n_0;
  wire alu_out5_carry__1_n_0;
  wire alu_out5_carry__2_n_0;
  wire alu_out5_carry__3_n_0;
  wire alu_out5_carry__4_n_0;
  wire alu_out5_carry__5_n_0;
  wire alu_out5_carry_n_0;
  wire alu_out8_carry__0_n_0;
  wire alu_out8_carry__1_n_0;
  wire alu_out8_carry_n_0;
  wire [31:0]data2;
  wire [31:0]data5;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[11]_1 ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire [3:0]\q_reg[23]_2 ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[27]_0 ;
  wire [2:0]\q_reg[30] ;
  wire [3:0]\q_reg[31] ;
  wire [3:0]\q_reg[31]_0 ;
  wire [3:0]\q_reg[31]_1 ;
  wire [3:0]\q_reg[31]_2 ;
  wire [3:0]\q_reg[31]_3 ;
  wire [3:0]\q_reg[31]_4 ;
  wire [3:0]\q_reg[31]_5 ;
  wire [3:0]\q_reg[31]_6 ;
  wire [3:0]\q_reg[31]_7 ;
  wire [3:0]\q_reg[3] ;
  wire [3:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire [3:0]\q_reg[5] ;
  wire [3:0]\q_reg[7] ;
  wire [3:0]\q_reg[7]_0 ;
  wire [3:0]\q_reg[7]_1 ;
  wire [2:0]NLW_alu_out2_carry_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out2_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out2_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out5_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out5_carry__6_CO_UNCONNECTED;
  wire [2:0]NLW_alu_out8_carry_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out8_carry_O_UNCONNECTED;
  wire [2:0]NLW_alu_out8_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out8_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_alu_out8_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out8_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_alu_out8_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_alu_out8_carry__2_O_UNCONNECTED;

  CARRY4 alu_out2_carry
       (.CI(1'b0),
        .CO({alu_out2_carry_n_0,NLW_alu_out2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[3] ),
        .O(data2[3:0]),
        .S(\q_reg[3]_0 ));
  CARRY4 alu_out2_carry__0
       (.CI(alu_out2_carry_n_0),
        .CO({alu_out2_carry__0_n_0,NLW_alu_out2_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[7] ),
        .O(data2[7:4]),
        .S(\q_reg[7]_0 ));
  CARRY4 alu_out2_carry__1
       (.CI(alu_out2_carry__0_n_0),
        .CO({alu_out2_carry__1_n_0,NLW_alu_out2_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[11] ),
        .O(data2[11:8]),
        .S(\q_reg[11]_0 ));
  CARRY4 alu_out2_carry__2
       (.CI(alu_out2_carry__1_n_0),
        .CO({alu_out2_carry__2_n_0,NLW_alu_out2_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[15]_0 ),
        .O(data2[15:12]),
        .S(\q_reg[31]_2 ));
  CARRY4 alu_out2_carry__3
       (.CI(alu_out2_carry__2_n_0),
        .CO({alu_out2_carry__3_n_0,NLW_alu_out2_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[19] ),
        .O(data2[19:16]),
        .S(\q_reg[31]_3 ));
  CARRY4 alu_out2_carry__4
       (.CI(alu_out2_carry__3_n_0),
        .CO({alu_out2_carry__4_n_0,NLW_alu_out2_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[23]_1 ),
        .O(data2[23:20]),
        .S(\q_reg[31]_4 ));
  CARRY4 alu_out2_carry__5
       (.CI(alu_out2_carry__4_n_0),
        .CO({alu_out2_carry__5_n_0,NLW_alu_out2_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[27] ),
        .O(data2[27:24]),
        .S(\q_reg[31]_5 ));
  CARRY4 alu_out2_carry__6
       (.CI(alu_out2_carry__5_n_0),
        .CO(NLW_alu_out2_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\q_reg[30] }),
        .O(data2[31:28]),
        .S(\q_reg[31]_6 ));
  CARRY4 alu_out5_carry
       (.CI(1'b0),
        .CO({alu_out5_carry_n_0,NLW_alu_out5_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI(\q_reg[3] ),
        .O(data5[3:0]),
        .S(\q_reg[3]_1 ));
  CARRY4 alu_out5_carry__0
       (.CI(alu_out5_carry_n_0),
        .CO({alu_out5_carry__0_n_0,NLW_alu_out5_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[7] ),
        .O(data5[7:4]),
        .S(\q_reg[7]_1 ));
  CARRY4 alu_out5_carry__1
       (.CI(alu_out5_carry__0_n_0),
        .CO({alu_out5_carry__1_n_0,NLW_alu_out5_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[11] ),
        .O(data5[11:8]),
        .S(\q_reg[11]_1 ));
  CARRY4 alu_out5_carry__2
       (.CI(alu_out5_carry__1_n_0),
        .CO({alu_out5_carry__2_n_0,NLW_alu_out5_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[15]_0 ),
        .O(data5[15:12]),
        .S(\q_reg[5] ));
  CARRY4 alu_out5_carry__3
       (.CI(alu_out5_carry__2_n_0),
        .CO({alu_out5_carry__3_n_0,NLW_alu_out5_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[19] ),
        .O(data5[19:16]),
        .S(\q_reg[19]_0 ));
  CARRY4 alu_out5_carry__4
       (.CI(alu_out5_carry__3_n_0),
        .CO({alu_out5_carry__4_n_0,NLW_alu_out5_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[23]_1 ),
        .O(data5[23:20]),
        .S(\q_reg[23]_2 ));
  CARRY4 alu_out5_carry__5
       (.CI(alu_out5_carry__4_n_0),
        .CO({alu_out5_carry__5_n_0,NLW_alu_out5_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[27] ),
        .O(data5[27:24]),
        .S(\q_reg[27]_0 ));
  CARRY4 alu_out5_carry__6
       (.CI(alu_out5_carry__5_n_0),
        .CO(NLW_alu_out5_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\q_reg[30] }),
        .O(data5[31:28]),
        .S(\q_reg[31]_7 ));
  CARRY4 alu_out8_carry
       (.CI(1'b0),
        .CO({alu_out8_carry_n_0,NLW_alu_out8_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_alu_out8_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 alu_out8_carry__0
       (.CI(alu_out8_carry_n_0),
        .CO({alu_out8_carry__0_n_0,NLW_alu_out8_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[15] ),
        .O(NLW_alu_out8_carry__0_O_UNCONNECTED[3:0]),
        .S(\q_reg[31] ));
  CARRY4 alu_out8_carry__1
       (.CI(alu_out8_carry__0_n_0),
        .CO({alu_out8_carry__1_n_0,NLW_alu_out8_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[23] ),
        .O(NLW_alu_out8_carry__1_O_UNCONNECTED[3:0]),
        .S(\q_reg[23]_0 ));
  CARRY4 alu_out8_carry__2
       (.CI(alu_out8_carry__1_n_0),
        .CO({CO,NLW_alu_out8_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(\q_reg[31]_0 ),
        .O(NLW_alu_out8_carry__2_O_UNCONNECTED[3:0]),
        .S(\q_reg[31]_1 ));
endmodule

module controller
   (D,
    Q,
    \q_reg[1] ,
    \q_reg[31] ,
    data5,
    data2,
    \q_reg[31]_0 ,
    \q_reg[31]_1 ,
    srca2E,
    srcb3E,
    srcb2E,
    \q_reg[0] ,
    CO,
    \q_reg[27] ,
    CLK,
    AR,
    lopt);
  output [31:0]D;
  output [3:0]Q;
  output [2:0]\q_reg[1] ;
  output [1:0]\q_reg[31] ;
  input [31:0]data5;
  input [31:0]data2;
  input \q_reg[31]_0 ;
  input \q_reg[31]_1 ;
  input [30:0]srca2E;
  input [29:0]srcb3E;
  input [0:0]srcb2E;
  input [0:0]\q_reg[0] ;
  input [0:0]CO;
  input [7:0]\q_reg[27] ;
  input CLK;
  input [0:0]AR;
  output lopt;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]Q;
  wire [1:1]d;
  wire [31:0]data2;
  wire [31:0]data5;
  wire lopt;
  wire [0:0]\q_reg[0] ;
  wire [2:0]\q_reg[1] ;
  wire [7:0]\q_reg[27] ;
  wire [1:0]\q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire [30:0]srca2E;
  wire [0:0]srcb2E;
  wire [29:0]srcb3E;

  floprc regE
       (.AR(AR),
        .CLK(CLK),
        .CO(CO),
        .D(D),
        .Q({Q[3],d,Q[2:0]}),
        .data2(data2),
        .data5(data5),
        .\q_reg[0]_0 (\q_reg[0] ),
        .\q_reg[27] (\q_reg[27] ),
        .\q_reg[31] (\q_reg[31]_0 ),
        .\q_reg[31]_0 (\q_reg[31]_1 ),
        .srca2E(srca2E),
        .srcb2E(srcb2E),
        .srcb3E(srcb3E));
  flopr regM
       (.AR(AR),
        .CLK(CLK),
        .D({Q[3],d,Q[0]}),
        .lopt(lopt),
        .\q_reg[1]_0 (\q_reg[1] ));
  flopr__parameterized0 regW
       (.AR(AR),
        .CLK(CLK),
        .\q_reg[2] ({\q_reg[1] [2],\q_reg[1] [0]}),
        .\q_reg[31] (\q_reg[31] ));
endmodule

(* CHECK_LICENSE_TYPE = "data_mem,blk_mem_gen_v8_3_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
module data_mem
   (clka,
    wea,
    addra,
    dina,
    douta,
    pwropt);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  input pwropt;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [31:0]NLW_U0_addra_UNCONNECTED;
  wire [31:0]NLW_U0_addrb_UNCONNECTED;
  wire [31:0]NLW_U0_dinb_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [3:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "data_mem.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  data_mem_blk_mem_gen_v8_3_6 U0
       (.addra({NLW_U0_addra_UNCONNECTED[31:12],addra[11:2],NLW_U0_addra_UNCONNECTED[1:0]}),
        .addrb(NLW_U0_addrb_UNCONNECTED[31:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(dina),
        .dinb(NLW_U0_dinb_UNCONNECTED[31:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .pwropt(pwropt),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[31:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[3:0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(wea),
        .web(NLW_U0_web_UNCONNECTED[3:0]));
endmodule

module datapath
   (Q,
    \q_reg[31] ,
    CO,
    data2,
    srca2E,
    data5,
    srcb3E,
    \q_reg[0] ,
    \q_reg[31]_0 ,
    \q_reg[31]_1 ,
    \q_reg[7] ,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    \q_reg[31]_4 ,
    CLK,
    AR,
    \q_reg[7]_0 ,
    douta,
    \q_reg[2] ,
    \q_reg[1] ,
    D,
    \bbstub_douta[31] ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9,
    lopt_10,
    lopt_11,
    lopt_12,
    lopt_13,
    lopt_14,
    lopt_15,
    lopt_16,
    lopt_17,
    lopt_18,
    lopt_19,
    lopt_20,
    lopt_21,
    lopt_22,
    lopt_23,
    lopt_24,
    lopt_25,
    lopt_26,
    lopt_27,
    lopt_28,
    lopt_29,
    lopt_30,
    lopt_31,
    lopt_32);
  output [0:0]Q;
  output [29:0]\q_reg[31] ;
  output [0:0]CO;
  output [31:0]data2;
  output [30:0]srca2E;
  output [31:0]data5;
  output [29:0]srcb3E;
  output [0:0]\q_reg[0] ;
  output [31:0]\q_reg[31]_0 ;
  output \q_reg[31]_1 ;
  output [7:0]\q_reg[7] ;
  output \q_reg[31]_2 ;
  output \q_reg[31]_3 ;
  output [31:0]\q_reg[31]_4 ;
  input CLK;
  input [0:0]AR;
  input [3:0]\q_reg[7]_0 ;
  input [31:0]douta;
  input [1:0]\q_reg[2] ;
  input [1:0]\q_reg[1] ;
  input [31:0]D;
  input [31:0]\bbstub_douta[31] ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;
  output lopt_9;
  output lopt_10;
  output lopt_11;
  output lopt_12;
  output lopt_13;
  output lopt_14;
  output lopt_15;
  output lopt_16;
  output lopt_17;
  output lopt_18;
  output lopt_19;
  output lopt_20;
  output lopt_21;
  output lopt_22;
  output lopt_23;
  output lopt_24;
  output lopt_25;
  output lopt_26;
  output lopt_27;
  output lopt_28;
  output lopt_29;
  output lopt_30;
  output lopt_31;
  output lopt_32;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]Q;
  wire [31:0]aluoutW;
  wire [31:0]\bbstub_douta[31] ;
  wire [31:0]data2;
  wire [31:0]data5;
  wire [31:0]douta;
  wire equalD;
  wire [5:0]functD;
  wire [25:6]instrD;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_16;
  wire lopt_17;
  wire lopt_18;
  wire lopt_19;
  wire lopt_2;
  wire lopt_20;
  wire lopt_21;
  wire lopt_22;
  wire lopt_23;
  wire lopt_24;
  wire lopt_25;
  wire lopt_26;
  wire lopt_27;
  wire lopt_28;
  wire lopt_29;
  wire lopt_3;
  wire lopt_30;
  wire lopt_31;
  wire lopt_32;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [31:1]p_0_in;
  wire [31:0]p_0_in_0;
  wire [31:0]p_0_in_1;
  wire [31:0]p_1_in;
  wire [31:2]pcbranchD;
  wire [31:2]pcnextFD;
  wire [31:2]pcplus4D;
  wire [31:2]pcplus4F;
  wire pcreg_n_0;
  wire pcreg_n_1;
  wire pcreg_n_2;
  wire pcreg_n_3;
  wire pcreg_n_34;
  wire pcreg_n_35;
  wire pcreg_n_36;
  wire pcreg_n_37;
  wire pcreg_n_38;
  wire pcreg_n_39;
  wire pcreg_n_40;
  wire pcreg_n_41;
  wire pcreg_n_42;
  wire pcreg_n_43;
  wire pcreg_n_44;
  wire pcreg_n_45;
  wire pcreg_n_46;
  wire pcreg_n_47;
  wire pcreg_n_48;
  wire pcreg_n_49;
  wire pcreg_n_50;
  wire pcreg_n_51;
  wire pcreg_n_52;
  wire pcreg_n_53;
  wire pcreg_n_54;
  wire pcreg_n_55;
  wire pcreg_n_56;
  wire pcreg_n_57;
  wire pcreg_n_58;
  wire [0:0]\q_reg[0] ;
  wire [1:0]\q_reg[1] ;
  wire [1:0]\q_reg[2] ;
  wire [29:0]\^q_reg[31] ;
  wire [31:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[31]_2 ;
  wire [31:0]\q_reg[31]_4 ;
  wire [7:0]\q_reg[7] ;
  wire [3:0]\q_reg[7]_0 ;
  wire r1D_n_0;
  wire r1D_n_1;
  wire r1D_n_2;
  wire r1D_n_34;
  wire r1D_n_35;
  wire r1D_n_36;
  wire r1D_n_37;
  wire r1D_n_38;
  wire r1D_n_39;
  wire r1D_n_40;
  wire r1D_n_41;
  wire r1D_n_42;
  wire r1D_n_43;
  wire r1D_n_44;
  wire r1D_n_45;
  wire r1D_n_46;
  wire r1D_n_47;
  wire r1D_n_48;
  wire r1D_n_49;
  wire r1D_n_50;
  wire r1D_n_51;
  wire r1D_n_52;
  wire r1D_n_53;
  wire r1D_n_54;
  wire r1D_n_55;
  wire r1D_n_56;
  wire r1D_n_57;
  wire r1D_n_58;
  wire r2D_n_10;
  wire r2D_n_11;
  wire r2D_n_111;
  wire r2D_n_157;
  wire r2D_n_158;
  wire r2D_n_159;
  wire r2D_n_160;
  wire r2D_n_161;
  wire r2D_n_162;
  wire r2D_n_163;
  wire r2D_n_164;
  wire r2D_n_165;
  wire r2D_n_166;
  wire r2D_n_167;
  wire r2D_n_168;
  wire r2D_n_169;
  wire r2D_n_170;
  wire r2D_n_38;
  wire r2D_n_39;
  wire r2D_n_40;
  wire r2D_n_41;
  wire r2D_n_42;
  wire r2D_n_43;
  wire r2D_n_44;
  wire r2D_n_45;
  wire r2D_n_46;
  wire r2D_n_47;
  wire r2D_n_78;
  wire r2D_n_8;
  wire r2E_n_0;
  wire r2E_n_1;
  wire r2E_n_10;
  wire r2E_n_13;
  wire r2E_n_4;
  wire r2E_n_5;
  wire r2E_n_8;
  wire r2E_n_9;
  wire r2M_n_0;
  wire r2M_n_1;
  wire r2M_n_4;
  wire r2M_n_5;
  wire r2M_n_8;
  wire r2W_n_0;
  wire r2W_n_2;
  wire r3E_n_15;
  wire r3E_n_16;
  wire r3E_n_17;
  wire r3E_n_21;
  wire r3E_n_22;
  wire r3E_n_23;
  wire r3E_n_24;
  wire r3E_n_29;
  wire r3E_n_30;
  wire r3E_n_31;
  wire r3E_n_32;
  wire r3E_n_37;
  wire r3E_n_38;
  wire r3E_n_39;
  wire r3E_n_40;
  wire r3E_n_45;
  wire r3E_n_46;
  wire r3E_n_48;
  wire r3E_n_49;
  wire r3E_n_50;
  wire r3E_n_56;
  wire r3E_n_58;
  wire r3M_n_0;
  wire r3M_n_1;
  wire r3M_n_7;
  wire r3W_n_0;
  wire r3W_n_6;
  wire r4E_n_0;
  wire r4E_n_1;
  wire r4E_n_14;
  wire r4E_n_15;
  wire r4E_n_16;
  wire r4E_n_17;
  wire r4E_n_2;
  wire r4E_n_22;
  wire r4E_n_23;
  wire r4E_n_24;
  wire r4E_n_25;
  wire r4E_n_30;
  wire r4E_n_31;
  wire r4E_n_32;
  wire r4E_n_33;
  wire r4E_n_38;
  wire r4E_n_39;
  wire r4E_n_40;
  wire r4E_n_41;
  wire r4E_n_46;
  wire r4E_n_47;
  wire r4E_n_48;
  wire r4E_n_49;
  wire r4E_n_54;
  wire r4E_n_55;
  wire r4E_n_56;
  wire r4E_n_6;
  wire r4E_n_61;
  wire r4E_n_62;
  wire r4E_n_63;
  wire r4E_n_64;
  wire r4E_n_66;
  wire r4E_n_67;
  wire r4E_n_68;
  wire r4E_n_69;
  wire r4E_n_7;
  wire r4E_n_70;
  wire r4E_n_71;
  wire r4E_n_72;
  wire r4E_n_73;
  wire r4E_n_74;
  wire r4E_n_75;
  wire r4E_n_76;
  wire r4E_n_77;
  wire r4E_n_78;
  wire r4E_n_79;
  wire r4E_n_8;
  wire r4E_n_80;
  wire r4E_n_81;
  wire r4E_n_82;
  wire r4E_n_83;
  wire r4E_n_84;
  wire r4E_n_85;
  wire r4E_n_86;
  wire r4E_n_87;
  wire r4E_n_88;
  wire r4E_n_89;
  wire r4E_n_9;
  wire r4E_n_90;
  wire r4E_n_91;
  wire r4E_n_92;
  wire r5E_n_0;
  wire r5E_n_6;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]resultW;
  wire [2:1]rsE;
  wire [4:0]rtE;
  wire [31:1]signimmE;
  wire [30:0]srca2E;
  wire [31:0]srcaE;
  wire [31:1]srcb2E;
  wire [29:0]srcb3E;
  wire [27:0]srcbE;
  wire [4:0]writeregE;
  wire [4:0]writeregM;
  wire [4:0]writeregW;
  wire [29:29]\NLW_pcreg_q_reg[31]_0_UNCONNECTED ;
  wire \NLW_rf_q_reg[31]_UNCONNECTED ;

  assign \q_reg[31] [9:0] = \^q_reg[31] [9:0];
  alu alu
       (.CO(CO),
        .DI({r4E_n_61,r4E_n_62,r4E_n_63,r4E_n_64}),
        .S({r4E_n_90,r4E_n_91,r4E_n_92,r3E_n_49}),
        .data2(data2),
        .data5(data5),
        .\q_reg[11] (srca2E[11:8]),
        .\q_reg[11]_0 ({r2E_n_0,r2M_n_4,r2E_n_1,r2M_n_5}),
        .\q_reg[11]_1 ({r4E_n_38,r4E_n_39,r4E_n_40,r4E_n_41}),
        .\q_reg[15] ({r4E_n_86,r4E_n_87,r4E_n_88,r4E_n_89}),
        .\q_reg[15]_0 (srca2E[15:12]),
        .\q_reg[19] (srca2E[19:16]),
        .\q_reg[19]_0 ({r4E_n_22,r4E_n_23,r4E_n_24,r4E_n_25}),
        .\q_reg[23] ({r4E_n_78,r4E_n_79,r4E_n_80,r4E_n_81}),
        .\q_reg[23]_0 ({r4E_n_82,r4E_n_83,r4E_n_84,r4E_n_85}),
        .\q_reg[23]_1 (srca2E[23:20]),
        .\q_reg[23]_2 ({r4E_n_14,r4E_n_15,r4E_n_16,r4E_n_17}),
        .\q_reg[27] (srca2E[27:24]),
        .\q_reg[27]_0 ({r4E_n_6,r4E_n_7,r4E_n_8,r4E_n_9}),
        .\q_reg[30] (srca2E[30:28]),
        .\q_reg[31] ({r4E_n_66,r4E_n_67,r4E_n_68,r4E_n_69}),
        .\q_reg[31]_0 ({r3E_n_56,r4E_n_75,r4E_n_76,r4E_n_77}),
        .\q_reg[31]_1 ({r4E_n_70,r4E_n_71,r4E_n_72,r4E_n_73}),
        .\q_reg[31]_2 ({r3E_n_45,r2M_n_0,r2W_n_0,r2M_n_1}),
        .\q_reg[31]_3 ({r3E_n_37,r3E_n_38,r3E_n_39,r3E_n_40}),
        .\q_reg[31]_4 ({r3E_n_29,r3E_n_30,r3E_n_31,r3E_n_32}),
        .\q_reg[31]_5 ({r3E_n_21,r3E_n_22,r3E_n_23,r3E_n_24}),
        .\q_reg[31]_6 ({r4E_n_74,r3E_n_15,r3E_n_16,r3E_n_17}),
        .\q_reg[31]_7 ({r3E_n_58,r4E_n_0,r4E_n_1,r4E_n_2}),
        .\q_reg[3] (srca2E[3:0]),
        .\q_reg[3]_0 ({r2E_n_8,r2E_n_9,r2E_n_10,r3E_n_48}),
        .\q_reg[3]_1 ({r4E_n_54,r4E_n_55,r4E_n_56,r3E_n_46}),
        .\q_reg[5] ({r4E_n_30,r4E_n_31,r4E_n_32,r4E_n_33}),
        .\q_reg[7] (srca2E[7:4]),
        .\q_reg[7]_0 ({r2E_n_4,r2M_n_8,r2W_n_2,r2E_n_5}),
        .\q_reg[7]_1 ({r4E_n_46,r4E_n_47,r4E_n_48,r4E_n_49}));
  eqcmp comp
       (.CO(equalD),
        .D(p_1_in),
        .S({r2D_n_164,r2D_n_165,r2D_n_166,r2D_n_167}),
        .douta(douta),
        .\q_reg[21] ({r2D_n_160,r2D_n_161,r2D_n_162,r2D_n_163}),
        .\q_reg[30] (r2D_n_78),
        .\q_reg[31] ({r2D_n_157,r2D_n_158,r2D_n_159}));
  adder pcadd1
       (.D(pcplus4F[31:3]),
        .Q(\^q_reg[31] [28:0]),
        .S({pcreg_n_0,pcreg_n_1,pcreg_n_2,pcreg_n_3}),
        .\q_reg[10] ({pcreg_n_34,pcreg_n_35,pcreg_n_36,pcreg_n_37}),
        .\q_reg[14] ({pcreg_n_38,pcreg_n_39,pcreg_n_40,pcreg_n_41}),
        .\q_reg[18] ({pcreg_n_42,pcreg_n_43,pcreg_n_44,pcreg_n_45}),
        .\q_reg[22] ({pcreg_n_46,pcreg_n_47,pcreg_n_48,pcreg_n_49}),
        .\q_reg[26] ({pcreg_n_50,pcreg_n_51,pcreg_n_52,pcreg_n_53}),
        .\q_reg[30] ({pcreg_n_54,pcreg_n_55,pcreg_n_56,pcreg_n_57}),
        .\q_reg[31] (pcreg_n_58));
  adder_0 pcadd2
       (.Q(pcplus4D[30:2]),
        .S({r1D_n_0,r1D_n_1,r1D_n_2,pcbranchD[2]}),
        .pcbranchD(pcbranchD[31:3]),
        .\q_reg[13] ({r1D_n_38,r1D_n_39,r1D_n_40,r1D_n_41}),
        .\q_reg[15] ({r2D_n_170,r1D_n_58}),
        .\q_reg[17] ({r1D_n_42,r1D_n_43,r1D_n_44,r1D_n_45}),
        .\q_reg[21] ({r1D_n_46,r1D_n_47,r1D_n_48,r1D_n_49}),
        .\q_reg[25] ({r1D_n_50,r1D_n_51,r1D_n_52,r1D_n_53}),
        .\q_reg[29] ({r1D_n_54,r1D_n_55,r1D_n_56,r1D_n_57}),
        .\q_reg[9] ({r1D_n_34,r1D_n_35,r1D_n_36,r1D_n_37}));
  flopenr pcreg
       (.AR(AR),
        .CLK(CLK),
        .D(pcplus4F[2]),
        .S({pcreg_n_0,pcreg_n_1,pcreg_n_2,pcreg_n_3}),
        .\q_reg[10]_0 ({pcreg_n_34,pcreg_n_35,pcreg_n_36,pcreg_n_37}),
        .\q_reg[14]_0 ({pcreg_n_38,pcreg_n_39,pcreg_n_40,pcreg_n_41}),
        .\q_reg[18]_0 ({pcreg_n_42,pcreg_n_43,pcreg_n_44,pcreg_n_45}),
        .\q_reg[22]_0 ({pcreg_n_46,pcreg_n_47,pcreg_n_48,pcreg_n_49}),
        .\q_reg[26]_0 ({pcreg_n_50,pcreg_n_51,pcreg_n_52,pcreg_n_53}),
        .\q_reg[30]_0 ({pcreg_n_54,pcreg_n_55,pcreg_n_56,pcreg_n_57}),
        .\q_reg[31]_0 ({\NLW_pcreg_q_reg[31]_0_UNCONNECTED [29],\^q_reg[31] [28:0]}),
        .\q_reg[31]_1 (pcreg_n_58),
        .\q_reg[31]_2 (pcnextFD),
        .\q_reg[7]_0 (r2D_n_11));
  flopenr_1 r1D
       (.AR(AR),
        .CLK(CLK),
        .D(pcplus4F),
        .Q(pcplus4D),
        .S({r1D_n_0,r1D_n_1,r1D_n_2,pcbranchD[2]}),
        .\q_reg[13]_0 ({r1D_n_38,r1D_n_39,r1D_n_40,r1D_n_41}),
        .\q_reg[15]_0 ({instrD[15:6],functD}),
        .\q_reg[17]_0 ({r1D_n_42,r1D_n_43,r1D_n_44,r1D_n_45}),
        .\q_reg[21]_0 ({r1D_n_46,r1D_n_47,r1D_n_48,r1D_n_49}),
        .\q_reg[25]_0 ({r1D_n_50,r1D_n_51,r1D_n_52,r1D_n_53}),
        .\q_reg[29]_0 ({r1D_n_54,r1D_n_55,r1D_n_56,r1D_n_57}),
        .\q_reg[31]_0 (r1D_n_58),
        .\q_reg[7]_0 (r2D_n_11),
        .\q_reg[9]_0 ({r1D_n_34,r1D_n_35,r1D_n_36,r1D_n_37}));
  floprc__parameterized0 r1E
       (.AR(AR),
        .CLK(CLK),
        .D(p_0_in_1),
        .Q(srcaE));
  flopr__parameterized1 r1M
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E,\q_reg[0] }),
        .lopt(lopt_1),
        .lopt_1(lopt_2),
        .lopt_10(lopt_11),
        .lopt_11(lopt_12),
        .lopt_12(lopt_13),
        .lopt_13(lopt_14),
        .lopt_14(lopt_15),
        .lopt_15(lopt_16),
        .lopt_16(lopt_17),
        .lopt_17(lopt_18),
        .lopt_18(lopt_19),
        .lopt_19(lopt_20),
        .lopt_2(lopt_3),
        .lopt_20(lopt_21),
        .lopt_21(lopt_22),
        .lopt_22(lopt_23),
        .lopt_23(lopt_24),
        .lopt_24(lopt_25),
        .lopt_25(lopt_26),
        .lopt_26(lopt_27),
        .lopt_27(lopt_28),
        .lopt_28(lopt_29),
        .lopt_29(lopt_30),
        .lopt_3(lopt_4),
        .lopt_30(lopt_31),
        .lopt_31(lopt_32),
        .lopt_4(lopt_5),
        .lopt_5(lopt_6),
        .lopt_6(lopt_7),
        .lopt_7(lopt_8),
        .lopt_8(lopt_9),
        .lopt_9(lopt_10),
        .\q_reg[31]_0 (\q_reg[31]_4 ));
  flopr__parameterized1_2 r1W
       (.AR(AR),
        .CLK(CLK),
        .Q(aluoutW),
        .\q_reg[31]_0 (\q_reg[31]_0 ));
  flopenrc r2D
       (.AR(AR),
        .CLK(CLK),
        .CO(equalD),
        .D({p_0_in[10:3],r2D_n_8,p_0_in[1],r2D_n_10}),
        .Q({instrD,functD}),
        .S({r2D_n_164,r2D_n_165,r2D_n_166,r2D_n_167}),
        .p_0_in({p_0_in[31],p_0_in[14:11]}),
        .pcbranchD(pcbranchD[31:3]),
        .\q_reg[0]_0 (r3M_n_0),
        .\q_reg[0]_1 (\q_reg[2] [0]),
        .\q_reg[16]_0 (r3E_n_50),
        .\q_reg[2]_0 (r2D_n_78),
        .\q_reg[2]_1 (\^q_reg[31] [0]),
        .\q_reg[2]_2 (r3M_n_1),
        .\q_reg[30]_0 (pcplus4F[31:3]),
        .\q_reg[30]_1 (p_1_in),
        .\q_reg[31]_0 (r2D_n_11),
        .\q_reg[31]_1 (pcnextFD),
        .\q_reg[31]_10 ({pcplus4D[31:28],pcplus4D[2]}),
        .\q_reg[31]_11 ({writeregE[4:3],writeregE[0]}),
        .\q_reg[31]_12 (\q_reg[31]_0 ),
        .\q_reg[31]_2 (p_0_in_1),
        .\q_reg[31]_3 (r2D_n_111),
        .\q_reg[31]_4 (p_0_in_0),
        .\q_reg[31]_5 ({r2D_n_157,r2D_n_158,r2D_n_159}),
        .\q_reg[31]_6 ({r2D_n_160,r2D_n_161,r2D_n_162,r2D_n_163}),
        .\q_reg[31]_7 (r2D_n_168),
        .\q_reg[31]_8 (r2D_n_169),
        .\q_reg[31]_9 (r2D_n_170),
        .\q_reg[4]_0 ({r2D_n_38,r2D_n_39,r2D_n_40,r2D_n_41,r2D_n_42}),
        .\q_reg[4]_1 ({r2D_n_43,r2D_n_44,r2D_n_45,r2D_n_46,r2D_n_47}),
        .\q_reg[4]_2 (r5E_n_0),
        .\q_reg[4]_3 ({rtE[4],rtE[2:0]}),
        .\q_reg[4]_4 (writeregM),
        .\q_reg[7]_0 (\q_reg[7] ),
        .\q_reg[7]_1 ({\q_reg[7]_0 [3],\q_reg[7]_0 [1:0]}),
        .rd10(rd10),
        .rd20(rd20),
        .signimmE({signimmE[31],signimmE[13:12]}));
  floprc__parameterized0_3 r2E
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E[31:28],srcb2E[25:16],srcb2E[11],srcb2E[9],srcb2E[7],srcb2E[4:1]}),
        .Q({srcbE[27:26],srcbE[15:12],srcbE[10],srcbE[8],srcbE[6:5],srcbE[0]}),
        .\q_reg[0]_0 (r2E_n_13),
        .\q_reg[11]_0 ({r2E_n_0,r2E_n_1}),
        .\q_reg[11]_1 (srcb3E[10]),
        .\q_reg[11]_2 ({srca2E[11],srca2E[9]}),
        .\q_reg[2]_0 (srcb3E[1]),
        .\q_reg[2]_1 (r3M_n_7),
        .\q_reg[31]_0 ({\q_reg[31]_0 [31:28],\q_reg[31]_0 [25:16],\q_reg[31]_0 [11],\q_reg[31]_0 [9],\q_reg[31]_0 [7],\q_reg[31]_0 [4:1]}),
        .\q_reg[3]_0 ({r2E_n_8,r2E_n_9,r2E_n_10}),
        .\q_reg[3]_1 (srcb3E[2]),
        .\q_reg[3]_2 (srca2E[3:1]),
        .\q_reg[4]_0 (srcb3E[3]),
        .\q_reg[4]_1 (r3W_n_0),
        .\q_reg[5]_0 (\q_reg[7]_0 [2]),
        .\q_reg[7]_0 ({r2E_n_4,r2E_n_5}),
        .\q_reg[7]_1 (srcb3E[6]),
        .\q_reg[7]_2 ({srca2E[7],srca2E[4]}),
        .\q_reg[7]_3 (p_0_in_0),
        .\q_reg[9]_0 (srcb3E[8]),
        .resultW({resultW[31:28],resultW[25:16],resultW[11],resultW[9],resultW[7],resultW[4:1]}),
        .signimmE({signimmE[11],signimmE[9],signimmE[7],signimmE[4:1]}),
        .srcb3E(srcb3E[0]));
  flopr__parameterized1_4 r2M
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E[14],srcb2E[12],srcb2E[10],srcb2E[8],srcb2E[6],\q_reg[0] }),
        .Q(\q_reg[31]_0 ),
        .\q_reg[10]_0 (srcb3E[9]),
        .\q_reg[10]_1 ({srca2E[10],srca2E[8]}),
        .\q_reg[11]_0 ({r2M_n_4,r2M_n_5}),
        .\q_reg[12]_0 (srcb3E[11]),
        .\q_reg[14]_0 (srcb3E[13]),
        .\q_reg[14]_1 ({srca2E[14],srca2E[12]}),
        .\q_reg[14]_2 ({srcbE[14],srcbE[12],srcbE[10],srcbE[8],srcbE[6],srcbE[0]}),
        .\q_reg[15]_0 ({r2M_n_0,r2M_n_1}),
        .\q_reg[1]_0 (D),
        .\q_reg[2]_0 (r3M_n_7),
        .\q_reg[4]_0 (r3W_n_0),
        .\q_reg[5]_0 (\q_reg[7]_0 [2]),
        .\q_reg[6]_0 (srcb3E[5]),
        .\q_reg[6]_1 (srca2E[6]),
        .\q_reg[7]_0 (r2M_n_8),
        .\q_reg[8]_0 (srcb3E[7]),
        .resultW({resultW[14],resultW[12],resultW[10],resultW[8],resultW[6],resultW[0]}),
        .signimmE({signimmE[14],signimmE[12],signimmE[10],signimmE[8],signimmE[6]}));
  flopr__parameterized1_5 r2W
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E[27:26],srcb2E[15],srcb2E[13],srcb2E[5]}),
        .Q({srcbE[27:26],srcbE[15],srcbE[13],srcbE[5]}),
        .\bbstub_douta[31] (\bbstub_douta[31] ),
        .\q_reg[13]_0 (srcb3E[12]),
        .\q_reg[13]_1 (srca2E[13]),
        .\q_reg[15]_0 (r2W_n_0),
        .\q_reg[1]_0 (\q_reg[1] [1]),
        .\q_reg[27]_0 ({\q_reg[31]_0 [27:26],\q_reg[31]_0 [15],\q_reg[31]_0 [13],\q_reg[31]_0 [5]}),
        .\q_reg[2]_0 (r3M_n_7),
        .\q_reg[31]_0 (aluoutW),
        .\q_reg[4]_0 (r3W_n_0),
        .\q_reg[5]_0 (srcb3E[4]),
        .\q_reg[5]_1 (srca2E[5]),
        .\q_reg[5]_2 (\q_reg[7]_0 [2]),
        .\q_reg[7]_0 (r2W_n_2),
        .resultW(resultW),
        .signimmE({signimmE[13],signimmE[5]}));
  floprc__parameterized0_6 r3E
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E[31:15],\q_reg[0] }),
        .Q(Q),
        .S(r3E_n_49),
        .p_0_in({p_0_in[31],p_0_in[14:3],p_0_in[1]}),
        .\q_reg[0]_0 (r3E_n_56),
        .\q_reg[0]_1 (srca2E[0]),
        .\q_reg[15] (r3E_n_45),
        .\q_reg[15]_0 (srca2E[15]),
        .\q_reg[16] (srcb3E[15]),
        .\q_reg[17] (srcb3E[16]),
        .\q_reg[18] (srcb3E[17]),
        .\q_reg[18]_0 (instrD[18:16]),
        .\q_reg[19] ({r3E_n_37,r3E_n_38,r3E_n_39,r3E_n_40}),
        .\q_reg[19]_0 (srcb3E[18]),
        .\q_reg[19]_1 (srca2E[19:16]),
        .\q_reg[1]_0 (r2E_n_13),
        .\q_reg[20] (srcb3E[19]),
        .\q_reg[21] (srcb3E[20]),
        .\q_reg[22] (srcb3E[21]),
        .\q_reg[23] ({r3E_n_29,r3E_n_30,r3E_n_31,r3E_n_32}),
        .\q_reg[23]_0 (srcb3E[22]),
        .\q_reg[23]_1 (srca2E[23:20]),
        .\q_reg[24] (srcb3E[23]),
        .\q_reg[25] (srcb3E[24]),
        .\q_reg[26] (srcb3E[25]),
        .\q_reg[27] ({r3E_n_21,r3E_n_22,r3E_n_23,r3E_n_24}),
        .\q_reg[27]_0 (srcb3E[26]),
        .\q_reg[27]_1 (srca2E[27:24]),
        .\q_reg[28] (srcb3E[27]),
        .\q_reg[29] (srcb3E[28]),
        .\q_reg[2]_0 ({r2D_n_8,r2D_n_10}),
        .\q_reg[30] (srcb3E[29]),
        .\q_reg[30]_0 (srca2E[30:28]),
        .\q_reg[31]_0 ({r3E_n_15,r3E_n_16,r3E_n_17}),
        .\q_reg[31]_1 (r3E_n_50),
        .\q_reg[31]_2 (\q_reg[31]_2 ),
        .\q_reg[31]_3 (r3E_n_58),
        .\q_reg[31]_4 (\q_reg[31]_1 ),
        .\q_reg[3]_0 (r3E_n_46),
        .\q_reg[3]_1 (r3E_n_48),
        .\q_reg[4]_0 (writeregE),
        .\q_reg[4]_1 (rtE),
        .\q_reg[5]_0 (\q_reg[7]_0 [2:1]),
        .signimmE({signimmE[31],signimmE[14:1]}),
        .srcb3E(srcb3E[14]));
  flopr__parameterized2 r3M
       (.AR(AR),
        .CLK(CLK),
        .D(writeregE),
        .Q(instrD[25:21]),
        .\q_reg[22] (r2D_n_111),
        .\q_reg[27] (r3M_n_7),
        .\q_reg[2]_0 (\q_reg[2] ),
        .\q_reg[31] (r3M_n_0),
        .\q_reg[31]_0 (r3M_n_1),
        .\q_reg[3]_0 (r2D_n_168),
        .\q_reg[3]_1 (r5E_n_6),
        .\q_reg[4]_0 (writeregM),
        .\q_reg[4]_1 (rtE));
  flopr__parameterized2_7 r3W
       (.AR(AR),
        .CLK(CLK),
        .D(writeregM),
        .Q(writeregW),
        .\q_reg[0]_0 (\q_reg[1] [0]),
        .\q_reg[27] (r3W_n_0),
        .\q_reg[2]_0 (r3W_n_6),
        .\q_reg[2]_1 (rsE),
        .\q_reg[3]_0 (r5E_n_6),
        .\q_reg[4]_0 (rtE));
  floprc__parameterized1 r4E
       (.AR(AR),
        .CLK(CLK),
        .D({srcb2E[15],srcb2E[1],\q_reg[0] }),
        .DI({r4E_n_61,r4E_n_62,r4E_n_63,r4E_n_64}),
        .Q(Q),
        .S({r4E_n_90,r4E_n_91,r4E_n_92}),
        .\q_reg[0]_0 ({r4E_n_66,r4E_n_67,r4E_n_68,r4E_n_69}),
        .\q_reg[0]_1 ({r4E_n_70,r4E_n_71,r4E_n_72,r4E_n_73}),
        .\q_reg[0]_2 ({r4E_n_75,r4E_n_76,r4E_n_77}),
        .\q_reg[0]_3 ({r4E_n_78,r4E_n_79,r4E_n_80,r4E_n_81}),
        .\q_reg[0]_4 ({r4E_n_82,r4E_n_83,r4E_n_84,r4E_n_85}),
        .\q_reg[0]_5 ({r4E_n_86,r4E_n_87,r4E_n_88,r4E_n_89}),
        .\q_reg[0]_6 (\q_reg[2] [0]),
        .\q_reg[11] ({r4E_n_38,r4E_n_39,r4E_n_40,r4E_n_41}),
        .\q_reg[11]_0 (srca2E[11:8]),
        .\q_reg[15] ({r4E_n_30,r4E_n_31,r4E_n_32,r4E_n_33}),
        .\q_reg[15]_0 (srca2E[15:12]),
        .\q_reg[19] ({r4E_n_22,r4E_n_23,r4E_n_24,r4E_n_25}),
        .\q_reg[19]_0 (srca2E[19:16]),
        .\q_reg[23] ({r4E_n_14,r4E_n_15,r4E_n_16,r4E_n_17}),
        .\q_reg[23]_0 (srca2E[23:20]),
        .\q_reg[25] ({r2D_n_43,r2D_n_44,r2D_n_45,r2D_n_46,r2D_n_47}),
        .\q_reg[27] ({r4E_n_6,r4E_n_7,r4E_n_8,r4E_n_9}),
        .\q_reg[27]_0 (srca2E[27:24]),
        .\q_reg[2]_0 (rsE),
        .\q_reg[2]_1 (r3W_n_6),
        .\q_reg[30] (srca2E[30:28]),
        .\q_reg[31] ({r4E_n_0,r4E_n_1,r4E_n_2}),
        .\q_reg[31]_0 (\q_reg[31]_1 ),
        .\q_reg[31]_1 (r4E_n_74),
        .\q_reg[31]_2 (srcaE),
        .\q_reg[31]_3 (\q_reg[31]_0 ),
        .\q_reg[31]_4 (\q_reg[31]_2 ),
        .\q_reg[3]_0 ({r4E_n_54,r4E_n_55,r4E_n_56}),
        .\q_reg[3]_1 (srca2E[3:0]),
        .\q_reg[4]_0 ({writeregW[4:3],writeregW[1:0]}),
        .\q_reg[4]_1 (writeregM),
        .\q_reg[5] (\q_reg[7]_0 [2]),
        .\q_reg[7] ({r4E_n_46,r4E_n_47,r4E_n_48,r4E_n_49}),
        .\q_reg[7]_0 (srca2E[7:4]),
        .resultW(resultW),
        .signimmE({signimmE[31],signimmE[1]}),
        .srcb3E(srcb3E));
  floprc__parameterized1_8 r5E
       (.AR(AR),
        .CLK(CLK),
        .D({r2D_n_38,r2D_n_39,r2D_n_40,r2D_n_41,r2D_n_42}),
        .Q(rtE),
        .\q_reg[18] (r2D_n_169),
        .\q_reg[25] (instrD[25:19]),
        .\q_reg[27] (r5E_n_6),
        .\q_reg[31] (r5E_n_0));
  regfile rf
       (.CLK(CLK),
        .Q(instrD[25:16]),
        .lopt(lopt),
        .\q_reg[0] (\q_reg[1] [0]),
        .\q_reg[31] (\NLW_rf_q_reg[31]_UNCONNECTED ),
        .\q_reg[4] (writeregW),
        .rd10(rd10),
        .rd20(rd20),
        .resultW(resultW));
endmodule

module eqcmp
   (CO,
    D,
    S,
    \q_reg[21] ,
    \q_reg[31] ,
    \q_reg[30] ,
    douta);
  output [0:0]CO;
  output [31:0]D;
  input [3:0]S;
  input [3:0]\q_reg[21] ;
  input [2:0]\q_reg[31] ;
  input \q_reg[30] ;
  input [31:0]douta;

  wire [0:0]CO;
  wire [31:0]D;
  wire [3:0]S;
  wire [31:0]douta;
  wire [3:0]\q_reg[21] ;
  wire \q_reg[30] ;
  wire [2:0]\q_reg[31] ;
  wire y1_carry__0_n_0;
  wire y1_carry_n_0;
  wire [2:0]NLW_y1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_y1_carry_O_UNCONNECTED;
  wire [2:0]NLW_y1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_y1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_y1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_y1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[0]_i_1__8 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[10]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[11]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[12]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[13]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[14]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[15]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[16]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[17]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[18]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[19]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[1]_i_1__8 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[20]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[21]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[22]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[23]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[24]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[25]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[26]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[27]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[28]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[29]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[2]_i_1__9 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[30]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[30]),
        .O(D[30]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[31]_i_2__4 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[3]_i_1__9 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[4]_i_1__9 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[5]_i_1__6 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[6]_i_1__6 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[7]_i_1__6 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[8]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \q[9]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[30] ),
        .I2(douta[9]),
        .O(D[9]));
  CARRY4 y1_carry
       (.CI(1'b0),
        .CO({y1_carry_n_0,NLW_y1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_y1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 y1_carry__0
       (.CI(y1_carry_n_0),
        .CO({y1_carry__0_n_0,NLW_y1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_y1_carry__0_O_UNCONNECTED[3:0]),
        .S(\q_reg[21] ));
  CARRY4 y1_carry__1
       (.CI(y1_carry__0_n_0),
        .CO({NLW_y1_carry__1_CO_UNCONNECTED[3],CO,NLW_y1_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_y1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,\q_reg[31] }));
endmodule

module flopenr
   (S,
    \q_reg[31]_0 ,
    \q_reg[10]_0 ,
    \q_reg[14]_0 ,
    \q_reg[18]_0 ,
    \q_reg[22]_0 ,
    \q_reg[26]_0 ,
    \q_reg[30]_0 ,
    \q_reg[31]_1 ,
    D,
    \q_reg[7]_0 ,
    \q_reg[31]_2 ,
    CLK,
    AR);
  output [3:0]S;
  output [29:0]\q_reg[31]_0 ;
  output [3:0]\q_reg[10]_0 ;
  output [3:0]\q_reg[14]_0 ;
  output [3:0]\q_reg[18]_0 ;
  output [3:0]\q_reg[22]_0 ;
  output [3:0]\q_reg[26]_0 ;
  output [3:0]\q_reg[30]_0 ;
  output [0:0]\q_reg[31]_1 ;
  output [0:0]D;
  input \q_reg[7]_0 ;
  input [29:0]\q_reg[31]_2 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [29:0]\^q_reg[31]_0 ;
  wire [29:0]\q_reg[31]_2 ;
  wire \q_reg[7]_0 ;

  assign S[3:0] = \^q_reg[31]_0 [4:1];
  assign \q_reg[10]_0 [3:0] = \^q_reg[31]_0 [8:5];
  assign \q_reg[14]_0 [3:0] = \^q_reg[31]_0 [12:9];
  assign \q_reg[18]_0 [3:0] = \^q_reg[31]_0 [16:13];
  assign \q_reg[22]_0 [3:0] = \^q_reg[31]_0 [20:17];
  assign \q_reg[26]_0 [3:0] = \^q_reg[31]_0 [24:21];
  assign \q_reg[30]_0 [3:0] = \^q_reg[31]_0 [28:25];
  assign \q_reg[31]_0 [28:0] = \^q_reg[31]_0 [28:0];
  assign \q_reg[31]_1 [0] = \^q_reg[31]_0 [29];
  LUT1 #(
    .INIT(2'h1)) 
    \q[2]_i_1 
       (.I0(\^q_reg[31]_0 [0]),
        .O(D));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [8]),
        .Q(\^q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [9]),
        .Q(\^q_reg[31]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [10]),
        .Q(\^q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [11]),
        .Q(\^q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [12]),
        .Q(\^q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [13]),
        .Q(\^q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [14]),
        .Q(\^q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [15]),
        .Q(\^q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [16]),
        .Q(\^q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [17]),
        .Q(\^q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [18]),
        .Q(\^q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [19]),
        .Q(\^q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [20]),
        .Q(\^q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [21]),
        .Q(\^q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [22]),
        .Q(\^q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [23]),
        .Q(\^q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [24]),
        .Q(\^q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [25]),
        .Q(\^q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [26]),
        .Q(\^q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [27]),
        .Q(\^q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [0]),
        .Q(\^q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [28]),
        .Q(\^q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [29]),
        .Q(\^q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [1]),
        .Q(\^q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [2]),
        .Q(\^q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [3]),
        .Q(\^q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [4]),
        .Q(\^q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [5]),
        .Q(\^q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [6]),
        .Q(\^q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(\q_reg[31]_2 [7]),
        .Q(\^q_reg[31]_0 [7]));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module flopenr_1
   (S,
    Q,
    \q_reg[9]_0 ,
    \q_reg[13]_0 ,
    \q_reg[17]_0 ,
    \q_reg[21]_0 ,
    \q_reg[25]_0 ,
    \q_reg[29]_0 ,
    \q_reg[31]_0 ,
    \q_reg[15]_0 ,
    \q_reg[7]_0 ,
    D,
    CLK,
    AR);
  output [3:0]S;
  output [29:0]Q;
  output [3:0]\q_reg[9]_0 ;
  output [3:0]\q_reg[13]_0 ;
  output [3:0]\q_reg[17]_0 ;
  output [3:0]\q_reg[21]_0 ;
  output [3:0]\q_reg[25]_0 ;
  output [3:0]\q_reg[29]_0 ;
  output [0:0]\q_reg[31]_0 ;
  input [15:0]\q_reg[15]_0 ;
  input \q_reg[7]_0 ;
  input [29:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [29:0]D;
  wire [29:0]Q;
  wire [3:0]S;
  wire [3:0]\q_reg[13]_0 ;
  wire [15:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[17]_0 ;
  wire [3:0]\q_reg[21]_0 ;
  wire [3:0]\q_reg[25]_0 ;
  wire [3:0]\q_reg[29]_0 ;
  wire [0:0]\q_reg[31]_0 ;
  wire \q_reg[7]_0 ;
  wire [3:0]\q_reg[9]_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__0_i_1
       (.I0(Q[7]),
        .I1(\q_reg[15]_0 [7]),
        .O(\q_reg[9]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__0_i_2
       (.I0(Q[6]),
        .I1(\q_reg[15]_0 [6]),
        .O(\q_reg[9]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__0_i_3
       (.I0(Q[5]),
        .I1(\q_reg[15]_0 [5]),
        .O(\q_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__0_i_4
       (.I0(Q[4]),
        .I1(\q_reg[15]_0 [4]),
        .O(\q_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__1_i_1
       (.I0(Q[11]),
        .I1(\q_reg[15]_0 [11]),
        .O(\q_reg[13]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__1_i_2
       (.I0(Q[10]),
        .I1(\q_reg[15]_0 [10]),
        .O(\q_reg[13]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__1_i_3
       (.I0(Q[9]),
        .I1(\q_reg[15]_0 [9]),
        .O(\q_reg[13]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__1_i_4
       (.I0(Q[8]),
        .I1(\q_reg[15]_0 [8]),
        .O(\q_reg[13]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__2_i_1
       (.I0(Q[15]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[17]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__2_i_2
       (.I0(Q[14]),
        .I1(\q_reg[15]_0 [14]),
        .O(\q_reg[17]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__2_i_3
       (.I0(Q[13]),
        .I1(\q_reg[15]_0 [13]),
        .O(\q_reg[17]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__2_i_4
       (.I0(Q[12]),
        .I1(\q_reg[15]_0 [12]),
        .O(\q_reg[17]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__3_i_1
       (.I0(Q[19]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[21]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__3_i_2
       (.I0(Q[18]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[21]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__3_i_3
       (.I0(Q[17]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[21]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__3_i_4
       (.I0(Q[16]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[21]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__4_i_1
       (.I0(Q[23]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[25]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__4_i_2
       (.I0(Q[22]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[25]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__4_i_3
       (.I0(Q[21]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[25]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__4_i_4
       (.I0(Q[20]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[25]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__5_i_1
       (.I0(Q[27]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[29]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__5_i_2
       (.I0(Q[26]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[29]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__5_i_3
       (.I0(Q[25]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[29]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__5_i_4
       (.I0(Q[24]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[29]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__6_i_2
       (.I0(Q[28]),
        .I1(\q_reg[15]_0 [15]),
        .O(\q_reg[31]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry_i_1
       (.I0(Q[3]),
        .I1(\q_reg[15]_0 [3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry_i_2
       (.I0(Q[2]),
        .I1(\q_reg[15]_0 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry_i_3
       (.I0(Q[1]),
        .I1(\q_reg[15]_0 [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    numout_carry_i_4
       (.I0(Q[0]),
        .I1(\q_reg[15]_0 [0]),
        .O(S[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\q_reg[7]_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module flopenrc
   (D,
    \q_reg[31]_0 ,
    Q,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[31]_1 ,
    \q_reg[2]_0 ,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    \q_reg[31]_4 ,
    p_0_in,
    \q_reg[7]_0 ,
    \q_reg[31]_5 ,
    \q_reg[31]_6 ,
    S,
    \q_reg[31]_7 ,
    \q_reg[31]_8 ,
    \q_reg[31]_9 ,
    CO,
    pcbranchD,
    \q_reg[30]_0 ,
    \q_reg[31]_10 ,
    \q_reg[2]_1 ,
    rd10,
    rd20,
    \q_reg[4]_2 ,
    \q_reg[7]_1 ,
    \q_reg[2]_2 ,
    \q_reg[16]_0 ,
    \q_reg[31]_11 ,
    \q_reg[4]_3 ,
    signimmE,
    \q_reg[31]_12 ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[4]_4 ,
    \q_reg[30]_1 ,
    CLK,
    AR);
  output [10:0]D;
  output \q_reg[31]_0 ;
  output [25:0]Q;
  output [4:0]\q_reg[4]_0 ;
  output [4:0]\q_reg[4]_1 ;
  output [29:0]\q_reg[31]_1 ;
  output \q_reg[2]_0 ;
  output [31:0]\q_reg[31]_2 ;
  output \q_reg[31]_3 ;
  output [31:0]\q_reg[31]_4 ;
  output [4:0]p_0_in;
  output [7:0]\q_reg[7]_0 ;
  output [2:0]\q_reg[31]_5 ;
  output [3:0]\q_reg[31]_6 ;
  output [3:0]S;
  output \q_reg[31]_7 ;
  output \q_reg[31]_8 ;
  output [0:0]\q_reg[31]_9 ;
  input [0:0]CO;
  input [28:0]pcbranchD;
  input [28:0]\q_reg[30]_0 ;
  input [4:0]\q_reg[31]_10 ;
  input [0:0]\q_reg[2]_1 ;
  input [31:0]rd10;
  input [31:0]rd20;
  input \q_reg[4]_2 ;
  input [2:0]\q_reg[7]_1 ;
  input \q_reg[2]_2 ;
  input \q_reg[16]_0 ;
  input [2:0]\q_reg[31]_11 ;
  input [3:0]\q_reg[4]_3 ;
  input [2:0]signimmE;
  input [31:0]\q_reg[31]_12 ;
  input \q_reg[0]_0 ;
  input [0:0]\q_reg[0]_1 ;
  input [4:0]\q_reg[4]_4 ;
  input [31:0]\q_reg[30]_1 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [10:0]D;
  wire [25:0]Q;
  wire [3:0]S;
  wire [5:0]opD;
  wire [4:0]p_0_in;
  wire [28:0]pcbranchD;
  wire \q[0]_i_2_n_0 ;
  wire \q[1]_i_2_n_0 ;
  wire \q[2]_i_2__0_n_0 ;
  wire \q[2]_i_3_n_0 ;
  wire \q[31]_i_11_n_0 ;
  wire \q[31]_i_13_n_0 ;
  wire \q[31]_i_16_n_0 ;
  wire \q[31]_i_17_n_0 ;
  wire \q[31]_i_18_n_0 ;
  wire \q[31]_i_1__5_n_0 ;
  wire \q[31]_i_2_n_0 ;
  wire \q[31]_i_5_n_0 ;
  wire \q[31]_i_6_n_0 ;
  wire \q[4]_i_2_n_0 ;
  wire \q[7]_i_2__0_n_0 ;
  wire \q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire \q_reg[16]_0 ;
  wire \q_reg[2]_0 ;
  wire [0:0]\q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire [28:0]\q_reg[30]_0 ;
  wire [31:0]\q_reg[30]_1 ;
  wire \q_reg[31]_0 ;
  wire [29:0]\q_reg[31]_1 ;
  wire [4:0]\q_reg[31]_10 ;
  wire [2:0]\q_reg[31]_11 ;
  wire [31:0]\q_reg[31]_12 ;
  wire [31:0]\q_reg[31]_2 ;
  wire \q_reg[31]_3 ;
  wire [31:0]\q_reg[31]_4 ;
  wire [2:0]\q_reg[31]_5 ;
  wire [3:0]\q_reg[31]_6 ;
  wire \q_reg[31]_7 ;
  wire \q_reg[31]_8 ;
  wire [0:0]\q_reg[31]_9 ;
  wire [4:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire \q_reg[4]_2 ;
  wire [3:0]\q_reg[4]_3 ;
  wire [4:0]\q_reg[4]_4 ;
  wire [7:0]\q_reg[7]_0 ;
  wire [2:0]\q_reg[7]_1 ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [2:0]signimmE;
  wire y1_carry__0_i_10_n_0;
  wire y1_carry__0_i_11_n_0;
  wire y1_carry__0_i_12_n_0;
  wire y1_carry__0_i_13_n_0;
  wire y1_carry__0_i_14_n_0;
  wire y1_carry__0_i_15_n_0;
  wire y1_carry__0_i_16_n_0;
  wire y1_carry__0_i_17_n_0;
  wire y1_carry__0_i_18_n_0;
  wire y1_carry__0_i_19_n_0;
  wire y1_carry__0_i_20_n_0;
  wire y1_carry__0_i_21_n_0;
  wire y1_carry__0_i_22_n_0;
  wire y1_carry__0_i_23_n_0;
  wire y1_carry__0_i_24_n_0;
  wire y1_carry__0_i_25_n_0;
  wire y1_carry__0_i_26_n_0;
  wire y1_carry__0_i_27_n_0;
  wire y1_carry__0_i_28_n_0;
  wire y1_carry__0_i_5_n_0;
  wire y1_carry__0_i_6_n_0;
  wire y1_carry__0_i_7_n_0;
  wire y1_carry__0_i_8_n_0;
  wire y1_carry__0_i_9_n_0;
  wire y1_carry__1_i_10_n_0;
  wire y1_carry__1_i_11_n_0;
  wire y1_carry__1_i_12_n_0;
  wire y1_carry__1_i_13_n_0;
  wire y1_carry__1_i_14_n_0;
  wire y1_carry__1_i_15_n_0;
  wire y1_carry__1_i_16_n_0;
  wire y1_carry__1_i_17_n_0;
  wire y1_carry__1_i_18_n_0;
  wire y1_carry__1_i_19_n_0;
  wire y1_carry__1_i_20_n_0;
  wire y1_carry__1_i_21_n_0;
  wire y1_carry__1_i_4_n_0;
  wire y1_carry__1_i_5_n_0;
  wire y1_carry__1_i_6_n_0;
  wire y1_carry__1_i_8_n_0;
  wire y1_carry__1_i_9_n_0;
  wire y1_carry_i_10_n_0;
  wire y1_carry_i_11_n_0;
  wire y1_carry_i_12_n_0;
  wire y1_carry_i_13_n_0;
  wire y1_carry_i_14_n_0;
  wire y1_carry_i_15_n_0;
  wire y1_carry_i_16_n_0;
  wire y1_carry_i_17_n_0;
  wire y1_carry_i_18_n_0;
  wire y1_carry_i_19_n_0;
  wire y1_carry_i_20_n_0;
  wire y1_carry_i_21_n_0;
  wire y1_carry_i_22_n_0;
  wire y1_carry_i_23_n_0;
  wire y1_carry_i_24_n_0;
  wire y1_carry_i_25_n_0;
  wire y1_carry_i_26_n_0;
  wire y1_carry_i_27_n_0;
  wire y1_carry_i_28_n_0;
  wire y1_carry_i_29_n_0;
  wire y1_carry_i_5_n_0;
  wire y1_carry_i_6_n_0;
  wire y1_carry_i_7_n_0;
  wire y1_carry_i_8_n_0;
  wire y1_carry_i_9_n_0;

  LUT2 #(
    .INIT(4'h6)) 
    numout_carry__6_i_1
       (.I0(Q[15]),
        .I1(\q_reg[31]_10 [4]),
        .O(\q_reg[31]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[0]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[0]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[0]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[0]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[0]_i_1__1 
       (.I0(Q[21]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[0]_i_1__2 
       (.I0(Q[16]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \q[0]_i_1__3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(\q_reg[31]_0 ),
        .I3(\q[2]_i_3_n_0 ),
        .I4(\q[0]_i_2_n_0 ),
        .O(\q_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[0]_i_1__7 
       (.I0(\q_reg[31]_0 ),
        .I1(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFBDF)) 
    \q[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[10]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[10]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[10]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[10]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_1__1 
       (.I0(Q[10]),
        .I1(\q_reg[31]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[10]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[7]),
        .I3(\q_reg[30]_0 [7]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[8]),
        .O(\q_reg[31]_1 [8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[11]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[11]),
        .O(\q_reg[31]_2 [11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[11]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[11]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_1__1 
       (.I0(Q[11]),
        .I1(\q_reg[31]_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[11]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[8]),
        .I3(\q_reg[30]_0 [8]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[9]),
        .O(\q_reg[31]_1 [9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[12]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[12]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[12]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[12]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [12]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[12]_i_1__1 
       (.I0(Q[12]),
        .I1(\q_reg[31]_0 ),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[12]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[9]),
        .I3(\q_reg[30]_0 [9]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[10]),
        .O(\q_reg[31]_1 [10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[13]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[13]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [13]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[13]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[13]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[13]_i_1__1 
       (.I0(Q[13]),
        .I1(\q_reg[31]_0 ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[13]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[10]),
        .I3(\q_reg[30]_0 [10]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[11]),
        .O(\q_reg[31]_1 [11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[14]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[14]),
        .O(\q_reg[31]_2 [14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[14]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[14]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [14]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[14]_i_1__1 
       (.I0(Q[14]),
        .I1(\q_reg[31]_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[14]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[11]),
        .I3(\q_reg[30]_0 [11]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[12]),
        .O(\q_reg[31]_1 [12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[15]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[15]),
        .O(\q_reg[31]_2 [15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[15]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[15]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [15]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[15]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[12]),
        .I3(\q_reg[30]_0 [12]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[13]),
        .O(\q_reg[31]_1 [13]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[16]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[16]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[16]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[16]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [16]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[16]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[13]),
        .I3(\q_reg[30]_0 [13]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[14]),
        .O(\q_reg[31]_1 [14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[17]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[17]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [17]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[17]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[17]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [17]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[17]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[14]),
        .I3(\q_reg[30]_0 [14]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[15]),
        .O(\q_reg[31]_1 [15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[18]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[18]),
        .O(\q_reg[31]_2 [18]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[18]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[18]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [18]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[18]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[15]),
        .I3(\q_reg[30]_0 [15]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[16]),
        .O(\q_reg[31]_1 [16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[19]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[19]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [19]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[19]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[19]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [19]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[19]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[16]),
        .I3(\q_reg[30]_0 [16]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[17]),
        .O(\q_reg[31]_1 [17]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[1]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[1]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[1]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[1]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1__1 
       (.I0(Q[1]),
        .I1(\q_reg[31]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1__2 
       (.I0(Q[22]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1__3 
       (.I0(Q[17]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \q[1]_i_1__4 
       (.I0(\q_reg[31]_0 ),
        .I1(\q[1]_i_2_n_0 ),
        .I2(\q[2]_i_3_n_0 ),
        .O(\q_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h0004000400000004)) 
    \q[1]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(\q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[20]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[20]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[20]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[20]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [20]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[20]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[17]),
        .I3(\q_reg[30]_0 [17]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[18]),
        .O(\q_reg[31]_1 [18]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[21]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[21]),
        .O(\q_reg[31]_2 [21]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[21]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[21]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [21]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[21]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[18]),
        .I3(\q_reg[30]_0 [18]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[19]),
        .O(\q_reg[31]_1 [19]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[22]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[22]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[22]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[22]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [22]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[22]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[19]),
        .I3(\q_reg[30]_0 [19]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[20]),
        .O(\q_reg[31]_1 [20]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[23]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[23]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[23]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[23]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [23]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[23]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[20]),
        .I3(\q_reg[30]_0 [20]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[21]),
        .O(\q_reg[31]_1 [21]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[24]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[24]),
        .O(\q_reg[31]_2 [24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[24]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[24]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [24]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[24]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[21]),
        .I3(\q_reg[30]_0 [21]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[22]),
        .O(\q_reg[31]_1 [22]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[25]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[25]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[25]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[25]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [25]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[25]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[22]),
        .I3(\q_reg[30]_0 [22]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[23]),
        .O(\q_reg[31]_1 [23]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[26]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[26]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[26]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[26]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [26]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[26]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[23]),
        .I3(\q_reg[30]_0 [23]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[24]),
        .O(\q_reg[31]_1 [24]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[27]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[27]),
        .O(\q_reg[31]_2 [27]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[27]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[27]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [27]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[27]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[24]),
        .I3(\q_reg[30]_0 [24]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[25]),
        .O(\q_reg[31]_1 [25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[28]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[28]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [28]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[28]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[28]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [28]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[28]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[25]),
        .I3(\q_reg[30]_0 [25]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(\q_reg[31]_10 [1]),
        .O(\q_reg[31]_1 [26]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[29]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[29]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [29]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[29]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[29]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [29]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[29]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[26]),
        .I3(\q_reg[30]_0 [26]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(\q_reg[31]_10 [2]),
        .O(\q_reg[31]_1 [27]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[2]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[2]),
        .O(\q_reg[31]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[2]_i_1__1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[2]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [2]));
  LUT6 #(
    .INIT(64'h087FFFFF80F70000)) 
    \q[2]_i_1__10 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(\q_reg[31]_10 [0]),
        .I3(\q_reg[2]_1 ),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[0]),
        .O(\q_reg[31]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1__2 
       (.I0(Q[23]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1__3 
       (.I0(Q[18]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'hAA00BA00AA00AA00)) 
    \q[2]_i_1__4 
       (.I0(\q_reg[2]_0 ),
        .I1(\q[2]_i_2__0_n_0 ),
        .I2(\q[2]_i_3_n_0 ),
        .I3(\q_reg[31]_0 ),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\q_reg[7]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1__8 
       (.I0(\q_reg[31]_0 ),
        .I1(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \q[2]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\q[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \q[2]_i_3 
       (.I0(opD[0]),
        .I1(opD[1]),
        .I2(opD[5]),
        .I3(opD[3]),
        .I4(opD[2]),
        .I5(opD[4]),
        .O(\q[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[30]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[30]),
        .O(\q_reg[31]_2 [30]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[30]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[30]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [30]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[30]_i_1__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[27]),
        .I3(\q_reg[30]_0 [27]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(\q_reg[31]_10 [3]),
        .O(\q_reg[31]_1 [28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[31]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[31]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [31]));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \q[31]_i_10 
       (.I0(\q_reg[4]_4 [3]),
        .I1(Q[19]),
        .I2(\q[31]_i_16_n_0 ),
        .I3(Q[20]),
        .I4(\q_reg[4]_4 [4]),
        .O(\q_reg[31]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[31]_i_11 
       (.I0(Q[20]),
        .I1(\q_reg[4]_3 [3]),
        .I2(\q_reg[7]_1 [1]),
        .I3(signimmE[2]),
        .O(\q[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFF6FFFFFFFFFFF6)) 
    \q[31]_i_13 
       (.I0(\q_reg[31]_11 [2]),
        .I1(Q[25]),
        .I2(\q[31]_i_17_n_0 ),
        .I3(\q[31]_i_18_n_0 ),
        .I4(Q[21]),
        .I5(\q_reg[31]_11 [0]),
        .O(\q[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_16 
       (.I0(Q[17]),
        .I1(\q_reg[4]_4 [1]),
        .I2(Q[18]),
        .I3(\q_reg[4]_4 [2]),
        .I4(\q_reg[4]_4 [0]),
        .I5(Q[16]),
        .O(\q[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[31]_i_17 
       (.I0(Q[23]),
        .I1(\q_reg[4]_3 [2]),
        .I2(\q_reg[7]_1 [1]),
        .I3(signimmE[1]),
        .O(\q[31]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[31]_i_18 
       (.I0(Q[22]),
        .I1(\q_reg[4]_3 [1]),
        .I2(\q_reg[7]_1 [1]),
        .I3(signimmE[0]),
        .O(\q[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[31]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[31]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_1__1 
       (.I0(Q[15]),
        .I1(\q_reg[31]_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7000707077777777)) 
    \q[31]_i_1__2 
       (.I0(\q_reg[4]_2 ),
        .I1(\q_reg[7]_1 [2]),
        .I2(\q_reg[2]_2 ),
        .I3(\q[31]_i_5_n_0 ),
        .I4(\q_reg[7]_1 [0]),
        .I5(\q_reg[2]_0 ),
        .O(\q_reg[31]_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \q[31]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(\q_reg[31]_0 ),
        .O(\q[31]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_2 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(Q[19]),
        .I3(Q[20]),
        .I4(Q[18]),
        .O(\q[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_2__0 
       (.I0(Q[22]),
        .I1(Q[21]),
        .I2(Q[24]),
        .I3(Q[25]),
        .I4(Q[23]),
        .O(\q_reg[31]_3 ));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[31]_i_2__3 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[28]),
        .I3(\q_reg[30]_0 [28]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(\q_reg[31]_10 [4]),
        .O(\q_reg[31]_1 [29]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \q[31]_i_3 
       (.I0(opD[4]),
        .I1(opD[2]),
        .I2(opD[5]),
        .I3(opD[0]),
        .I4(opD[1]),
        .I5(opD[3]),
        .O(\q_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hEF00EFEFFEFEFE00)) 
    \q[31]_i_5 
       (.I0(\q[31]_i_11_n_0 ),
        .I1(\q_reg[16]_0 ),
        .I2(Q[19]),
        .I3(\q[31]_i_13_n_0 ),
        .I4(Q[24]),
        .I5(\q_reg[31]_11 [1]),
        .O(\q[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008080111)) 
    \q[31]_i_6 
       (.I0(opD[0]),
        .I1(opD[1]),
        .I2(opD[2]),
        .I3(opD[3]),
        .I4(opD[5]),
        .I5(opD[4]),
        .O(\q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_7 
       (.I0(Q[18]),
        .I1(\q_reg[4]_3 [2]),
        .I2(Q[17]),
        .I3(\q_reg[4]_3 [1]),
        .I4(\q_reg[4]_3 [0]),
        .I5(Q[16]),
        .O(\q_reg[31]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[3]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[3]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[3]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[3]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1__1 
       (.I0(Q[3]),
        .I1(\q_reg[31]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000200008002)) 
    \q[3]_i_1__2 
       (.I0(\q_reg[31]_0 ),
        .I1(opD[5]),
        .I2(opD[0]),
        .I3(opD[1]),
        .I4(\q[7]_i_2__0_n_0 ),
        .I5(opD[3]),
        .O(\q_reg[7]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1__6 
       (.I0(\q_reg[31]_0 ),
        .I1(Q[19]),
        .O(\q_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1__7 
       (.I0(\q_reg[31]_0 ),
        .I1(Q[24]),
        .O(\q_reg[4]_1 [3]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[3]_i_1__8 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[0]),
        .I3(\q_reg[30]_0 [0]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[1]),
        .O(\q_reg[31]_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[4]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[4]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[4]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[4]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [4]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__1 
       (.I0(Q[4]),
        .I1(\q_reg[31]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__2 
       (.I0(Q[25]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1__3 
       (.I0(Q[20]),
        .I1(\q_reg[31]_0 ),
        .O(\q_reg[4]_0 [4]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \q[4]_i_1__4 
       (.I0(\q_reg[31]_0 ),
        .I1(opD[4]),
        .I2(opD[2]),
        .I3(\q[4]_i_2_n_0 ),
        .I4(opD[1]),
        .I5(opD[0]),
        .O(\q_reg[7]_0 [4]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[4]_i_1__8 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[1]),
        .I3(\q_reg[30]_0 [1]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[2]),
        .O(\q_reg[31]_1 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    \q[4]_i_2 
       (.I0(opD[5]),
        .I1(opD[3]),
        .O(\q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[5]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[5]),
        .O(\q_reg[31]_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[5]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[5]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[5]_i_1__1 
       (.I0(Q[5]),
        .I1(\q_reg[31]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000800200008000)) 
    \q[5]_i_1__2 
       (.I0(\q_reg[31]_0 ),
        .I1(opD[5]),
        .I2(opD[0]),
        .I3(opD[1]),
        .I4(\q[7]_i_2__0_n_0 ),
        .I5(opD[3]),
        .O(\q_reg[7]_0 [5]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[5]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[2]),
        .I3(\q_reg[30]_0 [2]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[3]),
        .O(\q_reg[31]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[6]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[6]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[6]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[6]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_1__1 
       (.I0(Q[6]),
        .I1(\q_reg[31]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \q[6]_i_1__2 
       (.I0(\q_reg[31]_0 ),
        .I1(opD[5]),
        .I2(opD[3]),
        .I3(opD[0]),
        .I4(opD[1]),
        .I5(\q[7]_i_2__0_n_0 ),
        .O(\q_reg[7]_0 [6]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[6]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[3]),
        .I3(\q_reg[30]_0 [3]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[4]),
        .O(\q_reg[31]_1 [4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[7]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[7]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[7]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[7]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_1__1 
       (.I0(Q[7]),
        .I1(\q_reg[31]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \q[7]_i_1__2 
       (.I0(\q_reg[31]_0 ),
        .I1(\q[7]_i_2__0_n_0 ),
        .I2(opD[1]),
        .I3(opD[0]),
        .I4(opD[5]),
        .I5(opD[3]),
        .O(\q_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[7]_i_1__5 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[4]),
        .I3(\q_reg[30]_0 [4]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[5]),
        .O(\q_reg[31]_1 [5]));
  LUT2 #(
    .INIT(4'hE)) 
    \q[7]_i_2__0 
       (.I0(opD[2]),
        .I1(opD[4]),
        .O(\q[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \q[8]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_3 ),
        .I2(rd10[8]),
        .O(\q_reg[31]_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[8]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[8]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1__1 
       (.I0(Q[8]),
        .I1(\q_reg[31]_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[8]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[5]),
        .I3(\q_reg[30]_0 [5]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[6]),
        .O(\q_reg[31]_1 [6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[9]_i_1 
       (.I0(\q_reg[31]_0 ),
        .I1(rd10[9]),
        .I2(\q_reg[31]_3 ),
        .O(\q_reg[31]_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \q[9]_i_1__0 
       (.I0(\q_reg[31]_0 ),
        .I1(rd20[9]),
        .I2(\q[31]_i_2_n_0 ),
        .O(\q_reg[31]_4 [9]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[9]_i_1__1 
       (.I0(Q[9]),
        .I1(\q_reg[31]_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hF780FFFFF7800000)) 
    \q[9]_i_1__4 
       (.I0(CO),
        .I1(\q_reg[2]_0 ),
        .I2(pcbranchD[6]),
        .I3(\q_reg[30]_0 [6]),
        .I4(\q[31]_i_6_n_0 ),
        .I5(Q[7]),
        .O(\q_reg[31]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [26]),
        .Q(opD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [27]),
        .Q(opD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [28]),
        .Q(opD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [29]),
        .Q(opD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [30]),
        .Q(opD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [31]),
        .Q(opD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\q[31]_i_1__5_n_0 ),
        .CLR(AR),
        .D(\q_reg[30]_1 [9]),
        .Q(Q[9]));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__0_i_1
       (.I0(y1_carry__0_i_5_n_0),
        .I1(y1_carry__0_i_6_n_0),
        .I2(y1_carry__0_i_7_n_0),
        .O(\q_reg[31]_6 [3]));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_10
       (.I0(rd10[19]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_22_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [19]),
        .O(y1_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__0_i_11
       (.I0(y1_carry__0_i_23_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[15]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [15]),
        .O(y1_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_12
       (.I0(rd10[17]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_24_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [17]),
        .O(y1_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_13
       (.I0(rd10[16]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_25_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [16]),
        .O(y1_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__0_i_14
       (.I0(y1_carry__0_i_26_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[14]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [14]),
        .O(y1_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_15
       (.I0(rd10[13]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_27_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [13]),
        .O(y1_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_16
       (.I0(rd10[12]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_28_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [12]),
        .O(y1_carry__0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__0_i_17
       (.I0(rd10[21]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_18
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[23]),
        .O(y1_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_19
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[22]),
        .O(y1_carry__0_i_19_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__0_i_2
       (.I0(y1_carry__0_i_8_n_0),
        .I1(y1_carry__0_i_9_n_0),
        .I2(y1_carry__0_i_10_n_0),
        .O(\q_reg[31]_6 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__0_i_20
       (.I0(rd10[18]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__0_i_20_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_21
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[20]),
        .O(y1_carry__0_i_21_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_22
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[19]),
        .O(y1_carry__0_i_22_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__0_i_23
       (.I0(rd10[15]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__0_i_23_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_24
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[17]),
        .O(y1_carry__0_i_24_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_25
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[16]),
        .O(y1_carry__0_i_25_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__0_i_26
       (.I0(rd10[14]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__0_i_26_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_27
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[13]),
        .O(y1_carry__0_i_27_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__0_i_28
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[12]),
        .O(y1_carry__0_i_28_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__0_i_3
       (.I0(y1_carry__0_i_11_n_0),
        .I1(y1_carry__0_i_12_n_0),
        .I2(y1_carry__0_i_13_n_0),
        .O(\q_reg[31]_6 [1]));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__0_i_4
       (.I0(y1_carry__0_i_14_n_0),
        .I1(y1_carry__0_i_15_n_0),
        .I2(y1_carry__0_i_16_n_0),
        .O(\q_reg[31]_6 [0]));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__0_i_5
       (.I0(y1_carry__0_i_17_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[21]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [21]),
        .O(y1_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_6
       (.I0(rd10[23]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_18_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [23]),
        .O(y1_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_7
       (.I0(rd10[22]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_19_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [22]),
        .O(y1_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__0_i_8
       (.I0(y1_carry__0_i_20_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[18]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [18]),
        .O(y1_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__0_i_9
       (.I0(rd10[20]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__0_i_21_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [20]),
        .O(y1_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hA2A82A20A2A8808A)) 
    y1_carry__1_i_1
       (.I0(y1_carry__1_i_4_n_0),
        .I1(\q_reg[31]_12 [31]),
        .I2(y1_carry__1_i_5_n_0),
        .I3(y1_carry__1_i_6_n_0),
        .I4(\q_reg[0]_0 ),
        .I5(y1_carry__1_i_8_n_0),
        .O(\q_reg[31]_5 [2]));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__1_i_10
       (.I0(rd10[29]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__1_i_17_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [29]),
        .O(y1_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__1_i_11
       (.I0(rd10[28]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__1_i_18_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [28]),
        .O(y1_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__1_i_12
       (.I0(y1_carry__1_i_19_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[24]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [24]),
        .O(y1_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__1_i_13
       (.I0(rd10[26]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__1_i_20_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [26]),
        .O(y1_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry__1_i_14
       (.I0(rd10[25]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry__1_i_21_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [25]),
        .O(y1_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__1_i_15
       (.I0(rd10[30]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__1_i_16
       (.I0(rd10[27]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_17
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[29]),
        .O(y1_carry__1_i_17_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_18
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[28]),
        .O(y1_carry__1_i_18_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__1_i_19
       (.I0(rd10[24]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry__1_i_19_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__1_i_2
       (.I0(y1_carry__1_i_9_n_0),
        .I1(y1_carry__1_i_10_n_0),
        .I2(y1_carry__1_i_11_n_0),
        .O(\q_reg[31]_5 [1]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_20
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[26]),
        .O(y1_carry__1_i_20_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_21
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[25]),
        .O(y1_carry__1_i_21_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry__1_i_3
       (.I0(y1_carry__1_i_12_n_0),
        .I1(y1_carry__1_i_13_n_0),
        .I2(y1_carry__1_i_14_n_0),
        .O(\q_reg[31]_5 [0]));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__1_i_4
       (.I0(y1_carry__1_i_15_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[30]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [30]),
        .O(y1_carry__1_i_4_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry__1_i_5
       (.I0(y1_carry_i_18_n_0),
        .I1(Q[18]),
        .I2(Q[20]),
        .I3(Q[19]),
        .I4(Q[16]),
        .I5(Q[17]),
        .O(y1_carry__1_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_6
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[31]),
        .O(y1_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry__1_i_8
       (.I0(Q[23]),
        .I1(Q[25]),
        .I2(Q[24]),
        .I3(Q[21]),
        .I4(Q[22]),
        .I5(rd10[31]),
        .O(y1_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry__1_i_9
       (.I0(y1_carry__1_i_16_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[27]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [27]),
        .O(y1_carry__1_i_9_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry_i_1
       (.I0(y1_carry_i_5_n_0),
        .I1(y1_carry_i_6_n_0),
        .I2(y1_carry_i_7_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_10
       (.I0(rd10[6]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_23_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [6]),
        .O(y1_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry_i_11
       (.I0(y1_carry_i_24_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[5]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [5]),
        .O(y1_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_12
       (.I0(rd10[4]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_25_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [4]),
        .O(y1_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_13
       (.I0(rd10[3]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_26_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [3]),
        .O(y1_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry_i_14
       (.I0(y1_carry_i_27_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[2]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [2]),
        .O(y1_carry_i_14_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_15
       (.I0(rd10[1]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_28_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [1]),
        .O(y1_carry_i_15_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_16
       (.I0(rd10[0]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_29_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [0]),
        .O(y1_carry_i_16_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry_i_17
       (.I0(rd10[11]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry_i_17_n_0));
  LUT6 #(
    .INIT(64'h0082000000000082)) 
    y1_carry_i_18
       (.I0(\q_reg[0]_1 ),
        .I1(\q_reg[4]_4 [4]),
        .I2(Q[20]),
        .I3(\q[31]_i_16_n_0 ),
        .I4(Q[19]),
        .I5(\q_reg[4]_4 [3]),
        .O(y1_carry_i_18_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_19
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[10]),
        .O(y1_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry_i_2
       (.I0(y1_carry_i_8_n_0),
        .I1(y1_carry_i_9_n_0),
        .I2(y1_carry_i_10_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_20
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[9]),
        .O(y1_carry_i_20_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry_i_21
       (.I0(rd10[8]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_22
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[7]),
        .O(y1_carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_23
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[6]),
        .O(y1_carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry_i_24
       (.I0(rd10[5]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry_i_24_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_25
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[4]),
        .O(y1_carry_i_25_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_26
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[3]),
        .O(y1_carry_i_26_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    y1_carry_i_27
       (.I0(rd10[2]),
        .I1(Q[23]),
        .I2(Q[25]),
        .I3(Q[24]),
        .I4(Q[21]),
        .I5(Q[22]),
        .O(y1_carry_i_27_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_28
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[1]),
        .O(y1_carry_i_28_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    y1_carry_i_29
       (.I0(Q[18]),
        .I1(Q[20]),
        .I2(Q[19]),
        .I3(Q[16]),
        .I4(Q[17]),
        .I5(rd20[0]),
        .O(y1_carry_i_29_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry_i_3
       (.I0(y1_carry_i_11_n_0),
        .I1(y1_carry_i_12_n_0),
        .I2(y1_carry_i_13_n_0),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h02)) 
    y1_carry_i_4
       (.I0(y1_carry_i_14_n_0),
        .I1(y1_carry_i_15_n_0),
        .I2(y1_carry_i_16_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry_i_5
       (.I0(y1_carry_i_17_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[11]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [11]),
        .O(y1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_6
       (.I0(rd10[10]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_19_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [10]),
        .O(y1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_7
       (.I0(rd10[9]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_20_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [9]),
        .O(y1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h1111EEE1DDDDD2DD)) 
    y1_carry_i_8
       (.I0(y1_carry_i_21_n_0),
        .I1(\q_reg[0]_0 ),
        .I2(y1_carry_i_18_n_0),
        .I3(rd20[8]),
        .I4(\q[31]_i_2_n_0 ),
        .I5(\q_reg[31]_12 [8]),
        .O(y1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0D0DF20D020202FD)) 
    y1_carry_i_9
       (.I0(rd10[7]),
        .I1(\q_reg[31]_3 ),
        .I2(\q_reg[0]_0 ),
        .I3(y1_carry_i_22_n_0),
        .I4(y1_carry__1_i_5_n_0),
        .I5(\q_reg[31]_12 [7]),
        .O(y1_carry_i_9_n_0));
endmodule

module flopr
   (\q_reg[1]_0 ,
    D,
    CLK,
    AR,
    lopt);
  output [2:0]\q_reg[1]_0 ;
  input [2:0]D;
  input CLK;
  input [0:0]AR;
  output lopt;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [2:0]\q_reg[1]_0 ;
  wire \q_reg[1]_lopt_replica_1 ;

  assign lopt = \q_reg[1]_lopt_replica_1 ;
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[1]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[1]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[1]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[1]_0 [2]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized0
   (\q_reg[31] ,
    \q_reg[2] ,
    CLK,
    AR);
  output [1:0]\q_reg[31] ;
  input [1:0]\q_reg[2] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]\q_reg[2] ;
  wire [1:0]\q_reg[31] ;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[2] [0]),
        .Q(\q_reg[31] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[2] [1]),
        .Q(\q_reg[31] [1]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1
   (\q_reg[31]_0 ,
    D,
    CLK,
    AR,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9,
    lopt_10,
    lopt_11,
    lopt_12,
    lopt_13,
    lopt_14,
    lopt_15,
    lopt_16,
    lopt_17,
    lopt_18,
    lopt_19,
    lopt_20,
    lopt_21,
    lopt_22,
    lopt_23,
    lopt_24,
    lopt_25,
    lopt_26,
    lopt_27,
    lopt_28,
    lopt_29,
    lopt_30,
    lopt_31);
  output [31:0]\q_reg[31]_0 ;
  input [31:0]D;
  input CLK;
  input [0:0]AR;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;
  output lopt_9;
  output lopt_10;
  output lopt_11;
  output lopt_12;
  output lopt_13;
  output lopt_14;
  output lopt_15;
  output lopt_16;
  output lopt_17;
  output lopt_18;
  output lopt_19;
  output lopt_20;
  output lopt_21;
  output lopt_22;
  output lopt_23;
  output lopt_24;
  output lopt_25;
  output lopt_26;
  output lopt_27;
  output lopt_28;
  output lopt_29;
  output lopt_30;
  output lopt_31;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire \q_reg[0]_lopt_replica_1 ;
  wire \q_reg[10]_lopt_replica_1 ;
  wire \q_reg[11]_lopt_replica_1 ;
  wire \q_reg[12]_lopt_replica_1 ;
  wire \q_reg[13]_lopt_replica_1 ;
  wire \q_reg[14]_lopt_replica_1 ;
  wire \q_reg[15]_lopt_replica_1 ;
  wire \q_reg[16]_lopt_replica_1 ;
  wire \q_reg[17]_lopt_replica_1 ;
  wire \q_reg[18]_lopt_replica_1 ;
  wire \q_reg[19]_lopt_replica_1 ;
  wire \q_reg[1]_lopt_replica_1 ;
  wire \q_reg[20]_lopt_replica_1 ;
  wire \q_reg[21]_lopt_replica_1 ;
  wire \q_reg[22]_lopt_replica_1 ;
  wire \q_reg[23]_lopt_replica_1 ;
  wire \q_reg[24]_lopt_replica_1 ;
  wire \q_reg[25]_lopt_replica_1 ;
  wire \q_reg[26]_lopt_replica_1 ;
  wire \q_reg[27]_lopt_replica_1 ;
  wire \q_reg[28]_lopt_replica_1 ;
  wire \q_reg[29]_lopt_replica_1 ;
  wire \q_reg[2]_lopt_replica_1 ;
  wire \q_reg[30]_lopt_replica_1 ;
  wire [31:0]\q_reg[31]_0 ;
  wire \q_reg[31]_lopt_replica_1 ;
  wire \q_reg[3]_lopt_replica_1 ;
  wire \q_reg[4]_lopt_replica_1 ;
  wire \q_reg[5]_lopt_replica_1 ;
  wire \q_reg[6]_lopt_replica_1 ;
  wire \q_reg[7]_lopt_replica_1 ;
  wire \q_reg[8]_lopt_replica_1 ;
  wire \q_reg[9]_lopt_replica_1 ;

  assign lopt = \q_reg[9]_lopt_replica_1 ;
  assign lopt_1 = \q_reg[0]_lopt_replica_1 ;
  assign lopt_10 = \q_reg[18]_lopt_replica_1 ;
  assign lopt_11 = \q_reg[19]_lopt_replica_1 ;
  assign lopt_12 = \q_reg[1]_lopt_replica_1 ;
  assign lopt_13 = \q_reg[20]_lopt_replica_1 ;
  assign lopt_14 = \q_reg[21]_lopt_replica_1 ;
  assign lopt_15 = \q_reg[22]_lopt_replica_1 ;
  assign lopt_16 = \q_reg[23]_lopt_replica_1 ;
  assign lopt_17 = \q_reg[24]_lopt_replica_1 ;
  assign lopt_18 = \q_reg[25]_lopt_replica_1 ;
  assign lopt_19 = \q_reg[26]_lopt_replica_1 ;
  assign lopt_2 = \q_reg[10]_lopt_replica_1 ;
  assign lopt_20 = \q_reg[27]_lopt_replica_1 ;
  assign lopt_21 = \q_reg[28]_lopt_replica_1 ;
  assign lopt_22 = \q_reg[29]_lopt_replica_1 ;
  assign lopt_23 = \q_reg[2]_lopt_replica_1 ;
  assign lopt_24 = \q_reg[30]_lopt_replica_1 ;
  assign lopt_25 = \q_reg[31]_lopt_replica_1 ;
  assign lopt_26 = \q_reg[3]_lopt_replica_1 ;
  assign lopt_27 = \q_reg[4]_lopt_replica_1 ;
  assign lopt_28 = \q_reg[5]_lopt_replica_1 ;
  assign lopt_29 = \q_reg[6]_lopt_replica_1 ;
  assign lopt_3 = \q_reg[11]_lopt_replica_1 ;
  assign lopt_30 = \q_reg[7]_lopt_replica_1 ;
  assign lopt_31 = \q_reg[8]_lopt_replica_1 ;
  assign lopt_4 = \q_reg[12]_lopt_replica_1 ;
  assign lopt_5 = \q_reg[13]_lopt_replica_1 ;
  assign lopt_6 = \q_reg[14]_lopt_replica_1 ;
  assign lopt_7 = \q_reg[15]_lopt_replica_1 ;
  assign lopt_8 = \q_reg[16]_lopt_replica_1 ;
  assign lopt_9 = \q_reg[17]_lopt_replica_1 ;
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[31]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[0]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(\q_reg[31]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(\q_reg[10]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(\q_reg[31]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(\q_reg[11]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(\q_reg[31]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(\q_reg[12]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(\q_reg[31]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(\q_reg[13]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(\q_reg[31]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(\q_reg[14]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(\q_reg[31]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(\q_reg[15]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(\q_reg[31]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(\q_reg[16]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(\q_reg[31]_0 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(\q_reg[17]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(\q_reg[31]_0 [18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(\q_reg[18]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(\q_reg[31]_0 [19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(\q_reg[19]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[31]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[1]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(\q_reg[31]_0 [20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(\q_reg[20]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(\q_reg[31]_0 [21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(\q_reg[21]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(\q_reg[31]_0 [22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(\q_reg[22]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(\q_reg[31]_0 [23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(\q_reg[23]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(\q_reg[31]_0 [24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(\q_reg[24]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(\q_reg[31]_0 [25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(\q_reg[25]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(\q_reg[31]_0 [26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(\q_reg[26]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(\q_reg[31]_0 [27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(\q_reg[27]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(\q_reg[31]_0 [28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(\q_reg[28]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(\q_reg[31]_0 [29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(\q_reg[29]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[31]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[2]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(\q_reg[31]_0 [30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(\q_reg[30]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(\q_reg[31]_0 [31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(\q_reg[31]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[31]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[3]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[31]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[4]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\q_reg[31]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\q_reg[5]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\q_reg[31]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\q_reg[6]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\q_reg[31]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\q_reg[7]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(\q_reg[31]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(\q_reg[8]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(\q_reg[31]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(\q_reg[9]_lopt_replica_1 ));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_2
   (Q,
    \q_reg[31]_0 ,
    CLK,
    AR);
  output [31:0]Q;
  input [31:0]\q_reg[31]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]Q;
  wire [31:0]\q_reg[31]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[31]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_4
   (\q_reg[15]_0 ,
    \q_reg[14]_0 ,
    \q_reg[12]_0 ,
    \q_reg[11]_0 ,
    \q_reg[10]_0 ,
    \q_reg[8]_0 ,
    \q_reg[7]_0 ,
    \q_reg[6]_0 ,
    D,
    Q,
    \q_reg[14]_1 ,
    \q_reg[10]_1 ,
    \q_reg[6]_1 ,
    \q_reg[5]_0 ,
    signimmE,
    resultW,
    \q_reg[14]_2 ,
    \q_reg[2]_0 ,
    \q_reg[4]_0 ,
    \q_reg[1]_0 ,
    CLK,
    AR);
  output [1:0]\q_reg[15]_0 ;
  output \q_reg[14]_0 ;
  output \q_reg[12]_0 ;
  output [1:0]\q_reg[11]_0 ;
  output \q_reg[10]_0 ;
  output \q_reg[8]_0 ;
  output [0:0]\q_reg[7]_0 ;
  output \q_reg[6]_0 ;
  output [5:0]D;
  output [31:0]Q;
  input [1:0]\q_reg[14]_1 ;
  input [1:0]\q_reg[10]_1 ;
  input [0:0]\q_reg[6]_1 ;
  input [0:0]\q_reg[5]_0 ;
  input [4:0]signimmE;
  input [5:0]resultW;
  input [5:0]\q_reg[14]_2 ;
  input \q_reg[2]_0 ;
  input \q_reg[4]_0 ;
  input [31:0]\q_reg[1]_0 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [5:0]D;
  wire [31:0]Q;
  wire \q_reg[10]_0 ;
  wire [1:0]\q_reg[10]_1 ;
  wire [1:0]\q_reg[11]_0 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[14]_0 ;
  wire [1:0]\q_reg[14]_1 ;
  wire [5:0]\q_reg[14]_2 ;
  wire [1:0]\q_reg[15]_0 ;
  wire [31:0]\q_reg[1]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[4]_0 ;
  wire [0:0]\q_reg[5]_0 ;
  wire \q_reg[6]_0 ;
  wire [0:0]\q_reg[6]_1 ;
  wire [0:0]\q_reg[7]_0 ;
  wire \q_reg[8]_0 ;
  wire [5:0]resultW;
  wire [4:0]signimmE;

  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__0_i_6
       (.I0(\q_reg[6]_0 ),
        .I1(\q_reg[6]_1 ),
        .O(\q_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__1_i_6
       (.I0(\q_reg[10]_0 ),
        .I1(\q_reg[10]_1 [1]),
        .O(\q_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__1_i_8
       (.I0(\q_reg[8]_0 ),
        .I1(\q_reg[10]_1 [0]),
        .O(\q_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__2_i_6
       (.I0(\q_reg[14]_0 ),
        .I1(\q_reg[14]_1 [1]),
        .O(\q_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__2_i_8
       (.I0(\q_reg[12]_0 ),
        .I1(\q_reg[14]_1 [0]),
        .O(\q_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[0]_i_1__6 
       (.I0(Q[0]),
        .I1(resultW[0]),
        .I2(\q_reg[14]_2 [0]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[10]_i_1__3 
       (.I0(Q[10]),
        .I1(resultW[3]),
        .I2(\q_reg[14]_2 [3]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hE2)) 
    \q[10]_i_2 
       (.I0(D[3]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[2]),
        .O(\q_reg[10]_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[12]_i_1__3 
       (.I0(Q[12]),
        .I1(resultW[4]),
        .I2(\q_reg[14]_2 [4]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[12]_i_3 
       (.I0(D[4]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[3]),
        .O(\q_reg[12]_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[14]_i_1__3 
       (.I0(Q[14]),
        .I1(resultW[5]),
        .I2(\q_reg[14]_2 [5]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[14]_i_3 
       (.I0(D[5]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[4]),
        .O(\q_reg[14]_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[6]_i_1__4 
       (.I0(Q[6]),
        .I1(resultW[1]),
        .I2(\q_reg[14]_2 [1]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[6]_i_2 
       (.I0(D[1]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[0]),
        .O(\q_reg[6]_0 ));
  LUT5 #(
    .INIT(32'hF0AACCAA)) 
    \q[8]_i_1__3 
       (.I0(Q[8]),
        .I1(resultW[2]),
        .I2(\q_reg[14]_2 [2]),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[4]_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[8]_i_2 
       (.I0(D[2]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[1]),
        .O(\q_reg[8]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[1]_0 [9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized1_5
   (\q_reg[15]_0 ,
    \q_reg[13]_0 ,
    \q_reg[7]_0 ,
    \q_reg[5]_0 ,
    D,
    resultW,
    \q_reg[13]_1 ,
    \q_reg[5]_1 ,
    Q,
    \q_reg[4]_0 ,
    \q_reg[2]_0 ,
    \q_reg[27]_0 ,
    signimmE,
    \q_reg[5]_2 ,
    \q_reg[1]_0 ,
    \q_reg[31]_0 ,
    \bbstub_douta[31] ,
    CLK,
    AR);
  output [0:0]\q_reg[15]_0 ;
  output \q_reg[13]_0 ;
  output [0:0]\q_reg[7]_0 ;
  output \q_reg[5]_0 ;
  output [4:0]D;
  output [31:0]resultW;
  input [0:0]\q_reg[13]_1 ;
  input [0:0]\q_reg[5]_1 ;
  input [4:0]Q;
  input \q_reg[4]_0 ;
  input \q_reg[2]_0 ;
  input [4:0]\q_reg[27]_0 ;
  input [1:0]signimmE;
  input [0:0]\q_reg[5]_2 ;
  input [0:0]\q_reg[1]_0 ;
  input [31:0]\q_reg[31]_0 ;
  input [31:0]\bbstub_douta[31] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire [31:0]\bbstub_douta[31] ;
  wire \q_reg[13]_0 ;
  wire [0:0]\q_reg[13]_1 ;
  wire [0:0]\q_reg[15]_0 ;
  wire [0:0]\q_reg[1]_0 ;
  wire [4:0]\q_reg[27]_0 ;
  wire \q_reg[2]_0 ;
  wire [31:0]\q_reg[31]_0 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[5]_0 ;
  wire [0:0]\q_reg[5]_1 ;
  wire [0:0]\q_reg[5]_2 ;
  wire [0:0]\q_reg[7]_0 ;
  wire [31:0]readdataW;
  wire [31:0]resultW;
  wire [1:0]signimmE;

  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__0_i_7
       (.I0(\q_reg[5]_0 ),
        .I1(\q_reg[5]_1 ),
        .O(\q_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__2_i_7
       (.I0(\q_reg[13]_0 ),
        .I1(\q_reg[13]_1 ),
        .O(\q_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \q[13]_i_1__3 
       (.I0(resultW[13]),
        .I1(Q[1]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[27]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[13]_i_3 
       (.I0(D[1]),
        .I1(signimmE[1]),
        .I2(\q_reg[5]_2 ),
        .O(\q_reg[13]_0 ));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \q[15]_i_1__2 
       (.I0(resultW[15]),
        .I1(Q[2]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[27]_0 [2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \q[26]_i_1__2 
       (.I0(resultW[26]),
        .I1(Q[3]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[27]_0 [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \q[27]_i_1__2 
       (.I0(resultW[27]),
        .I1(Q[4]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[27]_0 [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hCAFFCA00)) 
    \q[5]_i_1__4 
       (.I0(resultW[5]),
        .I1(Q[0]),
        .I2(\q_reg[4]_0 ),
        .I3(\q_reg[2]_0 ),
        .I4(\q_reg[27]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[5]_i_2 
       (.I0(D[0]),
        .I1(signimmE[0]),
        .I2(\q_reg[5]_2 ),
        .O(\q_reg[5]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [0]),
        .Q(readdataW[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [10]),
        .Q(readdataW[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [11]),
        .Q(readdataW[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [12]),
        .Q(readdataW[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [13]),
        .Q(readdataW[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [14]),
        .Q(readdataW[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [15]),
        .Q(readdataW[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [16]),
        .Q(readdataW[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [17]),
        .Q(readdataW[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [18]),
        .Q(readdataW[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [19]),
        .Q(readdataW[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [1]),
        .Q(readdataW[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [20]),
        .Q(readdataW[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [21]),
        .Q(readdataW[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [22]),
        .Q(readdataW[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [23]),
        .Q(readdataW[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [24]),
        .Q(readdataW[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [25]),
        .Q(readdataW[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [26]),
        .Q(readdataW[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [27]),
        .Q(readdataW[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [28]),
        .Q(readdataW[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [29]),
        .Q(readdataW[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [2]),
        .Q(readdataW[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [30]),
        .Q(readdataW[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [31]),
        .Q(readdataW[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [3]),
        .Q(readdataW[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [4]),
        .Q(readdataW[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [5]),
        .Q(readdataW[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [6]),
        .Q(readdataW[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [7]),
        .Q(readdataW[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [8]),
        .Q(readdataW[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\bbstub_douta[31] [9]),
        .Q(readdataW[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_2
       (.I0(readdataW[1]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [1]),
        .O(resultW[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_3
       (.I0(readdataW[0]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [0]),
        .O(resultW[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_4
       (.I0(readdataW[3]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [3]),
        .O(resultW[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_5
       (.I0(readdataW[2]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [2]),
        .O(resultW[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_6
       (.I0(readdataW[5]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [5]),
        .O(resultW[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_0_5_i_7
       (.I0(readdataW[4]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [4]),
        .O(resultW[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_1
       (.I0(readdataW[13]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [13]),
        .O(resultW[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_2
       (.I0(readdataW[12]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [12]),
        .O(resultW[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_3
       (.I0(readdataW[15]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [15]),
        .O(resultW[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_4
       (.I0(readdataW[14]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [14]),
        .O(resultW[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_5
       (.I0(readdataW[17]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [17]),
        .O(resultW[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_12_17_i_6
       (.I0(readdataW[16]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [16]),
        .O(resultW[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_1
       (.I0(readdataW[19]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [19]),
        .O(resultW[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_2
       (.I0(readdataW[18]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [18]),
        .O(resultW[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_3
       (.I0(readdataW[21]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [21]),
        .O(resultW[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_4
       (.I0(readdataW[20]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [20]),
        .O(resultW[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_5
       (.I0(readdataW[23]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [23]),
        .O(resultW[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_18_23_i_6
       (.I0(readdataW[22]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [22]),
        .O(resultW[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_1
       (.I0(readdataW[25]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [25]),
        .O(resultW[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_2
       (.I0(readdataW[24]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [24]),
        .O(resultW[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_3
       (.I0(readdataW[27]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [27]),
        .O(resultW[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_4
       (.I0(readdataW[26]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [26]),
        .O(resultW[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_5
       (.I0(readdataW[29]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [29]),
        .O(resultW[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_24_29_i_6
       (.I0(readdataW[28]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [28]),
        .O(resultW[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_1
       (.I0(readdataW[31]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [31]),
        .O(resultW[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_30_31_i_2
       (.I0(readdataW[30]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [30]),
        .O(resultW[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_1
       (.I0(readdataW[7]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [7]),
        .O(resultW[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_2
       (.I0(readdataW[6]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [6]),
        .O(resultW[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_3
       (.I0(readdataW[9]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [9]),
        .O(resultW[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_4
       (.I0(readdataW[8]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [8]),
        .O(resultW[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_5
       (.I0(readdataW[11]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [11]),
        .O(resultW[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    rf_reg_r1_0_31_6_11_i_6
       (.I0(readdataW[10]),
        .I1(\q_reg[1]_0 ),
        .I2(\q_reg[31]_0 [10]),
        .O(resultW[10]));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized2
   (\q_reg[31] ,
    \q_reg[31]_0 ,
    \q_reg[4]_0 ,
    \q_reg[27] ,
    \q_reg[2]_0 ,
    \q_reg[22] ,
    \q_reg[3]_0 ,
    Q,
    \q_reg[3]_1 ,
    \q_reg[4]_1 ,
    D,
    CLK,
    AR);
  output \q_reg[31] ;
  output \q_reg[31]_0 ;
  output [4:0]\q_reg[4]_0 ;
  output \q_reg[27] ;
  input [1:0]\q_reg[2]_0 ;
  input \q_reg[22] ;
  input \q_reg[3]_0 ;
  input [4:0]Q;
  input \q_reg[3]_1 ;
  input [4:0]\q_reg[4]_1 ;
  input [4:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire \q[31]_i_15_n_0 ;
  wire \q[31]_i_4__1_n_0 ;
  wire \q[31]_i_5__0_n_0 ;
  wire \q[31]_i_6__0_n_0 ;
  wire \q[31]_i_9_n_0 ;
  wire \q_reg[22] ;
  wire \q_reg[27] ;
  wire [1:0]\q_reg[2]_0 ;
  wire \q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire [4:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_15 
       (.I0(\q_reg[4]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\q_reg[4]_0 [1]),
        .I4(Q[2]),
        .I5(\q_reg[4]_0 [2]),
        .O(\q[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_2__1 
       (.I0(\q[31]_i_4__1_n_0 ),
        .I1(\q[31]_i_5__0_n_0 ),
        .I2(\q[31]_i_6__0_n_0 ),
        .I3(\q_reg[3]_1 ),
        .O(\q_reg[27] ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \q[31]_i_4 
       (.I0(\q_reg[2]_0 [1]),
        .I1(\q[31]_i_9_n_0 ),
        .I2(\q_reg[3]_0 ),
        .O(\q_reg[31]_0 ));
  LUT5 #(
    .INIT(32'h6F6FFF6F)) 
    \q[31]_i_4__1 
       (.I0(\q_reg[4]_0 [2]),
        .I1(\q_reg[4]_1 [2]),
        .I2(\q_reg[2]_0 [0]),
        .I3(\q_reg[4]_1 [3]),
        .I4(\q_reg[4]_0 [3]),
        .O(\q[31]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \q[31]_i_5__0 
       (.I0(\q_reg[4]_0 [4]),
        .I1(\q_reg[4]_1 [4]),
        .I2(\q_reg[4]_0 [0]),
        .I3(\q_reg[4]_1 [0]),
        .O(\q[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'h6F66)) 
    \q[31]_i_6__0 
       (.I0(\q_reg[4]_0 [1]),
        .I1(\q_reg[4]_1 [1]),
        .I2(\q_reg[4]_1 [3]),
        .I3(\q_reg[4]_0 [3]),
        .O(\q[31]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'hBEFFFFBE)) 
    \q[31]_i_9 
       (.I0(\q[31]_i_15_n_0 ),
        .I1(Q[4]),
        .I2(\q_reg[4]_0 [4]),
        .I3(\q_reg[4]_0 [3]),
        .I4(Q[3]),
        .O(\q[31]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\q_reg[4]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\q_reg[4]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\q_reg[4]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\q_reg[4]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\q_reg[4]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h04)) 
    y1_carry__1_i_7
       (.I0(\q[31]_i_9_n_0 ),
        .I1(\q_reg[2]_0 [0]),
        .I2(\q_reg[22] ),
        .O(\q_reg[31] ));
endmodule

(* ORIG_REF_NAME = "flopr" *) 
module flopr__parameterized2_7
   (\q_reg[27] ,
    Q,
    \q_reg[2]_0 ,
    \q_reg[3]_0 ,
    \q_reg[4]_0 ,
    \q_reg[0]_0 ,
    \q_reg[2]_1 ,
    D,
    CLK,
    AR);
  output \q_reg[27] ;
  output [4:0]Q;
  output \q_reg[2]_0 ;
  input \q_reg[3]_0 ;
  input [4:0]\q_reg[4]_0 ;
  input [0:0]\q_reg[0]_0 ;
  input [1:0]\q_reg[2]_1 ;
  input [4:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire \q[31]_i_10__0_n_0 ;
  wire \q[31]_i_8__0_n_0 ;
  wire \q[31]_i_9__0_n_0 ;
  wire [0:0]\q_reg[0]_0 ;
  wire \q_reg[27] ;
  wire \q_reg[2]_0 ;
  wire [1:0]\q_reg[2]_1 ;
  wire \q_reg[3]_0 ;
  wire [4:0]\q_reg[4]_0 ;

  LUT5 #(
    .INIT(32'h6F6FFF6F)) 
    alu_out2_carry_i_15
       (.I0(Q[2]),
        .I1(\q_reg[2]_1 [1]),
        .I2(\q_reg[0]_0 ),
        .I3(Q[1]),
        .I4(\q_reg[2]_1 [0]),
        .O(\q_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h6F66)) 
    \q[31]_i_10__0 
       (.I0(Q[1]),
        .I1(\q_reg[4]_0 [1]),
        .I2(\q_reg[4]_0 [0]),
        .I3(Q[0]),
        .O(\q[31]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[31]_i_3__1 
       (.I0(\q[31]_i_8__0_n_0 ),
        .I1(\q[31]_i_9__0_n_0 ),
        .I2(\q[31]_i_10__0_n_0 ),
        .I3(\q_reg[3]_0 ),
        .O(\q_reg[27] ));
  LUT5 #(
    .INIT(32'h6F6FFF6F)) 
    \q[31]_i_8__0 
       (.I0(Q[4]),
        .I1(\q_reg[4]_0 [4]),
        .I2(\q_reg[0]_0 ),
        .I3(Q[2]),
        .I4(\q_reg[4]_0 [2]),
        .O(\q[31]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h66F666F6FFFF66F6)) 
    \q[31]_i_9__0 
       (.I0(Q[3]),
        .I1(\q_reg[4]_0 [3]),
        .I2(\q_reg[4]_0 [2]),
        .I3(Q[2]),
        .I4(\q_reg[4]_0 [0]),
        .I5(Q[0]),
        .O(\q[31]_i_9__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
endmodule

module floprc
   (D,
    Q,
    data5,
    data2,
    \q_reg[31] ,
    \q_reg[31]_0 ,
    srca2E,
    srcb3E,
    srcb2E,
    \q_reg[0]_0 ,
    CO,
    \q_reg[27] ,
    CLK,
    AR);
  output [31:0]D;
  output [4:0]Q;
  input [31:0]data5;
  input [31:0]data2;
  input \q_reg[31] ;
  input \q_reg[31]_0 ;
  input [30:0]srca2E;
  input [29:0]srcb3E;
  input [0:0]srcb2E;
  input [0:0]\q_reg[0]_0 ;
  input [0:0]CO;
  input [7:0]\q_reg[27] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [31:0]D;
  wire [4:0]Q;
  wire [2:0]alucontrolE;
  wire [31:0]data2;
  wire [31:0]data5;
  wire \q[0]_i_2__0_n_0 ;
  wire \q[0]_i_3_n_0 ;
  wire \q[0]_i_4_n_0 ;
  wire \q[0]_i_5_n_0 ;
  wire \q[10]_i_3_n_0 ;
  wire \q[11]_i_3_n_0 ;
  wire \q[12]_i_2_n_0 ;
  wire \q[13]_i_2_n_0 ;
  wire \q[14]_i_2_n_0 ;
  wire \q[15]_i_2_n_0 ;
  wire \q[16]_i_2_n_0 ;
  wire \q[17]_i_3_n_0 ;
  wire \q[18]_i_3_n_0 ;
  wire \q[19]_i_2_n_0 ;
  wire \q[1]_i_2__0_n_0 ;
  wire \q[20]_i_3_n_0 ;
  wire \q[21]_i_3_n_0 ;
  wire \q[22]_i_3_n_0 ;
  wire \q[23]_i_3_n_0 ;
  wire \q[24]_i_3_n_0 ;
  wire \q[25]_i_3_n_0 ;
  wire \q[26]_i_3_n_0 ;
  wire \q[27]_i_2_n_0 ;
  wire \q[28]_i_3_n_0 ;
  wire \q[29]_i_2_n_0 ;
  wire \q[2]_i_3__0_n_0 ;
  wire \q[30]_i_2_n_0 ;
  wire \q[31]_i_2__2_n_0 ;
  wire \q[3]_i_2_n_0 ;
  wire \q[4]_i_2__0_n_0 ;
  wire \q[5]_i_3_n_0 ;
  wire \q[6]_i_3_n_0 ;
  wire \q[7]_i_3_n_0 ;
  wire \q[8]_i_3_n_0 ;
  wire \q[9]_i_2_n_0 ;
  wire [0:0]\q_reg[0]_0 ;
  wire [7:0]\q_reg[27] ;
  wire \q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire [30:0]srca2E;
  wire [0:0]srcb2E;
  wire [29:0]srcb3E;

  LUT6 #(
    .INIT(64'h88888888AAA8A888)) 
    \q[0]_i_1__5 
       (.I0(\q[0]_i_2__0_n_0 ),
        .I1(\q[0]_i_3_n_0 ),
        .I2(\q[0]_i_4_n_0 ),
        .I3(alucontrolE[0]),
        .I4(srca2E[0]),
        .I5(\q[0]_i_5_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFD8FFFF)) 
    \q[0]_i_2__0 
       (.I0(alucontrolE[2]),
        .I1(data5[0]),
        .I2(data2[0]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h80AA)) 
    \q[0]_i_3 
       (.I0(alucontrolE[1]),
        .I1(CO),
        .I2(alucontrolE[2]),
        .I3(alucontrolE[0]),
        .O(\q[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \q[0]_i_4 
       (.I0(alucontrolE[2]),
        .I1(srcb2E),
        .I2(Q[2]),
        .I3(\q_reg[0]_0 ),
        .O(\q[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \q[0]_i_5 
       (.I0(alucontrolE[1]),
        .I1(alucontrolE[0]),
        .I2(alucontrolE[2]),
        .O(\q[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[10]_i_1__2 
       (.I0(alucontrolE[1]),
        .I1(srca2E[10]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[9]),
        .I4(alucontrolE[2]),
        .I5(\q[10]_i_3_n_0 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[10]_i_3 
       (.I0(data5[10]),
        .I1(alucontrolE[2]),
        .I2(data2[10]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[11]_i_1__2 
       (.I0(alucontrolE[1]),
        .I1(srca2E[11]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[10]),
        .I4(alucontrolE[2]),
        .I5(\q[11]_i_3_n_0 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[11]_i_3 
       (.I0(data5[11]),
        .I1(alucontrolE[2]),
        .I2(data2[11]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[12]_i_1__2 
       (.I0(\q[12]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[12]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[11]),
        .I5(alucontrolE[2]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[12]_i_2 
       (.I0(data5[12]),
        .I1(alucontrolE[2]),
        .I2(data2[12]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[13]_i_1__2 
       (.I0(\q[13]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[13]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[12]),
        .I5(alucontrolE[2]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[13]_i_2 
       (.I0(data5[13]),
        .I1(alucontrolE[2]),
        .I2(data2[13]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[14]_i_1__2 
       (.I0(\q[14]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[14]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[13]),
        .I5(alucontrolE[2]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[14]_i_2 
       (.I0(data5[14]),
        .I1(alucontrolE[2]),
        .I2(data2[14]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[15]_i_1__1 
       (.I0(\q[15]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[15]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[14]),
        .I5(alucontrolE[2]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[15]_i_2 
       (.I0(data5[15]),
        .I1(alucontrolE[2]),
        .I2(data2[15]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[16]_i_1__1 
       (.I0(\q[16]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[16]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[15]),
        .I5(alucontrolE[2]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[16]_i_2 
       (.I0(data5[16]),
        .I1(alucontrolE[2]),
        .I2(data2[16]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[17]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[17]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[16]),
        .I4(alucontrolE[2]),
        .I5(\q[17]_i_3_n_0 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[17]_i_3 
       (.I0(data5[17]),
        .I1(alucontrolE[2]),
        .I2(data2[17]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[18]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[18]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[17]),
        .I4(alucontrolE[2]),
        .I5(\q[18]_i_3_n_0 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[18]_i_3 
       (.I0(data5[18]),
        .I1(alucontrolE[2]),
        .I2(data2[18]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[19]_i_1__1 
       (.I0(\q[19]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[19]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[18]),
        .I5(alucontrolE[2]),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[19]_i_2 
       (.I0(data5[19]),
        .I1(alucontrolE[2]),
        .I2(data2[19]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[1]_i_1__6 
       (.I0(\q[1]_i_2__0_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[1]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[0]),
        .I5(alucontrolE[2]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[1]_i_2__0 
       (.I0(data5[1]),
        .I1(alucontrolE[2]),
        .I2(data2[1]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[20]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[20]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[19]),
        .I4(alucontrolE[2]),
        .I5(\q[20]_i_3_n_0 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[20]_i_3 
       (.I0(data5[20]),
        .I1(alucontrolE[2]),
        .I2(data2[20]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[21]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[21]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[20]),
        .I4(alucontrolE[2]),
        .I5(\q[21]_i_3_n_0 ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[21]_i_3 
       (.I0(data5[21]),
        .I1(alucontrolE[2]),
        .I2(data2[21]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[22]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[22]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[21]),
        .I4(alucontrolE[2]),
        .I5(\q[22]_i_3_n_0 ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[22]_i_3 
       (.I0(data5[22]),
        .I1(alucontrolE[2]),
        .I2(data2[22]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[23]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[23]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[22]),
        .I4(alucontrolE[2]),
        .I5(\q[23]_i_3_n_0 ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[23]_i_3 
       (.I0(data5[23]),
        .I1(alucontrolE[2]),
        .I2(data2[23]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[24]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[24]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[23]),
        .I4(alucontrolE[2]),
        .I5(\q[24]_i_3_n_0 ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[24]_i_3 
       (.I0(data5[24]),
        .I1(alucontrolE[2]),
        .I2(data2[24]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[25]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[25]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[24]),
        .I4(alucontrolE[2]),
        .I5(\q[25]_i_3_n_0 ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[25]_i_3 
       (.I0(data5[25]),
        .I1(alucontrolE[2]),
        .I2(data2[25]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[26]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[26]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[25]),
        .I4(alucontrolE[2]),
        .I5(\q[26]_i_3_n_0 ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[26]_i_3 
       (.I0(data5[26]),
        .I1(alucontrolE[2]),
        .I2(data2[26]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[27]_i_1__1 
       (.I0(\q[27]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[27]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[26]),
        .I5(alucontrolE[2]),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[27]_i_2 
       (.I0(data5[27]),
        .I1(alucontrolE[2]),
        .I2(data2[27]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[28]_i_1__1 
       (.I0(alucontrolE[1]),
        .I1(srca2E[28]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[27]),
        .I4(alucontrolE[2]),
        .I5(\q[28]_i_3_n_0 ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[28]_i_3 
       (.I0(data5[28]),
        .I1(alucontrolE[2]),
        .I2(data2[28]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[29]_i_1__1 
       (.I0(\q[29]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[29]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[28]),
        .I5(alucontrolE[2]),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[29]_i_2 
       (.I0(data5[29]),
        .I1(alucontrolE[2]),
        .I2(data2[29]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[2]_i_1__6 
       (.I0(alucontrolE[1]),
        .I1(srca2E[2]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[1]),
        .I4(alucontrolE[2]),
        .I5(\q[2]_i_3__0_n_0 ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[2]_i_3__0 
       (.I0(data5[2]),
        .I1(alucontrolE[2]),
        .I2(data2[2]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[30]_i_1__1 
       (.I0(\q[30]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[30]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[29]),
        .I5(alucontrolE[2]),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[30]_i_2 
       (.I0(data5[30]),
        .I1(alucontrolE[2]),
        .I2(data2[30]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABABABBBABBAABA)) 
    \q[31]_i_1__3 
       (.I0(\q[31]_i_2__2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(alucontrolE[0]),
        .I3(\q_reg[31] ),
        .I4(\q_reg[31]_0 ),
        .I5(alucontrolE[2]),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[31]_i_2__2 
       (.I0(data5[31]),
        .I1(alucontrolE[2]),
        .I2(data2[31]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[31]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[3]_i_1__4 
       (.I0(\q[3]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[3]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[2]),
        .I5(alucontrolE[2]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[3]_i_2 
       (.I0(data5[3]),
        .I1(alucontrolE[2]),
        .I2(data2[3]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[4]_i_1__6 
       (.I0(\q[4]_i_2__0_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[4]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[3]),
        .I5(alucontrolE[2]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[4]_i_2__0 
       (.I0(data5[4]),
        .I1(alucontrolE[2]),
        .I2(data2[4]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[5]_i_1__3 
       (.I0(alucontrolE[1]),
        .I1(srca2E[5]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[4]),
        .I4(alucontrolE[2]),
        .I5(\q[5]_i_3_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[5]_i_3 
       (.I0(data5[5]),
        .I1(alucontrolE[2]),
        .I2(data2[5]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[6]_i_1__3 
       (.I0(alucontrolE[1]),
        .I1(srca2E[6]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[5]),
        .I4(alucontrolE[2]),
        .I5(\q[6]_i_3_n_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[6]_i_3 
       (.I0(data5[6]),
        .I1(alucontrolE[2]),
        .I2(data2[6]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[7]_i_1__3 
       (.I0(alucontrolE[1]),
        .I1(srca2E[7]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[6]),
        .I4(alucontrolE[2]),
        .I5(\q[7]_i_3_n_0 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[7]_i_3 
       (.I0(data5[7]),
        .I1(alucontrolE[2]),
        .I2(data2[7]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40545440)) 
    \q[8]_i_1__2 
       (.I0(alucontrolE[1]),
        .I1(srca2E[8]),
        .I2(alucontrolE[0]),
        .I3(srcb3E[7]),
        .I4(alucontrolE[2]),
        .I5(\q[8]_i_3_n_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[8]_i_3 
       (.I0(data5[8]),
        .I1(alucontrolE[2]),
        .I2(data2[8]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAAABBBABBBABAAA)) 
    \q[9]_i_1__2 
       (.I0(\q[9]_i_2_n_0 ),
        .I1(alucontrolE[1]),
        .I2(srca2E[9]),
        .I3(alucontrolE[0]),
        .I4(srcb3E[8]),
        .I5(alucontrolE[2]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h00B80000)) 
    \q[9]_i_2 
       (.I0(data5[9]),
        .I1(alucontrolE[2]),
        .I2(data2[9]),
        .I3(alucontrolE[0]),
        .I4(alucontrolE[1]),
        .O(\q[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [0]),
        .Q(alucontrolE[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [1]),
        .Q(alucontrolE[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [2]),
        .Q(alucontrolE[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [3]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [4]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [5]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [6]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[27] [7]),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0
   (Q,
    D,
    CLK,
    AR);
  output [31:0]Q;
  input [31:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [31:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(Q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(Q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(Q[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(Q[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(Q[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[28]),
        .Q(Q[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[29]),
        .Q(Q[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[30]),
        .Q(Q[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[31]),
        .Q(Q[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0_3
   (\q_reg[11]_0 ,
    \q_reg[11]_1 ,
    \q_reg[9]_0 ,
    \q_reg[7]_0 ,
    \q_reg[7]_1 ,
    \q_reg[4]_0 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    \q_reg[2]_0 ,
    \q_reg[0]_0 ,
    D,
    Q,
    srcb3E,
    \q_reg[11]_2 ,
    \q_reg[7]_2 ,
    \q_reg[3]_2 ,
    signimmE,
    \q_reg[5]_0 ,
    \q_reg[31]_0 ,
    \q_reg[2]_1 ,
    resultW,
    \q_reg[4]_1 ,
    \q_reg[7]_3 ,
    CLK,
    AR);
  output [1:0]\q_reg[11]_0 ;
  output \q_reg[11]_1 ;
  output \q_reg[9]_0 ;
  output [1:0]\q_reg[7]_0 ;
  output \q_reg[7]_1 ;
  output \q_reg[4]_0 ;
  output [2:0]\q_reg[3]_0 ;
  output \q_reg[3]_1 ;
  output \q_reg[2]_0 ;
  output \q_reg[0]_0 ;
  output [20:0]D;
  output [10:0]Q;
  output [0:0]srcb3E;
  input [1:0]\q_reg[11]_2 ;
  input [1:0]\q_reg[7]_2 ;
  input [2:0]\q_reg[3]_2 ;
  input [6:0]signimmE;
  input [0:0]\q_reg[5]_0 ;
  input [20:0]\q_reg[31]_0 ;
  input \q_reg[2]_1 ;
  input [20:0]resultW;
  input \q_reg[4]_1 ;
  input [31:0]\q_reg[7]_3 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [20:0]D;
  wire [10:0]Q;
  wire \q_reg[0]_0 ;
  wire [1:0]\q_reg[11]_0 ;
  wire \q_reg[11]_1 ;
  wire [1:0]\q_reg[11]_2 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [20:0]\q_reg[31]_0 ;
  wire [2:0]\q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire [2:0]\q_reg[3]_2 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_1 ;
  wire [0:0]\q_reg[5]_0 ;
  wire [1:0]\q_reg[7]_0 ;
  wire \q_reg[7]_1 ;
  wire [1:0]\q_reg[7]_2 ;
  wire [31:0]\q_reg[7]_3 ;
  wire \q_reg[9]_0 ;
  wire [20:0]resultW;
  wire [6:0]signimmE;
  wire [0:0]srcb3E;
  wire [31:1]srcbE;

  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__0_i_5
       (.I0(\q_reg[7]_1 ),
        .I1(\q_reg[7]_2 [1]),
        .O(\q_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__0_i_8
       (.I0(\q_reg[4]_0 ),
        .I1(\q_reg[7]_2 [0]),
        .O(\q_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__1_i_5
       (.I0(\q_reg[11]_1 ),
        .I1(\q_reg[11]_2 [1]),
        .O(\q_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__1_i_7
       (.I0(\q_reg[9]_0 ),
        .I1(\q_reg[11]_2 [0]),
        .O(\q_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry_i_5
       (.I0(\q_reg[3]_1 ),
        .I1(\q_reg[3]_2 [2]),
        .O(\q_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry_i_6
       (.I0(\q_reg[2]_0 ),
        .I1(\q_reg[3]_2 [1]),
        .O(\q_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'h35CA)) 
    alu_out2_carry_i_7
       (.I0(D[0]),
        .I1(signimmE[0]),
        .I2(\q_reg[5]_0 ),
        .I3(\q_reg[3]_2 [0]),
        .O(\q_reg[3]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h35CA)) 
    alu_out8_carry_i_9
       (.I0(D[0]),
        .I1(signimmE[0]),
        .I2(\q_reg[5]_0 ),
        .I3(\q_reg[3]_2 [0]),
        .O(\q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[11]_i_1__3 
       (.I0(srcbE[11]),
        .I1(\q_reg[31]_0 [6]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[6]),
        .I4(\q_reg[4]_1 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[11]_i_2 
       (.I0(D[6]),
        .I1(signimmE[6]),
        .I2(\q_reg[5]_0 ),
        .O(\q_reg[11]_1 ));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[16]_i_1__2 
       (.I0(srcbE[16]),
        .I1(\q_reg[31]_0 [7]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[7]),
        .I4(\q_reg[4]_1 ),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[17]_i_1__2 
       (.I0(srcbE[17]),
        .I1(\q_reg[31]_0 [8]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[8]),
        .I4(\q_reg[4]_1 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[18]_i_1__2 
       (.I0(srcbE[18]),
        .I1(\q_reg[31]_0 [9]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[9]),
        .I4(\q_reg[4]_1 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[19]_i_1__2 
       (.I0(srcbE[19]),
        .I1(\q_reg[31]_0 [10]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[10]),
        .I4(\q_reg[4]_1 ),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[1]_i_1__7 
       (.I0(srcbE[1]),
        .I1(\q_reg[31]_0 [0]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[0]),
        .I4(\q_reg[4]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[1]_i_3 
       (.I0(D[0]),
        .I1(signimmE[0]),
        .I2(\q_reg[5]_0 ),
        .O(srcb3E));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[20]_i_1__2 
       (.I0(srcbE[20]),
        .I1(\q_reg[31]_0 [11]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[11]),
        .I4(\q_reg[4]_1 ),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[21]_i_1__2 
       (.I0(srcbE[21]),
        .I1(\q_reg[31]_0 [12]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[12]),
        .I4(\q_reg[4]_1 ),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[22]_i_1__2 
       (.I0(srcbE[22]),
        .I1(\q_reg[31]_0 [13]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[13]),
        .I4(\q_reg[4]_1 ),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[23]_i_1__2 
       (.I0(srcbE[23]),
        .I1(\q_reg[31]_0 [14]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[14]),
        .I4(\q_reg[4]_1 ),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[24]_i_1__2 
       (.I0(srcbE[24]),
        .I1(\q_reg[31]_0 [15]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[15]),
        .I4(\q_reg[4]_1 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[25]_i_1__2 
       (.I0(srcbE[25]),
        .I1(\q_reg[31]_0 [16]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[16]),
        .I4(\q_reg[4]_1 ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[28]_i_1__2 
       (.I0(srcbE[28]),
        .I1(\q_reg[31]_0 [17]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[17]),
        .I4(\q_reg[4]_1 ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[29]_i_1__2 
       (.I0(srcbE[29]),
        .I1(\q_reg[31]_0 [18]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[18]),
        .I4(\q_reg[4]_1 ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hAAF0CCCC)) 
    \q[2]_i_1__7 
       (.I0(srcbE[2]),
        .I1(\q_reg[31]_0 [1]),
        .I2(resultW[1]),
        .I3(\q_reg[4]_1 ),
        .I4(\q_reg[2]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[2]_i_2 
       (.I0(D[1]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[1]),
        .O(\q_reg[2]_0 ));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[30]_i_1__2 
       (.I0(srcbE[30]),
        .I1(\q_reg[31]_0 [19]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[19]),
        .I4(\q_reg[4]_1 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[31]_i_1__4 
       (.I0(srcbE[31]),
        .I1(\q_reg[31]_0 [20]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[20]),
        .I4(\q_reg[4]_1 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[3]_i_1__5 
       (.I0(srcbE[3]),
        .I1(\q_reg[31]_0 [2]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[2]),
        .I4(\q_reg[4]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[3]_i_3 
       (.I0(D[2]),
        .I1(signimmE[2]),
        .I2(\q_reg[5]_0 ),
        .O(\q_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hAAF0CCCC)) 
    \q[4]_i_1__7 
       (.I0(srcbE[4]),
        .I1(\q_reg[31]_0 [3]),
        .I2(resultW[3]),
        .I3(\q_reg[4]_1 ),
        .I4(\q_reg[2]_1 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \q[4]_i_3 
       (.I0(D[3]),
        .I1(\q_reg[5]_0 ),
        .I2(signimmE[3]),
        .O(\q_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[7]_i_1__4 
       (.I0(srcbE[7]),
        .I1(\q_reg[31]_0 [4]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[4]),
        .I4(\q_reg[4]_1 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[7]_i_2 
       (.I0(D[4]),
        .I1(signimmE[4]),
        .I2(\q_reg[5]_0 ),
        .O(\q_reg[7]_1 ));
  LUT5 #(
    .INIT(32'hACACFC0C)) 
    \q[9]_i_1__3 
       (.I0(srcbE[9]),
        .I1(\q_reg[31]_0 [5]),
        .I2(\q_reg[2]_1 ),
        .I3(resultW[5]),
        .I4(\q_reg[4]_1 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \q[9]_i_3 
       (.I0(D[5]),
        .I1(signimmE[5]),
        .I2(\q_reg[5]_0 ),
        .O(\q_reg[9]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [10]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [11]),
        .Q(srcbE[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [12]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [13]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [14]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [15]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [16]),
        .Q(srcbE[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [17]),
        .Q(srcbE[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [18]),
        .Q(srcbE[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [19]),
        .Q(srcbE[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [1]),
        .Q(srcbE[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [20]),
        .Q(srcbE[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [21]),
        .Q(srcbE[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [22]),
        .Q(srcbE[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [23]),
        .Q(srcbE[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [24]),
        .Q(srcbE[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [25]),
        .Q(srcbE[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [26]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [27]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [28]),
        .Q(srcbE[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [29]),
        .Q(srcbE[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [2]),
        .Q(srcbE[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [30]),
        .Q(srcbE[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [31]),
        .Q(srcbE[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [3]),
        .Q(srcbE[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [4]),
        .Q(srcbE[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [5]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [6]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [7]),
        .Q(srcbE[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [8]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[7]_3 [9]),
        .Q(srcbE[9]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized0_6
   (signimmE,
    \q_reg[31]_0 ,
    \q_reg[30] ,
    \q_reg[29] ,
    \q_reg[28] ,
    \q_reg[27] ,
    \q_reg[27]_0 ,
    \q_reg[26] ,
    \q_reg[25] ,
    \q_reg[24] ,
    \q_reg[23] ,
    \q_reg[23]_0 ,
    \q_reg[22] ,
    \q_reg[21] ,
    \q_reg[20] ,
    \q_reg[19] ,
    \q_reg[19]_0 ,
    \q_reg[18] ,
    \q_reg[17] ,
    \q_reg[16] ,
    \q_reg[15] ,
    \q_reg[3]_0 ,
    Q,
    \q_reg[3]_1 ,
    S,
    \q_reg[31]_1 ,
    \q_reg[4]_0 ,
    \q_reg[0]_0 ,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    srcb3E,
    p_0_in,
    CLK,
    AR,
    \q_reg[30]_0 ,
    \q_reg[27]_1 ,
    \q_reg[23]_1 ,
    \q_reg[19]_1 ,
    \q_reg[5]_0 ,
    D,
    \q_reg[15]_0 ,
    \q_reg[0]_1 ,
    \q_reg[1]_0 ,
    \q_reg[18]_0 ,
    \q_reg[4]_1 ,
    \q_reg[31]_4 ,
    \q_reg[2]_0 );
  output [14:0]signimmE;
  output [2:0]\q_reg[31]_0 ;
  output \q_reg[30] ;
  output \q_reg[29] ;
  output \q_reg[28] ;
  output [3:0]\q_reg[27] ;
  output \q_reg[27]_0 ;
  output \q_reg[26] ;
  output \q_reg[25] ;
  output \q_reg[24] ;
  output [3:0]\q_reg[23] ;
  output \q_reg[23]_0 ;
  output \q_reg[22] ;
  output \q_reg[21] ;
  output \q_reg[20] ;
  output [3:0]\q_reg[19] ;
  output \q_reg[19]_0 ;
  output \q_reg[18] ;
  output \q_reg[17] ;
  output \q_reg[16] ;
  output [0:0]\q_reg[15] ;
  output [0:0]\q_reg[3]_0 ;
  output [0:0]Q;
  output [0:0]\q_reg[3]_1 ;
  output [0:0]S;
  output \q_reg[31]_1 ;
  output [4:0]\q_reg[4]_0 ;
  output [0:0]\q_reg[0]_0 ;
  output \q_reg[31]_2 ;
  output [0:0]\q_reg[31]_3 ;
  output [0:0]srcb3E;
  input [13:0]p_0_in;
  input CLK;
  input [0:0]AR;
  input [2:0]\q_reg[30]_0 ;
  input [3:0]\q_reg[27]_1 ;
  input [3:0]\q_reg[23]_1 ;
  input [3:0]\q_reg[19]_1 ;
  input [1:0]\q_reg[5]_0 ;
  input [17:0]D;
  input [0:0]\q_reg[15]_0 ;
  input [0:0]\q_reg[0]_1 ;
  input \q_reg[1]_0 ;
  input [2:0]\q_reg[18]_0 ;
  input [4:0]\q_reg[4]_1 ;
  input \q_reg[31]_4 ;
  input [1:0]\q_reg[2]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [17:0]D;
  wire [0:0]Q;
  wire [0:0]S;
  wire [13:0]p_0_in;
  wire [0:0]\q_reg[0]_0 ;
  wire [0:0]\q_reg[0]_1 ;
  wire [0:0]\q_reg[15] ;
  wire [0:0]\q_reg[15]_0 ;
  wire \q_reg[16] ;
  wire \q_reg[17] ;
  wire \q_reg[18] ;
  wire [2:0]\q_reg[18]_0 ;
  wire [3:0]\q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire [3:0]\q_reg[19]_1 ;
  wire \q_reg[1]_0 ;
  wire \q_reg[20] ;
  wire \q_reg[21] ;
  wire \q_reg[22] ;
  wire [3:0]\q_reg[23] ;
  wire \q_reg[23]_0 ;
  wire [3:0]\q_reg[23]_1 ;
  wire \q_reg[24] ;
  wire \q_reg[25] ;
  wire \q_reg[26] ;
  wire [3:0]\q_reg[27] ;
  wire \q_reg[27]_0 ;
  wire [3:0]\q_reg[27]_1 ;
  wire \q_reg[28] ;
  wire \q_reg[29] ;
  wire [1:0]\q_reg[2]_0 ;
  wire \q_reg[30] ;
  wire [2:0]\q_reg[30]_0 ;
  wire [2:0]\q_reg[31]_0 ;
  wire \q_reg[31]_1 ;
  wire \q_reg[31]_2 ;
  wire [0:0]\q_reg[31]_3 ;
  wire \q_reg[31]_4 ;
  wire [0:0]\q_reg[3]_0 ;
  wire [0:0]\q_reg[3]_1 ;
  wire [4:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire [1:0]\q_reg[5]_0 ;
  wire [14:0]signimmE;
  wire [0:0]srcb3E;

  LUT4 #(
    .INIT(16'h47B8)) 
    alu_out2_carry__2_i_5
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[1]),
        .I3(\q_reg[15]_0 ),
        .O(\q_reg[15] ));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__3_i_5
       (.I0(\q_reg[19]_0 ),
        .I1(\q_reg[19]_1 [3]),
        .O(\q_reg[19] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__3_i_6
       (.I0(\q_reg[18] ),
        .I1(\q_reg[19]_1 [2]),
        .O(\q_reg[19] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__3_i_7
       (.I0(\q_reg[17] ),
        .I1(\q_reg[19]_1 [1]),
        .O(\q_reg[19] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__3_i_8
       (.I0(\q_reg[16] ),
        .I1(\q_reg[19]_1 [0]),
        .O(\q_reg[19] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__4_i_5
       (.I0(\q_reg[23]_0 ),
        .I1(\q_reg[23]_1 [3]),
        .O(\q_reg[23] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__4_i_6
       (.I0(\q_reg[22] ),
        .I1(\q_reg[23]_1 [2]),
        .O(\q_reg[23] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__4_i_7
       (.I0(\q_reg[21] ),
        .I1(\q_reg[23]_1 [1]),
        .O(\q_reg[23] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__4_i_8
       (.I0(\q_reg[20] ),
        .I1(\q_reg[23]_1 [0]),
        .O(\q_reg[23] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__5_i_5
       (.I0(\q_reg[27]_0 ),
        .I1(\q_reg[27]_1 [3]),
        .O(\q_reg[27] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__5_i_6
       (.I0(\q_reg[26] ),
        .I1(\q_reg[27]_1 [2]),
        .O(\q_reg[27] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__5_i_7
       (.I0(\q_reg[25] ),
        .I1(\q_reg[27]_1 [1]),
        .O(\q_reg[27] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__5_i_8
       (.I0(\q_reg[24] ),
        .I1(\q_reg[27]_1 [0]),
        .O(\q_reg[27] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__6_i_5
       (.I0(\q_reg[30] ),
        .I1(\q_reg[30]_0 [2]),
        .O(\q_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__6_i_6
       (.I0(\q_reg[29] ),
        .I1(\q_reg[30]_0 [1]),
        .O(\q_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out2_carry__6_i_7
       (.I0(\q_reg[28] ),
        .I1(\q_reg[30]_0 [0]),
        .O(\q_reg[31]_0 [0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    alu_out2_carry_i_8
       (.I0(Q),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[0]),
        .I3(\q_reg[0]_1 ),
        .O(\q_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h6)) 
    alu_out5_carry__6_i_1
       (.I0(\q_reg[31]_2 ),
        .I1(\q_reg[31]_4 ),
        .O(\q_reg[31]_3 ));
  LUT4 #(
    .INIT(16'hB847)) 
    alu_out5_carry_i_4
       (.I0(Q),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[0]),
        .I3(\q_reg[0]_1 ),
        .O(\q_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h88E8)) 
    alu_out8_carry__2_i_1
       (.I0(\q_reg[31]_2 ),
        .I1(\q_reg[31]_4 ),
        .I2(\q_reg[30] ),
        .I3(\q_reg[30]_0 [2]),
        .O(\q_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00B80047)) 
    alu_out8_carry_i_8
       (.I0(Q),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[0]),
        .I3(\q_reg[1]_0 ),
        .I4(\q_reg[0]_1 ),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[0]_i_1__4 
       (.I0(signimmE[10]),
        .I1(\q_reg[5]_0 [0]),
        .I2(\q_reg[4]_1 [0]),
        .O(\q_reg[4]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[15]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[1]),
        .O(srcb3E));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[16]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[2]),
        .O(\q_reg[16] ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[17]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[3]),
        .O(\q_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[18]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[4]),
        .O(\q_reg[18] ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[19]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[5]),
        .O(\q_reg[19]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[1]_i_1__5 
       (.I0(signimmE[11]),
        .I1(\q_reg[5]_0 [0]),
        .I2(\q_reg[4]_1 [1]),
        .O(\q_reg[4]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[20]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[6]),
        .O(\q_reg[20] ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[21]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[7]),
        .O(\q_reg[21] ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[22]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[8]),
        .O(\q_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[23]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[9]),
        .O(\q_reg[23]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[24]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[10]),
        .O(\q_reg[24] ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[25]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[11]),
        .O(\q_reg[25] ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[26]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[12]),
        .O(\q_reg[26] ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[27]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[13]),
        .O(\q_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[28]_i_2 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[14]),
        .O(\q_reg[28] ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[29]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[15]),
        .O(\q_reg[29] ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[2]_i_1__5 
       (.I0(signimmE[12]),
        .I1(\q_reg[5]_0 [0]),
        .I2(\q_reg[4]_1 [2]),
        .O(\q_reg[4]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[30]_i_3 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[16]),
        .O(\q_reg[30] ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_12 
       (.I0(\q_reg[4]_0 [0]),
        .I1(\q_reg[18]_0 [0]),
        .I2(\q_reg[18]_0 [2]),
        .I3(\q_reg[4]_0 [2]),
        .I4(\q_reg[18]_0 [1]),
        .I5(\q_reg[4]_0 [1]),
        .O(\q_reg[31]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[31]_i_4__0 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [1]),
        .I2(D[17]),
        .O(\q_reg[31]_2 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \q[3]_i_1__3 
       (.I0(signimmE[13]),
        .I1(\q_reg[5]_0 [0]),
        .I2(\q_reg[4]_1 [3]),
        .O(\q_reg[4]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \q[4]_i_1__5 
       (.I0(signimmE[14]),
        .I1(\q_reg[5]_0 [0]),
        .I2(\q_reg[4]_1 [4]),
        .O(\q_reg[4]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[2]_0 [0]),
        .Q(Q));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(signimmE[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(signimmE[10]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(signimmE[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(signimmE[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(signimmE[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(signimmE[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[2]_0 [1]),
        .Q(signimmE[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(signimmE[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(signimmE[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(signimmE[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(signimmE[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(signimmE[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(signimmE[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(signimmE[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(signimmE[8]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized1
   (\q_reg[31] ,
    \q_reg[30] ,
    \q_reg[27] ,
    \q_reg[27]_0 ,
    \q_reg[23] ,
    \q_reg[23]_0 ,
    \q_reg[19] ,
    \q_reg[19]_0 ,
    \q_reg[15] ,
    \q_reg[15]_0 ,
    \q_reg[11] ,
    \q_reg[11]_0 ,
    \q_reg[7] ,
    \q_reg[7]_0 ,
    \q_reg[3]_0 ,
    \q_reg[3]_1 ,
    DI,
    \q_reg[31]_0 ,
    \q_reg[0]_0 ,
    \q_reg[0]_1 ,
    \q_reg[31]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    S,
    \q_reg[2]_0 ,
    srcb3E,
    D,
    \q_reg[5] ,
    signimmE,
    Q,
    \q_reg[31]_2 ,
    \q_reg[31]_3 ,
    resultW,
    \q_reg[31]_4 ,
    \q_reg[2]_1 ,
    \q_reg[4]_0 ,
    \q_reg[4]_1 ,
    \q_reg[0]_6 ,
    \q_reg[25] ,
    CLK,
    AR);
  output [2:0]\q_reg[31] ;
  output [2:0]\q_reg[30] ;
  output [3:0]\q_reg[27] ;
  output [3:0]\q_reg[27]_0 ;
  output [3:0]\q_reg[23] ;
  output [3:0]\q_reg[23]_0 ;
  output [3:0]\q_reg[19] ;
  output [3:0]\q_reg[19]_0 ;
  output [3:0]\q_reg[15] ;
  output [3:0]\q_reg[15]_0 ;
  output [3:0]\q_reg[11] ;
  output [3:0]\q_reg[11]_0 ;
  output [3:0]\q_reg[7] ;
  output [3:0]\q_reg[7]_0 ;
  output [2:0]\q_reg[3]_0 ;
  output [3:0]\q_reg[3]_1 ;
  output [3:0]DI;
  output \q_reg[31]_0 ;
  output [3:0]\q_reg[0]_0 ;
  output [3:0]\q_reg[0]_1 ;
  output [0:0]\q_reg[31]_1 ;
  output [2:0]\q_reg[0]_2 ;
  output [3:0]\q_reg[0]_3 ;
  output [3:0]\q_reg[0]_4 ;
  output [3:0]\q_reg[0]_5 ;
  output [2:0]S;
  output [1:0]\q_reg[2]_0 ;
  input [29:0]srcb3E;
  input [2:0]D;
  input [0:0]\q_reg[5] ;
  input [1:0]signimmE;
  input [0:0]Q;
  input [31:0]\q_reg[31]_2 ;
  input [31:0]\q_reg[31]_3 ;
  input [31:0]resultW;
  input \q_reg[31]_4 ;
  input \q_reg[2]_1 ;
  input [3:0]\q_reg[4]_0 ;
  input [4:0]\q_reg[4]_1 ;
  input [0:0]\q_reg[0]_6 ;
  input [4:0]\q_reg[25] ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [2:0]S;
  wire alu_out2_carry_i_10_n_0;
  wire alu_out2_carry_i_11_n_0;
  wire alu_out2_carry_i_12_n_0;
  wire alu_out2_carry_i_13_n_0;
  wire alu_out2_carry_i_14_n_0;
  wire alu_out2_carry_i_16_n_0;
  wire alu_out2_carry_i_17_n_0;
  wire alu_out2_carry_i_9_n_0;
  wire [3:0]\q_reg[0]_0 ;
  wire [3:0]\q_reg[0]_1 ;
  wire [2:0]\q_reg[0]_2 ;
  wire [3:0]\q_reg[0]_3 ;
  wire [3:0]\q_reg[0]_4 ;
  wire [3:0]\q_reg[0]_5 ;
  wire [0:0]\q_reg[0]_6 ;
  wire [3:0]\q_reg[11] ;
  wire [3:0]\q_reg[11]_0 ;
  wire [3:0]\q_reg[15] ;
  wire [3:0]\q_reg[15]_0 ;
  wire [3:0]\q_reg[19] ;
  wire [3:0]\q_reg[19]_0 ;
  wire [3:0]\q_reg[23] ;
  wire [3:0]\q_reg[23]_0 ;
  wire [4:0]\q_reg[25] ;
  wire [3:0]\q_reg[27] ;
  wire [3:0]\q_reg[27]_0 ;
  wire [1:0]\q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire [2:0]\q_reg[30] ;
  wire [2:0]\q_reg[31] ;
  wire \q_reg[31]_0 ;
  wire [0:0]\q_reg[31]_1 ;
  wire [31:0]\q_reg[31]_2 ;
  wire [31:0]\q_reg[31]_3 ;
  wire \q_reg[31]_4 ;
  wire [2:0]\q_reg[3]_0 ;
  wire [3:0]\q_reg[3]_1 ;
  wire [3:0]\q_reg[4]_0 ;
  wire [4:0]\q_reg[4]_1 ;
  wire [0:0]\q_reg[5] ;
  wire [3:0]\q_reg[7] ;
  wire [3:0]\q_reg[7]_0 ;
  wire [31:0]resultW;
  wire [4:0]rsE;
  wire [1:0]signimmE;
  wire [29:0]srcb3E;

  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__0_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [7]),
        .I3(\q_reg[31]_3 [7]),
        .I4(resultW[7]),
        .O(\q_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__0_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [6]),
        .I3(resultW[6]),
        .I4(\q_reg[31]_2 [6]),
        .O(\q_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__0_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [5]),
        .I3(\q_reg[31]_3 [5]),
        .I4(resultW[5]),
        .O(\q_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__0_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [4]),
        .I3(\q_reg[31]_3 [4]),
        .I4(resultW[4]),
        .O(\q_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__1_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [11]),
        .I3(\q_reg[31]_3 [11]),
        .I4(resultW[11]),
        .O(\q_reg[11]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__1_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [10]),
        .I3(resultW[10]),
        .I4(\q_reg[31]_2 [10]),
        .O(\q_reg[11]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__1_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [9]),
        .I3(\q_reg[31]_3 [9]),
        .I4(resultW[9]),
        .O(\q_reg[11]_0 [1]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__1_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [8]),
        .I3(\q_reg[31]_3 [8]),
        .I4(resultW[8]),
        .O(\q_reg[11]_0 [0]));
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    alu_out2_carry__2_i_1
       (.I0(\q_reg[31]_2 [15]),
        .I1(\q_reg[31]_3 [15]),
        .I2(resultW[15]),
        .I3(alu_out2_carry_i_9_n_0),
        .I4(alu_out2_carry_i_10_n_0),
        .O(\q_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__2_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [14]),
        .I3(resultW[14]),
        .I4(\q_reg[31]_2 [14]),
        .O(\q_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__2_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [13]),
        .I3(\q_reg[31]_3 [13]),
        .I4(resultW[13]),
        .O(\q_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__2_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [12]),
        .I3(resultW[12]),
        .I4(\q_reg[31]_2 [12]),
        .O(\q_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__3_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [19]),
        .I3(\q_reg[31]_3 [19]),
        .I4(resultW[19]),
        .O(\q_reg[19]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__3_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [18]),
        .I3(resultW[18]),
        .I4(\q_reg[31]_2 [18]),
        .O(\q_reg[19]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__3_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [17]),
        .I3(\q_reg[31]_3 [17]),
        .I4(resultW[17]),
        .O(\q_reg[19]_0 [1]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__3_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [16]),
        .I3(resultW[16]),
        .I4(\q_reg[31]_2 [16]),
        .O(\q_reg[19]_0 [0]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__4_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [23]),
        .I3(\q_reg[31]_3 [23]),
        .I4(resultW[23]),
        .O(\q_reg[23]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__4_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [22]),
        .I3(resultW[22]),
        .I4(\q_reg[31]_2 [22]),
        .O(\q_reg[23]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__4_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [21]),
        .I3(\q_reg[31]_3 [21]),
        .I4(resultW[21]),
        .O(\q_reg[23]_0 [1]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__4_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [20]),
        .I3(\q_reg[31]_3 [20]),
        .I4(resultW[20]),
        .O(\q_reg[23]_0 [0]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__5_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [27]),
        .I3(\q_reg[31]_3 [27]),
        .I4(resultW[27]),
        .O(\q_reg[27]_0 [3]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__5_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [26]),
        .I3(resultW[26]),
        .I4(\q_reg[31]_2 [26]),
        .O(\q_reg[27]_0 [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__5_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [25]),
        .I3(\q_reg[31]_3 [25]),
        .I4(resultW[25]),
        .O(\q_reg[27]_0 [1]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__5_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [24]),
        .I3(resultW[24]),
        .I4(\q_reg[31]_2 [24]),
        .O(\q_reg[27]_0 [0]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__6_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [30]),
        .I3(resultW[30]),
        .I4(\q_reg[31]_2 [30]),
        .O(\q_reg[30] [2]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry__6_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [29]),
        .I3(\q_reg[31]_3 [29]),
        .I4(resultW[29]),
        .O(\q_reg[30] [1]));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry__6_i_3
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [28]),
        .I3(resultW[28]),
        .I4(\q_reg[31]_2 [28]),
        .O(\q_reg[30] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out2_carry__6_i_4
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_4 ),
        .O(\q_reg[31]_1 ));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry_i_1
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [3]),
        .I3(\q_reg[31]_3 [3]),
        .I4(resultW[3]),
        .O(\q_reg[3]_1 [3]));
  LUT4 #(
    .INIT(16'h0004)) 
    alu_out2_carry_i_10
       (.I0(\q_reg[2]_1 ),
        .I1(alu_out2_carry_i_16_n_0),
        .I2(alu_out2_carry_i_17_n_0),
        .I3(alu_out2_carry_i_12_n_0),
        .O(alu_out2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    alu_out2_carry_i_11
       (.I0(\q_reg[2]_0 [0]),
        .I1(\q_reg[4]_1 [1]),
        .I2(rsE[3]),
        .I3(\q_reg[4]_1 [3]),
        .I4(rsE[0]),
        .I5(\q_reg[4]_1 [0]),
        .O(alu_out2_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    alu_out2_carry_i_12
       (.I0(rsE[3]),
        .I1(\q_reg[2]_0 [1]),
        .I2(rsE[0]),
        .I3(\q_reg[2]_0 [0]),
        .I4(rsE[4]),
        .O(alu_out2_carry_i_12_n_0));
  LUT5 #(
    .INIT(32'h6F6FFF6F)) 
    alu_out2_carry_i_13
       (.I0(rsE[4]),
        .I1(\q_reg[4]_1 [4]),
        .I2(\q_reg[0]_6 ),
        .I3(\q_reg[4]_1 [0]),
        .I4(rsE[0]),
        .O(alu_out2_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hB00BB00B0000B00B)) 
    alu_out2_carry_i_14
       (.I0(rsE[3]),
        .I1(\q_reg[4]_1 [3]),
        .I2(\q_reg[2]_0 [1]),
        .I3(\q_reg[4]_1 [2]),
        .I4(\q_reg[2]_0 [0]),
        .I5(\q_reg[4]_1 [1]),
        .O(alu_out2_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out2_carry_i_16
       (.I0(rsE[4]),
        .I1(\q_reg[4]_0 [3]),
        .I2(\q_reg[4]_0 [2]),
        .I3(rsE[3]),
        .O(alu_out2_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h66F6)) 
    alu_out2_carry_i_17
       (.I0(rsE[0]),
        .I1(\q_reg[4]_0 [0]),
        .I2(\q_reg[2]_0 [0]),
        .I3(\q_reg[4]_0 [1]),
        .O(alu_out2_carry_i_17_n_0));
  LUT5 #(
    .INIT(32'hFA72D850)) 
    alu_out2_carry_i_2
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_3 [2]),
        .I3(resultW[2]),
        .I4(\q_reg[31]_2 [2]),
        .O(\q_reg[3]_1 [2]));
  LUT5 #(
    .INIT(32'hFC0CACAC)) 
    alu_out2_carry_i_3
       (.I0(\q_reg[31]_2 [1]),
        .I1(\q_reg[31]_3 [1]),
        .I2(alu_out2_carry_i_9_n_0),
        .I3(resultW[1]),
        .I4(alu_out2_carry_i_10_n_0),
        .O(\q_reg[3]_1 [1]));
  LUT5 #(
    .INIT(32'hFDA87520)) 
    alu_out2_carry_i_4
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [0]),
        .I3(\q_reg[31]_3 [0]),
        .I4(resultW[0]),
        .O(\q_reg[3]_1 [0]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    alu_out2_carry_i_9
       (.I0(alu_out2_carry_i_11_n_0),
        .I1(alu_out2_carry_i_12_n_0),
        .I2(alu_out2_carry_i_13_n_0),
        .I3(alu_out2_carry_i_14_n_0),
        .O(alu_out2_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__0_i_1
       (.I0(\q_reg[7]_0 [3]),
        .I1(srcb3E[6]),
        .O(\q_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__0_i_2
       (.I0(\q_reg[7]_0 [2]),
        .I1(srcb3E[5]),
        .O(\q_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__0_i_3
       (.I0(\q_reg[7]_0 [1]),
        .I1(srcb3E[4]),
        .O(\q_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__0_i_4
       (.I0(\q_reg[7]_0 [0]),
        .I1(srcb3E[3]),
        .O(\q_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__1_i_1
       (.I0(\q_reg[11]_0 [3]),
        .I1(srcb3E[10]),
        .O(\q_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__1_i_2
       (.I0(\q_reg[11]_0 [2]),
        .I1(srcb3E[9]),
        .O(\q_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__1_i_3
       (.I0(\q_reg[11]_0 [1]),
        .I1(srcb3E[8]),
        .O(\q_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__1_i_4
       (.I0(\q_reg[11]_0 [0]),
        .I1(srcb3E[7]),
        .O(\q_reg[11] [0]));
  LUT4 #(
    .INIT(16'hA959)) 
    alu_out5_carry__2_i_1
       (.I0(\q_reg[15]_0 [3]),
        .I1(D[2]),
        .I2(\q_reg[5] ),
        .I3(signimmE[1]),
        .O(\q_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__2_i_2
       (.I0(\q_reg[15]_0 [2]),
        .I1(srcb3E[13]),
        .O(\q_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__2_i_3
       (.I0(\q_reg[15]_0 [1]),
        .I1(srcb3E[12]),
        .O(\q_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__2_i_4
       (.I0(\q_reg[15]_0 [0]),
        .I1(srcb3E[11]),
        .O(\q_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__3_i_1
       (.I0(\q_reg[19]_0 [3]),
        .I1(srcb3E[18]),
        .O(\q_reg[19] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__3_i_2
       (.I0(\q_reg[19]_0 [2]),
        .I1(srcb3E[17]),
        .O(\q_reg[19] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__3_i_3
       (.I0(\q_reg[19]_0 [1]),
        .I1(srcb3E[16]),
        .O(\q_reg[19] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__3_i_4
       (.I0(\q_reg[19]_0 [0]),
        .I1(srcb3E[15]),
        .O(\q_reg[19] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__4_i_1
       (.I0(\q_reg[23]_0 [3]),
        .I1(srcb3E[22]),
        .O(\q_reg[23] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__4_i_2
       (.I0(\q_reg[23]_0 [2]),
        .I1(srcb3E[21]),
        .O(\q_reg[23] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__4_i_3
       (.I0(\q_reg[23]_0 [1]),
        .I1(srcb3E[20]),
        .O(\q_reg[23] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__4_i_4
       (.I0(\q_reg[23]_0 [0]),
        .I1(srcb3E[19]),
        .O(\q_reg[23] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__5_i_1
       (.I0(\q_reg[27]_0 [3]),
        .I1(srcb3E[26]),
        .O(\q_reg[27] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__5_i_2
       (.I0(\q_reg[27]_0 [2]),
        .I1(srcb3E[25]),
        .O(\q_reg[27] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__5_i_3
       (.I0(\q_reg[27]_0 [1]),
        .I1(srcb3E[24]),
        .O(\q_reg[27] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__5_i_4
       (.I0(\q_reg[27]_0 [0]),
        .I1(srcb3E[23]),
        .O(\q_reg[27] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__6_i_2
       (.I0(\q_reg[30] [2]),
        .I1(srcb3E[29]),
        .O(\q_reg[31] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__6_i_3
       (.I0(\q_reg[30] [1]),
        .I1(srcb3E[28]),
        .O(\q_reg[31] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry__6_i_4
       (.I0(\q_reg[30] [0]),
        .I1(srcb3E[27]),
        .O(\q_reg[31] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry_i_1
       (.I0(\q_reg[3]_1 [3]),
        .I1(srcb3E[2]),
        .O(\q_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    alu_out5_carry_i_2
       (.I0(\q_reg[3]_1 [2]),
        .I1(srcb3E[1]),
        .O(\q_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hA695)) 
    alu_out5_carry_i_3
       (.I0(\q_reg[3]_1 [1]),
        .I1(\q_reg[5] ),
        .I2(signimmE[0]),
        .I3(D[1]),
        .O(\q_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__0_i_1
       (.I0(\q_reg[15]_0 [3]),
        .I1(srcb3E[14]),
        .I2(\q_reg[15]_0 [2]),
        .I3(srcb3E[13]),
        .O(\q_reg[0]_5 [3]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__0_i_2
       (.I0(\q_reg[15]_0 [1]),
        .I1(srcb3E[12]),
        .I2(\q_reg[15]_0 [0]),
        .I3(srcb3E[11]),
        .O(\q_reg[0]_5 [2]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__0_i_3
       (.I0(\q_reg[11]_0 [3]),
        .I1(srcb3E[10]),
        .I2(\q_reg[11]_0 [2]),
        .I3(srcb3E[9]),
        .O(\q_reg[0]_5 [1]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__0_i_4
       (.I0(\q_reg[11]_0 [1]),
        .I1(srcb3E[8]),
        .I2(\q_reg[11]_0 [0]),
        .I3(srcb3E[7]),
        .O(\q_reg[0]_5 [0]));
  LUT6 #(
    .INIT(64'hB84700000000B847)) 
    alu_out8_carry__0_i_5
       (.I0(signimmE[1]),
        .I1(\q_reg[5] ),
        .I2(D[2]),
        .I3(\q_reg[15]_0 [3]),
        .I4(\q_reg[15]_0 [2]),
        .I5(srcb3E[13]),
        .O(\q_reg[0]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__0_i_6
       (.I0(\q_reg[15]_0 [1]),
        .I1(srcb3E[12]),
        .I2(\q_reg[15]_0 [0]),
        .I3(srcb3E[11]),
        .O(\q_reg[0]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__0_i_7
       (.I0(\q_reg[11]_0 [3]),
        .I1(srcb3E[10]),
        .I2(\q_reg[11]_0 [2]),
        .I3(srcb3E[9]),
        .O(\q_reg[0]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__0_i_8
       (.I0(\q_reg[11]_0 [1]),
        .I1(srcb3E[8]),
        .I2(\q_reg[11]_0 [0]),
        .I3(srcb3E[7]),
        .O(\q_reg[0]_0 [0]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__1_i_1
       (.I0(\q_reg[23]_0 [3]),
        .I1(srcb3E[22]),
        .I2(\q_reg[23]_0 [2]),
        .I3(srcb3E[21]),
        .O(\q_reg[0]_3 [3]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__1_i_2
       (.I0(\q_reg[23]_0 [1]),
        .I1(srcb3E[20]),
        .I2(\q_reg[23]_0 [0]),
        .I3(srcb3E[19]),
        .O(\q_reg[0]_3 [2]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__1_i_3
       (.I0(\q_reg[19]_0 [3]),
        .I1(srcb3E[18]),
        .I2(\q_reg[19]_0 [2]),
        .I3(srcb3E[17]),
        .O(\q_reg[0]_3 [1]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__1_i_4
       (.I0(\q_reg[19]_0 [1]),
        .I1(srcb3E[16]),
        .I2(\q_reg[19]_0 [0]),
        .I3(srcb3E[15]),
        .O(\q_reg[0]_3 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__1_i_5
       (.I0(\q_reg[23]_0 [3]),
        .I1(srcb3E[22]),
        .I2(\q_reg[23]_0 [2]),
        .I3(srcb3E[21]),
        .O(\q_reg[0]_4 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__1_i_6
       (.I0(\q_reg[23]_0 [1]),
        .I1(srcb3E[20]),
        .I2(\q_reg[23]_0 [0]),
        .I3(srcb3E[19]),
        .O(\q_reg[0]_4 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__1_i_7
       (.I0(\q_reg[19]_0 [3]),
        .I1(srcb3E[18]),
        .I2(\q_reg[19]_0 [2]),
        .I3(srcb3E[17]),
        .O(\q_reg[0]_4 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__1_i_8
       (.I0(\q_reg[19]_0 [1]),
        .I1(srcb3E[16]),
        .I2(\q_reg[19]_0 [0]),
        .I3(srcb3E[15]),
        .O(\q_reg[0]_4 [0]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__2_i_2
       (.I0(\q_reg[30] [1]),
        .I1(srcb3E[28]),
        .I2(\q_reg[30] [0]),
        .I3(srcb3E[27]),
        .O(\q_reg[0]_2 [2]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__2_i_3
       (.I0(\q_reg[27]_0 [3]),
        .I1(srcb3E[26]),
        .I2(\q_reg[27]_0 [2]),
        .I3(srcb3E[25]),
        .O(\q_reg[0]_2 [1]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry__2_i_4
       (.I0(\q_reg[27]_0 [1]),
        .I1(srcb3E[24]),
        .I2(\q_reg[27]_0 [0]),
        .I3(srcb3E[23]),
        .O(\q_reg[0]_2 [0]));
  LUT4 #(
    .INIT(16'h6006)) 
    alu_out8_carry__2_i_5
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[31]_4 ),
        .I2(\q_reg[30] [2]),
        .I3(srcb3E[29]),
        .O(\q_reg[0]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__2_i_6
       (.I0(\q_reg[30] [1]),
        .I1(srcb3E[28]),
        .I2(\q_reg[30] [0]),
        .I3(srcb3E[27]),
        .O(\q_reg[0]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__2_i_7
       (.I0(\q_reg[27]_0 [3]),
        .I1(srcb3E[26]),
        .I2(\q_reg[27]_0 [2]),
        .I3(srcb3E[25]),
        .O(\q_reg[0]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry__2_i_8
       (.I0(\q_reg[27]_0 [1]),
        .I1(srcb3E[24]),
        .I2(\q_reg[27]_0 [0]),
        .I3(srcb3E[23]),
        .O(\q_reg[0]_1 [0]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry_i_1
       (.I0(\q_reg[7]_0 [3]),
        .I1(srcb3E[6]),
        .I2(\q_reg[7]_0 [2]),
        .I3(srcb3E[5]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry_i_2
       (.I0(\q_reg[7]_0 [1]),
        .I1(srcb3E[4]),
        .I2(\q_reg[7]_0 [0]),
        .I3(srcb3E[3]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h4D44)) 
    alu_out8_carry_i_3
       (.I0(\q_reg[3]_1 [3]),
        .I1(srcb3E[2]),
        .I2(\q_reg[3]_1 [2]),
        .I3(srcb3E[1]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'h00FF0000B8FF00B8)) 
    alu_out8_carry_i_4
       (.I0(Q),
        .I1(\q_reg[5] ),
        .I2(D[0]),
        .I3(\q_reg[3]_1 [1]),
        .I4(srcb3E[0]),
        .I5(\q_reg[3]_1 [0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry_i_5
       (.I0(\q_reg[7]_0 [3]),
        .I1(srcb3E[6]),
        .I2(\q_reg[7]_0 [2]),
        .I3(srcb3E[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry_i_6
       (.I0(\q_reg[7]_0 [1]),
        .I1(srcb3E[4]),
        .I2(\q_reg[7]_0 [0]),
        .I3(srcb3E[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    alu_out8_carry_i_7
       (.I0(\q_reg[3]_1 [3]),
        .I1(srcb3E[2]),
        .I2(\q_reg[3]_1 [2]),
        .I3(srcb3E[1]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h02578ADF)) 
    \q[31]_i_3__2 
       (.I0(alu_out2_carry_i_9_n_0),
        .I1(alu_out2_carry_i_10_n_0),
        .I2(\q_reg[31]_2 [31]),
        .I3(\q_reg[31]_3 [31]),
        .I4(resultW[31]),
        .O(\q_reg[31]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[25] [0]),
        .Q(rsE[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[25] [1]),
        .Q(\q_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[25] [2]),
        .Q(\q_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[25] [3]),
        .Q(rsE[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\q_reg[25] [4]),
        .Q(rsE[4]));
endmodule

(* ORIG_REF_NAME = "floprc" *) 
module floprc__parameterized1_8
   (\q_reg[31] ,
    Q,
    \q_reg[27] ,
    \q_reg[25] ,
    \q_reg[18] ,
    D,
    CLK,
    AR);
  output \q_reg[31] ;
  output [4:0]Q;
  output \q_reg[27] ;
  input [6:0]\q_reg[25] ;
  input \q_reg[18] ;
  input [4:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [4:0]D;
  wire [4:0]Q;
  wire \q[31]_i_14_n_0 ;
  wire \q[31]_i_8_n_0 ;
  wire \q_reg[18] ;
  wire [6:0]\q_reg[25] ;
  wire \q_reg[27] ;
  wire \q_reg[31] ;

  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \q[31]_i_14 
       (.I0(Q[0]),
        .I1(\q_reg[25] [2]),
        .I2(\q_reg[25] [4]),
        .I3(Q[2]),
        .I4(\q_reg[25] [3]),
        .I5(Q[1]),
        .O(\q[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h09000009FFFFFFFF)) 
    \q[31]_i_3__0 
       (.I0(Q[4]),
        .I1(\q_reg[25] [1]),
        .I2(\q_reg[18] ),
        .I3(\q_reg[25] [0]),
        .I4(Q[3]),
        .I5(\q[31]_i_8_n_0 ),
        .O(\q_reg[31] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[31]_i_7__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\q_reg[27] ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \q[31]_i_8 
       (.I0(Q[3]),
        .I1(\q_reg[25] [5]),
        .I2(\q[31]_i_14_n_0 ),
        .I3(\q_reg[25] [6]),
        .I4(Q[4]),
        .O(\q[31]_i_8_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
endmodule

(* CHECK_LICENSE_TYPE = "inst_mem,blk_mem_gen_v8_3_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
module inst_mem
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;
  wire NLW_U0_clkb_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_deepsleep_UNCONNECTED;
  wire NLW_U0_eccpipece_UNCONNECTED;
  wire NLW_U0_ena_UNCONNECTED;
  wire NLW_U0_enb_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_regcea_UNCONNECTED;
  wire NLW_U0_regceb_UNCONNECTED;
  wire NLW_U0_rsta_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectdbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_injectsbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_shutdown_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire [31:0]NLW_U0_addra_UNCONNECTED;
  wire [31:0]NLW_U0_addrb_UNCONNECTED;
  wire [31:0]NLW_U0_dina_UNCONNECTED;
  wire [31:0]NLW_U0_dinb_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_wea_UNCONNECTED;
  wire [0:0]NLW_U0_web_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "inst_mem.mem" *) 
  (* C_INIT_FILE_NAME = "inst_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  inst_mem_blk_mem_gen_v8_3_6 U0
       (.addra({NLW_U0_addra_UNCONNECTED[31:12],addra[11:2],NLW_U0_addra_UNCONNECTED[1:0]}),
        .addrb(NLW_U0_addrb_UNCONNECTED[31:0]),
        .clka(clka),
        .clkb(NLW_U0_clkb_UNCONNECTED),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(NLW_U0_deepsleep_UNCONNECTED),
        .dina(NLW_U0_dina_UNCONNECTED[31:0]),
        .dinb(NLW_U0_dinb_UNCONNECTED[31:0]),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(NLW_U0_eccpipece_UNCONNECTED),
        .ena(NLW_U0_ena_UNCONNECTED),
        .enb(NLW_U0_enb_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(NLW_U0_regcea_UNCONNECTED),
        .regceb(NLW_U0_regceb_UNCONNECTED),
        .rsta(NLW_U0_rsta_UNCONNECTED),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(NLW_U0_rstb_UNCONNECTED),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[3:0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[3:0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(NLW_U0_s_axi_injectdbiterr_UNCONNECTED),
        .s_axi_injectsbiterr(NLW_U0_s_axi_injectsbiterr_UNCONNECTED),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[31:0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(NLW_U0_shutdown_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .wea(NLW_U0_wea_UNCONNECTED[0]),
        .web(NLW_U0_web_UNCONNECTED[0]));
endmodule

module mips
   (Q,
    \q_reg[31] ,
    clka,
    \q_reg[31]_0 ,
    \q_reg[31]_1 ,
    CLK,
    AR,
    douta,
    D,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8,
    lopt_9,
    lopt_10,
    lopt_11,
    lopt_12,
    lopt_13,
    lopt_14,
    lopt_15,
    lopt_16,
    lopt_17,
    lopt_18,
    lopt_19,
    lopt_20,
    lopt_21,
    lopt_22,
    lopt_23,
    lopt_24,
    lopt_25,
    lopt_26,
    lopt_27,
    lopt_28,
    lopt_29,
    lopt_30,
    lopt_31,
    lopt_32,
    lopt_33,
    pwropt);
  output [29:0]Q;
  output [31:0]\q_reg[31] ;
  output clka;
  output [31:0]\q_reg[31]_0 ;
  output [0:0]\q_reg[31]_1 ;
  input CLK;
  input [0:0]AR;
  input [31:0]douta;
  input [31:0]D;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;
  output lopt_9;
  output lopt_10;
  output lopt_11;
  output lopt_12;
  output lopt_13;
  output lopt_14;
  output lopt_15;
  output lopt_16;
  output lopt_17;
  output lopt_18;
  output lopt_19;
  output lopt_20;
  output lopt_21;
  output lopt_22;
  output lopt_23;
  output lopt_24;
  output lopt_25;
  output lopt_26;
  output lopt_27;
  output lopt_28;
  output lopt_29;
  output lopt_30;
  output lopt_31;
  output lopt_32;
  output lopt_33;
  output pwropt;

  wire [0:0]AR;
  wire CLK;
  wire [31:0]D;
  wire [29:0]Q;
  wire [31:0]\alu/data2 ;
  wire [31:0]\alu/data5 ;
  wire [31:0]aluoutE;
  wire alusrcE;
  wire [31:0]douta;
  wire dp_n_190;
  wire dp_n_199;
  wire dp_n_31;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_16;
  wire lopt_17;
  wire lopt_18;
  wire lopt_19;
  wire lopt_2;
  wire lopt_20;
  wire lopt_21;
  wire lopt_22;
  wire lopt_23;
  wire lopt_24;
  wire lopt_25;
  wire lopt_26;
  wire lopt_27;
  wire lopt_28;
  wire lopt_29;
  wire lopt_3;
  wire lopt_30;
  wire lopt_31;
  wire lopt_32;
  wire lopt_33;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire memtoregE;
  wire memtoregM;
  wire memtoregW;
  wire [7:0]p_0_in;
  wire [31:0]\q_reg[31] ;
  wire [31:0]\q_reg[31]_0 ;
  wire [0:0]\q_reg[31]_1 ;
  wire regdstE;
  wire regwriteE;
  wire regwriteM;
  wire regwriteW;
  wire [0:0]signimmE;
  wire [30:0]srca2E;
  wire [0:0]srcb2E;
  wire [30:1]srcb3E;
  wire \NLW_dp_q_reg[31]_3_UNCONNECTED ;
  wire [29:10]\NLW_dp_q_reg[31]_UNCONNECTED ;

  assign pwropt = regwriteE;
  controller c
       (.AR(AR),
        .CLK(CLK),
        .CO(dp_n_31),
        .D(aluoutE),
        .Q({memtoregE,alusrcE,regdstE,regwriteE}),
        .data2(\alu/data2 ),
        .data5(\alu/data5 ),
        .lopt(lopt_2),
        .\q_reg[0] (signimmE),
        .\q_reg[1] ({memtoregM,\q_reg[31]_1 ,regwriteM}),
        .\q_reg[27] (p_0_in),
        .\q_reg[31] ({memtoregW,regwriteW}),
        .\q_reg[31]_0 (dp_n_190),
        .\q_reg[31]_1 (dp_n_199),
        .srca2E(srca2E),
        .srcb2E(srcb2E),
        .srcb3E(srcb3E));
  datapath dp
       (.AR(AR),
        .CLK(CLK),
        .CO(dp_n_31),
        .D(aluoutE),
        .Q(signimmE),
        .\bbstub_douta[31] (D),
        .data2(\alu/data2 ),
        .data5(\alu/data5 ),
        .douta(douta),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_10(lopt_11),
        .lopt_11(lopt_12),
        .lopt_12(lopt_13),
        .lopt_13(lopt_14),
        .lopt_14(lopt_15),
        .lopt_15(lopt_16),
        .lopt_16(lopt_17),
        .lopt_17(lopt_18),
        .lopt_18(lopt_19),
        .lopt_19(lopt_20),
        .lopt_2(lopt_3),
        .lopt_20(lopt_21),
        .lopt_21(lopt_22),
        .lopt_22(lopt_23),
        .lopt_23(lopt_24),
        .lopt_24(lopt_25),
        .lopt_25(lopt_26),
        .lopt_26(lopt_27),
        .lopt_27(lopt_28),
        .lopt_28(lopt_29),
        .lopt_29(lopt_30),
        .lopt_3(lopt_4),
        .lopt_30(lopt_31),
        .lopt_31(lopt_32),
        .lopt_32(lopt_33),
        .lopt_4(lopt_5),
        .lopt_5(lopt_6),
        .lopt_6(lopt_7),
        .lopt_7(lopt_8),
        .lopt_8(lopt_9),
        .lopt_9(lopt_10),
        .\q_reg[0] (srcb2E),
        .\q_reg[1] ({memtoregW,regwriteW}),
        .\q_reg[2] ({memtoregM,regwriteM}),
        .\q_reg[31] ({\NLW_dp_q_reg[31]_UNCONNECTED [29:10],Q[9:0]}),
        .\q_reg[31]_0 (\q_reg[31] ),
        .\q_reg[31]_1 (dp_n_190),
        .\q_reg[31]_2 (dp_n_199),
        .\q_reg[31]_3 (\NLW_dp_q_reg[31]_3_UNCONNECTED ),
        .\q_reg[31]_4 (\q_reg[31]_0 ),
        .\q_reg[7] (p_0_in),
        .\q_reg[7]_0 ({memtoregE,alusrcE,regdstE,regwriteE}),
        .srca2E(srca2E),
        .srcb3E(srcb3E));
endmodule

module regfile
   (rd10,
    \q_reg[31] ,
    rd20,
    \q_reg[0] ,
    resultW,
    Q,
    \q_reg[4] ,
    CLK,
    lopt);
  output [31:0]rd10;
  output \q_reg[31] ;
  output [31:0]rd20;
  input [0:0]\q_reg[0] ;
  input [31:0]resultW;
  input [9:0]Q;
  input [4:0]\q_reg[4] ;
  input CLK;
  output lopt;

  wire CLK;
  wire [9:0]Q;
  wire [0:0]\q_reg[0] ;
  wire [4:0]\q_reg[4] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]resultW;
  wire [1:0]NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  assign lopt = CLK;
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_UNIQ_BASE_ rf_reg_r1_0_31_0_5
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[1:0]),
        .DIB(resultW[3:2]),
        .DIC(resultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD1 rf_reg_r1_0_31_12_17
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[13:12]),
        .DIB(resultW[15:14]),
        .DIC(resultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD2 rf_reg_r1_0_31_18_23
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[19:18]),
        .DIB(resultW[21:20]),
        .DIC(resultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD3 rf_reg_r1_0_31_24_29
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[25:24]),
        .DIB(resultW[27:26]),
        .DIC(resultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD4 rf_reg_r1_0_31_30_31
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[31:30]),
        .DOB(NLW_rf_reg_r1_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD5 rf_reg_r1_0_31_6_11
       (.ADDRA(Q[9:5]),
        .ADDRB(Q[9:5]),
        .ADDRC(Q[9:5]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[7:6]),
        .DIB(resultW[9:8]),
        .DIC(resultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD6 rf_reg_r2_0_31_0_5
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[1:0]),
        .DIB(resultW[3:2]),
        .DIC(resultW[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD7 rf_reg_r2_0_31_12_17
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[13:12]),
        .DIB(resultW[15:14]),
        .DIC(resultW[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD8 rf_reg_r2_0_31_18_23
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[19:18]),
        .DIB(resultW[21:20]),
        .DIC(resultW[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD9 rf_reg_r2_0_31_24_29
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[25:24]),
        .DIB(resultW[27:26]),
        .DIC(resultW[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD10 rf_reg_r2_0_31_30_31
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r2_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M_HD11 rf_reg_r2_0_31_6_11
       (.ADDRA(Q[4:0]),
        .ADDRB(Q[4:0]),
        .ADDRC(Q[4:0]),
        .ADDRD(\q_reg[4] ),
        .DIA(resultW[7:6]),
        .DIB(resultW[9:8]),
        .DIC(resultW[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK),
        .WE(\q_reg[0] ));
endmodule

(* ECO_CHECKSUM = "21e592d3" *) (* POWER_OPT_BRAM_CDC = "1" *) (* POWER_OPT_BRAM_SR_ADDR = "1" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module top
   (clk,
    rst,
    writedata,
    dataadr,
    memwrite);
  input clk;
  input rst;
  output [31:0]writedata;
  output [31:0]dataadr;
  output memwrite;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]dataadr;
  wire [31:0]dataadr_OBUF;
  wire [31:0]instr;
  wire lopt;
  wire lopt_1;
  wire lopt_10;
  wire lopt_11;
  wire lopt_12;
  wire lopt_13;
  wire lopt_14;
  wire lopt_15;
  wire lopt_16;
  wire lopt_17;
  wire lopt_18;
  wire lopt_19;
  wire lopt_2;
  wire lopt_20;
  wire lopt_21;
  wire lopt_22;
  wire lopt_23;
  wire lopt_24;
  wire lopt_25;
  wire lopt_26;
  wire lopt_27;
  wire lopt_28;
  wire lopt_29;
  wire lopt_3;
  wire lopt_30;
  wire lopt_31;
  wire lopt_32;
  wire lopt_33;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire memwrite;
  wire memwrite_OBUF;
  wire [31:2]pc;
  wire pwropt;
  wire [31:0]readdata;
  wire rst;
  wire rst_IBUF;
  wire [31:0]writedata;
  wire [31:0]writedata_OBUF;
  wire [31:0]NLW_dmem_addra_UNCONNECTED;
  wire [31:0]NLW_imem_addra_UNCONNECTED;
  wire NLW_mips_clka_UNCONNECTED;
  wire [29:10]NLW_mips_Q_UNCONNECTED;

initial begin
 $sdf_annotate("testbench_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \dataadr_OBUF[0]_inst 
       (.I(dataadr_OBUF[0]),
        .O(dataadr[0]));
  OBUF \dataadr_OBUF[10]_inst 
       (.I(dataadr_OBUF[10]),
        .O(dataadr[10]));
  OBUF \dataadr_OBUF[11]_inst 
       (.I(dataadr_OBUF[11]),
        .O(dataadr[11]));
  OBUF \dataadr_OBUF[12]_inst 
       (.I(dataadr_OBUF[12]),
        .O(dataadr[12]));
  OBUF \dataadr_OBUF[13]_inst 
       (.I(dataadr_OBUF[13]),
        .O(dataadr[13]));
  OBUF \dataadr_OBUF[14]_inst 
       (.I(dataadr_OBUF[14]),
        .O(dataadr[14]));
  OBUF \dataadr_OBUF[15]_inst 
       (.I(dataadr_OBUF[15]),
        .O(dataadr[15]));
  OBUF \dataadr_OBUF[16]_inst 
       (.I(dataadr_OBUF[16]),
        .O(dataadr[16]));
  OBUF \dataadr_OBUF[17]_inst 
       (.I(dataadr_OBUF[17]),
        .O(dataadr[17]));
  OBUF \dataadr_OBUF[18]_inst 
       (.I(dataadr_OBUF[18]),
        .O(dataadr[18]));
  OBUF \dataadr_OBUF[19]_inst 
       (.I(dataadr_OBUF[19]),
        .O(dataadr[19]));
  OBUF \dataadr_OBUF[1]_inst 
       (.I(dataadr_OBUF[1]),
        .O(dataadr[1]));
  OBUF \dataadr_OBUF[20]_inst 
       (.I(dataadr_OBUF[20]),
        .O(dataadr[20]));
  OBUF \dataadr_OBUF[21]_inst 
       (.I(dataadr_OBUF[21]),
        .O(dataadr[21]));
  OBUF \dataadr_OBUF[22]_inst 
       (.I(dataadr_OBUF[22]),
        .O(dataadr[22]));
  OBUF \dataadr_OBUF[23]_inst 
       (.I(dataadr_OBUF[23]),
        .O(dataadr[23]));
  OBUF \dataadr_OBUF[24]_inst 
       (.I(dataadr_OBUF[24]),
        .O(dataadr[24]));
  OBUF \dataadr_OBUF[25]_inst 
       (.I(dataadr_OBUF[25]),
        .O(dataadr[25]));
  OBUF \dataadr_OBUF[26]_inst 
       (.I(dataadr_OBUF[26]),
        .O(dataadr[26]));
  OBUF \dataadr_OBUF[27]_inst 
       (.I(dataadr_OBUF[27]),
        .O(dataadr[27]));
  OBUF \dataadr_OBUF[28]_inst 
       (.I(dataadr_OBUF[28]),
        .O(dataadr[28]));
  OBUF \dataadr_OBUF[29]_inst 
       (.I(dataadr_OBUF[29]),
        .O(dataadr[29]));
  OBUF \dataadr_OBUF[2]_inst 
       (.I(dataadr_OBUF[2]),
        .O(dataadr[2]));
  OBUF \dataadr_OBUF[30]_inst 
       (.I(dataadr_OBUF[30]),
        .O(dataadr[30]));
  OBUF \dataadr_OBUF[31]_inst 
       (.I(dataadr_OBUF[31]),
        .O(dataadr[31]));
  OBUF \dataadr_OBUF[3]_inst 
       (.I(dataadr_OBUF[3]),
        .O(dataadr[3]));
  OBUF \dataadr_OBUF[4]_inst 
       (.I(dataadr_OBUF[4]),
        .O(dataadr[4]));
  OBUF \dataadr_OBUF[5]_inst 
       (.I(dataadr_OBUF[5]),
        .O(dataadr[5]));
  OBUF \dataadr_OBUF[6]_inst 
       (.I(dataadr_OBUF[6]),
        .O(dataadr[6]));
  OBUF \dataadr_OBUF[7]_inst 
       (.I(dataadr_OBUF[7]),
        .O(dataadr[7]));
  OBUF \dataadr_OBUF[8]_inst 
       (.I(dataadr_OBUF[8]),
        .O(dataadr[8]));
  OBUF \dataadr_OBUF[9]_inst 
       (.I(dataadr_OBUF[9]),
        .O(dataadr[9]));
  (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
  data_mem dmem
       (.addra({NLW_dmem_addra_UNCONNECTED[31:12],dataadr_OBUF[11:2],NLW_dmem_addra_UNCONNECTED[1:0]}),
        .clka(clk_IBUF_BUFG),
        .dina(writedata_OBUF),
        .douta(readdata),
        .pwropt(pwropt),
        .wea({memwrite_OBUF,memwrite_OBUF,memwrite_OBUF,memwrite_OBUF}));
  (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
  inst_mem imem
       (.addra({NLW_imem_addra_UNCONNECTED[31:12],pc[11:2],NLW_imem_addra_UNCONNECTED[1:0]}),
        .clka(lopt),
        .douta(instr));
  OBUF memwrite_OBUF_inst
       (.I(lopt_2),
        .O(memwrite));
  mips mips
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(readdata),
        .Q({NLW_mips_Q_UNCONNECTED[29:10],pc[11:2]}),
        .clka(NLW_mips_clka_UNCONNECTED),
        .douta(instr),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_10(lopt_10),
        .lopt_11(lopt_11),
        .lopt_12(lopt_12),
        .lopt_13(lopt_13),
        .lopt_14(lopt_14),
        .lopt_15(lopt_15),
        .lopt_16(lopt_16),
        .lopt_17(lopt_17),
        .lopt_18(lopt_18),
        .lopt_19(lopt_19),
        .lopt_2(lopt_2),
        .lopt_20(lopt_20),
        .lopt_21(lopt_21),
        .lopt_22(lopt_22),
        .lopt_23(lopt_23),
        .lopt_24(lopt_24),
        .lopt_25(lopt_25),
        .lopt_26(lopt_26),
        .lopt_27(lopt_27),
        .lopt_28(lopt_28),
        .lopt_29(lopt_29),
        .lopt_3(lopt_3),
        .lopt_30(lopt_30),
        .lopt_31(lopt_31),
        .lopt_32(lopt_32),
        .lopt_33(lopt_33),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .lopt_8(lopt_8),
        .lopt_9(lopt_9),
        .pwropt(pwropt),
        .\q_reg[31] (dataadr_OBUF),
        .\q_reg[31]_0 (writedata_OBUF),
        .\q_reg[31]_1 (memwrite_OBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \writedata_OBUF[0]_inst 
       (.I(lopt_3),
        .O(writedata[0]));
  OBUF \writedata_OBUF[10]_inst 
       (.I(lopt_4),
        .O(writedata[10]));
  OBUF \writedata_OBUF[11]_inst 
       (.I(lopt_5),
        .O(writedata[11]));
  OBUF \writedata_OBUF[12]_inst 
       (.I(lopt_6),
        .O(writedata[12]));
  OBUF \writedata_OBUF[13]_inst 
       (.I(lopt_7),
        .O(writedata[13]));
  OBUF \writedata_OBUF[14]_inst 
       (.I(lopt_8),
        .O(writedata[14]));
  OBUF \writedata_OBUF[15]_inst 
       (.I(lopt_9),
        .O(writedata[15]));
  OBUF \writedata_OBUF[16]_inst 
       (.I(lopt_10),
        .O(writedata[16]));
  OBUF \writedata_OBUF[17]_inst 
       (.I(lopt_11),
        .O(writedata[17]));
  OBUF \writedata_OBUF[18]_inst 
       (.I(lopt_12),
        .O(writedata[18]));
  OBUF \writedata_OBUF[19]_inst 
       (.I(lopt_13),
        .O(writedata[19]));
  OBUF \writedata_OBUF[1]_inst 
       (.I(lopt_14),
        .O(writedata[1]));
  OBUF \writedata_OBUF[20]_inst 
       (.I(lopt_15),
        .O(writedata[20]));
  OBUF \writedata_OBUF[21]_inst 
       (.I(lopt_16),
        .O(writedata[21]));
  OBUF \writedata_OBUF[22]_inst 
       (.I(lopt_17),
        .O(writedata[22]));
  OBUF \writedata_OBUF[23]_inst 
       (.I(lopt_18),
        .O(writedata[23]));
  OBUF \writedata_OBUF[24]_inst 
       (.I(lopt_19),
        .O(writedata[24]));
  OBUF \writedata_OBUF[25]_inst 
       (.I(lopt_20),
        .O(writedata[25]));
  OBUF \writedata_OBUF[26]_inst 
       (.I(lopt_21),
        .O(writedata[26]));
  OBUF \writedata_OBUF[27]_inst 
       (.I(lopt_22),
        .O(writedata[27]));
  OBUF \writedata_OBUF[28]_inst 
       (.I(lopt_23),
        .O(writedata[28]));
  OBUF \writedata_OBUF[29]_inst 
       (.I(lopt_24),
        .O(writedata[29]));
  OBUF \writedata_OBUF[2]_inst 
       (.I(lopt_25),
        .O(writedata[2]));
  OBUF \writedata_OBUF[30]_inst 
       (.I(lopt_26),
        .O(writedata[30]));
  OBUF \writedata_OBUF[31]_inst 
       (.I(lopt_27),
        .O(writedata[31]));
  OBUF \writedata_OBUF[3]_inst 
       (.I(lopt_28),
        .O(writedata[3]));
  OBUF \writedata_OBUF[4]_inst 
       (.I(lopt_29),
        .O(writedata[4]));
  OBUF \writedata_OBUF[5]_inst 
       (.I(lopt_30),
        .O(writedata[5]));
  OBUF \writedata_OBUF[6]_inst 
       (.I(lopt_31),
        .O(writedata[6]));
  OBUF \writedata_OBUF[7]_inst 
       (.I(lopt_32),
        .O(writedata[7]));
  OBUF \writedata_OBUF[8]_inst 
       (.I(lopt_33),
        .O(writedata[8]));
  OBUF \writedata_OBUF[9]_inst 
       (.I(lopt_1),
        .O(writedata[9]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module data_mem_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra,
    dina,
    wea,
    pwropt);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;
  input pwropt;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;

  data_mem_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .pwropt(pwropt),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module data_mem_blk_mem_gen_prim_width
   (douta,
    clka,
    addra,
    dina,
    wea,
    pwropt);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;
  input pwropt;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;

  data_mem_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .pwropt(pwropt),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module data_mem_blk_mem_gen_prim_wrapper
   (douta,
    clka,
    addra,
    dina,
    wea,
    pwropt);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;
  input pwropt;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ENARDEN_cooolgate_en_sig_1 ;
  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "ENARDEN=NEW" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI(dina),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ENARDEN_cooolgate_en_sig_1 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA(wea),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'he)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ENARDEN_cooolgate_en_gate_1 
       (.I0(wea[0]),
        .I1(pwropt),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ENARDEN_cooolgate_en_sig_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module data_mem_blk_mem_gen_top
   (douta,
    clka,
    addra,
    dina,
    wea,
    pwropt);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;
  input pwropt;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;

  data_mem_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .pwropt(pwropt),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "32" *) (* C_ADDRB_WIDTH = "32" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "1" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "data_mem.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) 
(* C_WRITE_DEPTH_A = "1024" *) (* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_6" *) (* downgradeipidentifiedwarnings = "yes" *) 
module data_mem_blk_mem_gen_v8_3_6
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc,
    pwropt);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [31:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [31:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [31:0]s_axi_rdaddrecc;
  input pwropt;

  wire [31:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;

  data_mem_blk_mem_gen_v8_3_6_synth inst_blk_mem_gen
       (.addra(addra[11:2]),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .pwropt(pwropt),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_6_synth" *) 
module data_mem_blk_mem_gen_v8_3_6_synth
   (douta,
    clka,
    addra,
    dina,
    wea,
    pwropt);
  output [31:0]douta;
  input clka;
  input [9:0]addra;
  input [31:0]dina;
  input [3:0]wea;
  input pwropt;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire pwropt;
  wire [3:0]wea;

  data_mem_blk_mem_gen_top \gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .pwropt(pwropt),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module inst_mem_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  inst_mem_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module inst_mem_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  inst_mem_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module inst_mem_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;
  wire \NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[31:0][0:1023]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0064202A10A7000C00A428200064282400E220252067FFF72003000C20020005),
    .INIT_01(256'h8C020050AC67004400E238220085382000E2202A200500000000000010800002),
    .INIT_02(256'h00000000000000000000000000000000AC020054200200010000000008000013),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b1),
    .IS_CLKBWRCLK_INVERTED(1'b1),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(douta),
        .DOBDO(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.WITH_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module inst_mem_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  inst_mem_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "32" *) (* C_ADDRB_WIDTH = "32" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "1" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "inst_mem.mem" *) 
(* C_INIT_FILE_NAME = "inst_mem.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "1024" *) (* C_READ_DEPTH_B = "1024" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "1024" *) (* C_WRITE_DEPTH_B = "1024" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_6" *) (* downgradeipidentifiedwarnings = "yes" *) 
module inst_mem_blk_mem_gen_v8_3_6
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [31:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [31:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [31:0]s_axi_rdaddrecc;

  wire [31:0]addra;
  wire clka;
  wire [31:0]douta;

  inst_mem_blk_mem_gen_v8_3_6_synth inst_blk_mem_gen
       (.addra(addra[11:2]),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_6_synth" *) 
module inst_mem_blk_mem_gen_v8_3_6_synth
   (douta,
    clka,
    addra);
  output [31:0]douta;
  input clka;
  input [9:0]addra;

  wire [9:0]addra;
  wire clka;
  wire [31:0]douta;

  inst_mem_blk_mem_gen_top \gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
