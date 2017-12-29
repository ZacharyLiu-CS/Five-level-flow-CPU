`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/22 17:26:00
// Design Name:
// Module Name: controller
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


module controller(
	input clk, rst,
	input stallE,
	//decode stage
	input [5:0] opD,
	input [5:0] functD,
	input [4:0] rs,
	input [4:0] rt,
	input [4:0] rd,
	output pcsrcD,
	output branchD,
	output [7:0] eqcontrolD,
	input equalD,
	output [1:0] jumpD,
	output invalidD,
	//execute stage
	input flushE,overflowclear,
	output memtoregE, alusrcE,
	output [1:0] regdstE,
	output regwriteE,
	output [7:0] alucontrolE,
	output [1:0] hiloweE,
	//mem stage
	output memtoregM, memwriteM,
	output cp0writeM,
	output regwriteM,
	output [1:0] hiloweM,
	output [7:0]alucontrolM,
	//write back stage
	output memtoregW, regwriteW,cp0writeW,
	output [1:0] hiloweW,
	output lw_format
);

wire invalidD;
assign invalidD = 1'b0;
wire memtoregD, memenD, memwriteD, alusrcD;
wire [1:0]regdstD;
wire regwriteD;
wire[7:0] alucontrolD;
wire [1:0] hiloweD;
wire memwriteE;
wire cp0writeD,cp0writeE,cp0writeM,cp0writeW;
maindec Maindec(opD,functD,rs,rt,rd,memtoregD,memenD,memwriteD,branchD,alusrcD,regdstD,regwriteD,jumpD,hiloweD,eqcontrolD,lw_format,cp0writeD);

aludec Aludec(opD,functD,rs,rt,alucontrolD);

assign pcsrcD = (branchD&equalD)||jumpD;

//pipeline registers
flopenrc #(30) regE(
	clk,
	rst,
	~stallE,
	flushE,
	{hiloweD, memtoregD, memwriteD, alusrcD, regdstD, regwriteD, alucontrolD,cp0writeD},
	{hiloweE, memtoregE, memwriteE, alusrcE, regdstE, regwriteE, alucontrolE,cp0writeE}
	);

flopenrc #(30) regM(
	clk,rst,~stallE,overflowclear,
	{hiloweE, memtoregE,memwriteE,regwriteE,alucontrolE,cp0writeE},
	{hiloweM, memtoregM,memwriteM,regwriteM,alucontrolM,cp0writeM}
	);

flopenr #(30) regW(
	clk,rst,~stallE,
	{hiloweM, memtoregM,regwriteM,cp0writeM},
	{hiloweW, memtoregW,regwriteW,cp0writeW}
	);

endmodule
