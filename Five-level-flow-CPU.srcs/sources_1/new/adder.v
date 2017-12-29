`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/25 14:43:57
// Design Name: 
// Module Name: adder
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



module adder #(parameter WIDTH = 32)
        (input [WIDTH-1:0] num1,
         input [WIDTH-1:0] num2,
         output [WIDTH-1:0] numout
        );

    assign numout = num1 + num2;
endmodule
