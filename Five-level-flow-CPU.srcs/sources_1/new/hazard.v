`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/15 20:40:03
// Design Name:
// Module Name: hazard
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
`include "defines.vh"

module hazard(
	//fetch stage
	output stallF,
	output wire flushF,
	//decode stage
	output flushD,
	input [1:0] jumpD,
	input [4:0] rsD,
	input [4:0] rtD,
	input branchD,
	input [7:0] eqcontrolD,
	output forwardaD,
	output forwardbD,
	output stallD,
	//execute stage
	output div_start,
	input div_ready,
	output stallE,
	input [4:0] rsE,
	input [4:0] rdE,
	input [4:0] rtE,
	input [4:0] writeregE,
	input regwriteE,
	input memtoregE,
	input [7:0] alucontrolE,
	input [1:0] hiloweM,
	output [1:0] forwardaE, forwardbE, forwardhiE, forwardloE,
	output [1:0] forward_j_rsD,
	output flushE,
	//mem stage
	input [4:0] writeregM,
	input [4:0] writeCp0M,
	input [4:0] writeCp0E,
	input regwriteM,
	input cp0writeM,
	input memtoregM,
	output wire stallM,flushM,
	input wire [31:0] excepttypeW,
	input wire [31:0] cp0_epcW,
	output reg[31:0] newpcW,
	//write back stage
	input [4:0] writeregW,
	input regwriteW,
	input [1:0] hiloweW,
	input lw_format,
	output ForwardCp0E,
	output flushW
    );

wire lwstall;
wire branchstall;
wire ForwardCp0E;
wire flush_except;
wire flushD;
wire special_branch = eqcontrolD[1]||eqcontrolD[2]||eqcontrolD[4]||eqcontrolD[5]||eqcontrolD[6]||eqcontrolD[7];
assign branchstall = (branchD&regwriteE&((writeregE==rsD)|((writeregE==rtD)&&(!special_branch))))|(branchD&memtoregM&((writeregM==rsD)|((writeregM==rtD)&&(!special_branch))));
//assign branchstall = (branchD&regwriteE&(writeregE==rsD|writeregE==rtD))|(branchD&memtoregM&(writeregM==rsD|writeregM==rtD));

assign lwstall = ((~lw_format)&&(rsD==rtE)|(rtD==rtE))&memtoregE;

assign stallE = (alucontrolE == `EXE_DIV_OP && div_ready == 1'b0)?1'b1:
				(alucontrolE == `EXE_DIV_OP && div_ready == 1'b1)?1'b0:
				(alucontrolE == `EXE_DIVU_OP && div_ready == 1'b0)?1'b1:
				(alucontrolE == `EXE_DIVU_OP && div_ready == 1'b1)?1'b0:
				1'b0;


assign div_start = (alucontrolE == `EXE_DIV_OP && div_ready == 1'b0)?1'b1:
				   (alucontrolE == `EXE_DIV_OP && div_ready == 1'b1)?1'b0:
				   (alucontrolE == `EXE_DIVU_OP && div_ready == 1'b0)?1'b1:
				   (alucontrolE == `EXE_DIVU_OP && div_ready == 1'b1)?1'b0:
			       1'b0;
assign stallM = stallE;

assign stallF = (lwstall|branchstall ||stallE);
assign stallD = (lwstall|branchstall ||stallE);
assign flushE = (lwstall|branchstall || flush_except);

assign forwardaE = ((rsE!=0)&(rsE==writeregM)&(regwriteM))? 2'b10:((rsE!=0)&(rsE==writeregW)&(regwriteW))? 2'b01:2'b00;
assign forwardbE = (((rtE!=0)&(rtE==writeregM)&(regwriteM))  || (alucontrolE==`EXE_MTC0_OP) && (rtE== writeregE) )? 2'b10:((rtE!=0)&(rtE==writeregW)&(regwriteW))? 2'b01:2'b00;
assign ForwardCp0E = ((rdE!=0)&(rdE == writeCp0E)&(cp0writeM))?1'b1:1'b0;

assign forwardaD = (rsD!=0)&(rsD==writeregM)&(regwriteM);
assign forwardbD = (rtD!=0)&(rtD==writeregM)&(regwriteM);

assign forwardhiE = ((alucontrolE==`EXE_MFHI_OP)&&hiloweM[1])?2'b10:(((alucontrolE==`EXE_MFHI_OP)&&hiloweW[1])?2'b01:2'b00);
assign forwardloE = ((alucontrolE==`EXE_MFLO_OP)&&hiloweM[0])?2'b10:(((alucontrolE==`EXE_MFLO_OP)&&hiloweW[0])?2'b01:2'b00);

assign forward_j_rsD[1] = (jumpD[1]==1'b1)&(rsD==writeregE)&(regwriteE);
assign forward_j_rsD[0] = (jumpD[1]==1'b1)&(rsD==writeregM)&(regwriteM);
//? 2'b10:((jumpD[1]==1'b1)&(rsD==writeregM)&(regwriteM))? 2'b01:2'b00;
assign flush_except = (excepttypeW != 32'b0);
assign flushD = flush_except;
assign flushM = flush_except;
assign flushW = flush_except;
assign flushF = flush_except;

always @(*) begin
		if(excepttypeW != 32'b0) begin
			/* code */
			case (excepttypeW)
				32'h00000001:begin 
					newpcW <= 32'h40;
				end
				32'h00000004:begin 
					newpcW <= 32'h40;

				end
				32'h00000005:begin 
					newpcW <= 32'h40;

				end
				32'h00000008:begin 
					newpcW <= 32'h40;
					// new_pc <= 32'h00000040;
				end
				32'h00000009:begin 
					newpcW <= 32'h40;

				end
				32'h0000000a:begin 
					newpcW <= 32'h40;

				end
				32'h0000000c:begin 
					newpcW <= 32'h40;

				end
				32'h0000000d:begin 
					newpcW <= 32'h40;

				end
				32'h0000000e:begin 
					newpcW <= cp0_epcW;
				end
				default : /* default */;
			endcase
		end
	
	end

endmodule
