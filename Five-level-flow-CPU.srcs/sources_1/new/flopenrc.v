`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/15 20:36:48
// Design Name:
// Module Name: flopenrc
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


module flopenrc #(parameter WIDTH = 32)(
	input wire clk,rst,ena,flush,
	input wire [WIDTH-1:0] d,
	output reg [WIDTH-1:0] q
);
always@(posedge clk, posedge rst)
begin
		if(rst||flush) begin q <= 0; end
		else if(ena) begin q <= d;end
end
endmodule
