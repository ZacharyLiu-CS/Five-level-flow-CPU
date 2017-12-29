`timescale 1ns / 1ps
`include "defines.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/25 13:00:59
// Design Name:
// Module Name: writedHandle
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


module writedHandle(
    input [7:0]ALUControlM,
    input [31:0]dataadr,
    input [31:0]writedata,
    output wire [31:0]wd,
    output wire [3:0]WE
    );
//in:aluop,aluoutM,writedata out:wd,A,WE
    assign  wd  =   (ALUControlM == `EXE_SB_OP)?{writedata[7:0],writedata[7:0],writedata[7:0],writedata[7:0]}:
                    (ALUControlM == `EXE_SH_OP)?{writedata[15:0],writedata[15:0]}:
                    (ALUControlM == `EXE_SW_OP)?writedata:writedata;
    assign  WE =    ( (ALUControlM == `EXE_SB_OP) && (dataadr[1:0] == 2'b00) )?4'b0001:
                    ( (ALUControlM == `EXE_SB_OP) && (dataadr[1:0] == 2'b01) )?4'b0010:
                    ( (ALUControlM == `EXE_SB_OP) && (dataadr[1:0] == 2'b10) )?4'b0100:
                    ( (ALUControlM == `EXE_SB_OP) && (dataadr[1:0] == 2'b11) )?4'b1000:
                    ( (ALUControlM == `EXE_SH_OP) && (dataadr[1:0] == 2'b00) )?4'b0011:
                    ( (ALUControlM == `EXE_SH_OP) && (dataadr[1:0] == 2'b10) )?4'b1100:
                    ( (ALUControlM == `EXE_SW_OP) && (dataadr[1:0] == 2'b00) )?4'b1111:
                    4'bxxxx;



endmodule
