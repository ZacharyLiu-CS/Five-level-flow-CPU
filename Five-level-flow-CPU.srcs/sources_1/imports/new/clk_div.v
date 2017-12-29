`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/22 17:43:35
// Design Name: 
// Module Name: clk_div
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


module clk_div(
    input clk_in,
    input rst,
    output reg clk_out
    );
    reg [4:0] counter;
    always @(posedge clk_in, posedge rst) 
    begin
        if(rst) 
        begin
            counter <= 0;
            clk_out <= 0;
        end
        else counter = counter + 1;

        if(counter==5)
        begin 
            clk_out <= ~clk_out;
            counter <= 0;
        end
    end

endmodule