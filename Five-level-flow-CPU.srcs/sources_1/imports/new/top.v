`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/22 17:32:37
// Design Name:
// Module Name: top
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

module top(
	input wire clk,rst,
	output wire[31:0] writedata,dataadr,
	output wire memwrite
    );

wire [31:0] pc,instr,readdata;
wire [7:0]  ALUControlM;
wire [3:0]  WE;
wire [31:0] wd;
wire [31:0] rd;
//dataadr = aluoutM     writedata=writedataM    readdata=readdataM
mips mips(clk,rst,pc,instr,memwrite,dataadr,writedata,rd,ALUControlM);
inst_mem imem(~clk,pc,instr);
//内存模块
//内存模块前加入写入数据处理 in:aluop,dataadr,writedata out:wd,WE
writedHandle wdh(ALUControlM,dataadr,writedata,wd,WE);
data_mem dmem(.clka(clk),.wea(WE),.addra(dataadr),.dina(wd),.douta(readdata));
//内存模块后加入读出数据处理 in:aluop,dataadr out:readdata
readdHandle rdh(ALUControlM,dataadr,readdata,rd);
endmodule
