`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/12/15 20:37:28
// Design Name:
// Module Name: eqcmp
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

module eqcmp(
	input wire [31:0] a,b,
    input wire [7:0] branchseclt,
	output wire y
);
assign y = (branchseclt[0]?((a==b)?1'b1:1'b0):1'b0)||//beq
           (branchseclt[1]?(($signed(a) >$signed(32'b0))?1'b1:1'b0):1'b0)||//bgtz
           (branchseclt[2]?(($signed(a)<=$signed(32'b0))?1'b1:1'b0):1'b0)||//blez
           (branchseclt[3]?((a!=b)?1'b1:1'b0):1'b0)||//bne
           (branchseclt[4]?(($signed(a) <$signed(32'b0))?1'b1:1'b0):1'b0)||//bltz
           (branchseclt[5]?(($signed(a) <$signed(32'b0))?1'b1:1'b0):1'b0)||//bltzal
           (branchseclt[6]?(($signed(a)>=$signed(32'b0))?1'b1:1'b0):1'b0)||//bgez
           (branchseclt[7]?(($signed(a)>=$signed(32'b0))?1'b1:1'b0):1'b0)//bgezal
           ;

endmodule
