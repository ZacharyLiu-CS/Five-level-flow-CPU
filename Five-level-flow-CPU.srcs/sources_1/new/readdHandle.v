`timescale 1ns / 1ps
`include "defines.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/25 14:13:10
// Design Name:
// Module Name: readdHandle
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


module readdHandle(
input [7:0]ALUControlM,
input [31:0]dataadr,
input [31:0]readdata,
output wire[31:0]rd
    );
assign rd = ((ALUControlM == `EXE_LB_OP) && (dataadr[1:0] == 2'b00))?{{24{readdata[7]}}, readdata[7:0]}:
            ((ALUControlM == `EXE_LB_OP) && (dataadr[1:0] == 2'b01))?{{24{readdata[15]}}, readdata[15:8]}:
            ((ALUControlM == `EXE_LB_OP) && (dataadr[1:0] == 2'b10))?{{24{readdata[23]}}, readdata[23:16]}:
            ((ALUControlM == `EXE_LB_OP) && (dataadr[1:0] == 2'b11))?{{24{readdata[31]}}, readdata[31:24]}:
            ((ALUControlM == `EXE_LBU_OP) && (dataadr[1:0] == 2'b00))?{{24'b0}, readdata[7:0]}:
            ((ALUControlM == `EXE_LBU_OP) && (dataadr[1:0] == 2'b01))?{{24'b0}, readdata[15:8]}:
            ((ALUControlM == `EXE_LBU_OP) && (dataadr[1:0] == 2'b10))?{{24'b0}, readdata[23:16]}:
            ((ALUControlM == `EXE_LBU_OP) && (dataadr[1:0] == 2'b11))?{{24'b0}, readdata[31:24]}:
            ((ALUControlM == `EXE_LH_OP) && (dataadr[1:0] == 2'b00))?{{16{readdata[15]}}, readdata[15:0]}:
            ((ALUControlM == `EXE_LH_OP) && (dataadr[1:0] == 2'b10))?{{16{readdata[31]}}, readdata[31:16]}:
            ((ALUControlM == `EXE_LHU_OP) && (dataadr[1:0] == 2'b00))?{{16'b0}, readdata[15:0]}:
            ((ALUControlM == `EXE_LHU_OP) && (dataadr[1:0] == 2'b10))?{{16'b0}, readdata[31:16]}:
            ((ALUControlM == `EXE_LW_OP))?readdata: readdata;


endmodule
