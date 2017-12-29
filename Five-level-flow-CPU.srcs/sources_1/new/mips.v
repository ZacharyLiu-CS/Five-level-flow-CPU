`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/23 17:14:39
// Design Name:
// Module Name: mips
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



module mips (
	input wire clk,rst,
	output wire [31:0] pcF,
	input wire [31:0] instrF,
	output wire memwriteM,
	output wire [31:0] aluoutM, writedataM,
	input wire [31:0] readdataM,
    output wire [7:0] alucontrolM
);

wire [5:0] opD,functD;
wire [1:0] regdstE;
wire alusrcE,pcsrcD,memtoregE,memtoregM,memtoregW,
		regwriteE,regwriteM,regwriteW;
wire [7:0] alucontrolE;
wire flushE,overflow,branchD,equalD;
wire [1:0] jumpD;
wire [4:0] rs,rt,rd;
wire [1:0] hiloweE;
wire [1:0] hiloweM;
wire [7:0]alucontrolM;
wire [1:0] hiloweW;
wire [7:0] eqcontrolD;
wire lw_format;
wire stallE;
wire invalidD;
wire cp0writeM;
controller c(
clk,rst,
stallE,
//decode stage
opD,functD,
rs,rt,rd,
pcsrcD,branchD,eqcontrolD,equalD,jumpD,invalidD,

//execute stage
flushE,overflowE,
memtoregE,alusrcE,
regdstE,regwriteE,
alucontrolE,
hiloweE,

//mem stage
memtoregM,memwriteM,
cp0writeM,
regwriteM,
hiloweM,
alucontrolM,
//write back stage
memtoregW,regwriteW,cp0writeW,
hiloweW,
lw_format
);
wire is_in_delayslot = 1'b0;
wire flushW = 1'b0;
datapath dp (
clk,rst,
//fetch stage
pcF,
instrF,
//decode stage
pcsrcD,branchD,
jumpD,
invalidD,
eqcontrolD,
equalD,
opD,functD,
rs,rt,rd,
//execute stage
memtoregE,
alusrcE,
regdstE,regwriteE,
alucontrolE,
flushE,overflowE,
stallE,
//mem stage
hiloweM,
memtoregM,
regwriteM,
cp0writeM,
aluoutM,writedataM,
readdataM,
//writeback stage
memtoregW,
regwriteW,
cp0writeW,
hiloweW,
lw_format,
flushW,
is_in_delayslot
);

endmodule
