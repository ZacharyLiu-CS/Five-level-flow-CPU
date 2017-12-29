`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/15 20:34:16
// Design Name:
// Module Name: floprc
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

module floprc #(parameter WIDTH = 32)(
	input wire clk,rst,flush,
	input wire [WIDTH-1:0] d,
	output reg [WIDTH-1:0] q
);
always@(posedge clk, posedge rst)
begin
	if(rst||flush) begin q <= 0; end
	else begin q <= d; end
end
endmodule
