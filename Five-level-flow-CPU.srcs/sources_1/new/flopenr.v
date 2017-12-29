`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/15 20:35:47
// Design Name: 
// Module Name: flopenr
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


module flopenr #(parameter WIDTH = 32)(
	input wire clk,rst,ena,
	input wire [WIDTH-1:0] d,
	output reg [WIDTH-1:0] q
);
always@(posedge clk, posedge rst)
begin
		if(rst) begin q <= 0; end
		else if(ena) begin q <= d; end
end
endmodule