`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/23 16:16:55
// Design Name:
// Module Name: alu
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
module alu(
    input [7:0] op,
    input [31:0] src_a,
    input [31:0] src_b,
    output reg [31:0]  alu_out,
    output reg overflow,
    input [4:0] sa,
    input [31:0] hi_in,lo_in,
    output reg [31:0] hi_alu_out,
    output reg [31:0] lo_alu_out,
    input [31:0] pcplus8E,
    input [31:0] cp0Data
    );
    //reg [31:0] temp;
    reg [31:0] useless;
    always @(*)
      begin
         overflow = 1'b0;
         case(op)
            `EXE_AND_OP:alu_out = src_a  & src_b;
            `EXE_OR_OP:alu_out = src_a  | src_b;
            `EXE_XOR_OP: alu_out = src_a  ^ src_b;
            `EXE_NOR_OP: alu_out = ~(src_a  | src_b);
            `EXE_ANDI_OP: alu_out = src_a  & src_b;
            `EXE_XORI_OP: alu_out = src_a  ^ src_b;
            `EXE_LUI_OP: alu_out = src_a ^ (src_b<<16);
            `EXE_ORI_OP: alu_out = src_a  | src_b;
            `EXE_MFHI_OP: alu_out = hi_in[31:0];
            `EXE_MFLO_OP: alu_out = lo_in[31:0];
            `EXE_MTHI_OP:  hi_alu_out = src_a;
            `EXE_MTLO_OP:  lo_alu_out = src_a;
            `EXE_SLL_OP: alu_out = src_b  << sa[4:0];
            `EXE_SRL_OP: alu_out = src_b >> sa[4:0];
            `EXE_SRA_OP: alu_out = $signed(src_b) >>> sa[4:0];
            `EXE_SLLV_OP: alu_out = src_b << src_a;
            `EXE_SRLV_OP: alu_out = src_b >> src_a;
            `EXE_SRAV_OP: alu_out = $signed(src_b) >>> src_a;
            `EXE_ADD_OP:begin
                            alu_out = src_a + src_b;//
                            overflow = ((!src_a[31]&&!src_b[31])&&alu_out[31])||((src_a[31]&&src_b[31])&&!alu_out[31]);
                        end
            `EXE_ADDU_OP: alu_out = src_a + src_b;
            `EXE_SUB_OP: begin
                           alu_out = src_a - src_b;
                           overflow = ((src_a[31]&&!src_b[31])&&!alu_out[31])||((!src_a[31]&&src_b[31])&&alu_out[31]);
                         end
            `EXE_SUBU_OP: alu_out = src_a - src_b;
            `EXE_SLT_OP: alu_out = $signed(src_a) < $signed(src_b);
                           //temp = src_a - src_b;
                           //alu_out = (((src_a[31]&&!src_b[31])&&!temp[31])||((!src_a[31]&&src_b[31])&&temp[31]))?((src_a[31]&&!src_b[31])?1'b1:1'b0):(((temp[31] == 1'b0)&&(temp != 0))?1'b0:1'b1);

            `EXE_SLTU_OP: alu_out = src_a < src_b;
            `EXE_MULT_OP: {hi_alu_out,lo_alu_out} = $signed(src_a)*$signed(src_b);
                               //(src_a[31]^src_b[31])?(~(src_a*src_b)+1):(src_a * src_b);
            `EXE_MULTU_OP: {hi_alu_out,lo_alu_out} = src_a * src_b;
   
            `EXE_ADDI_OP: begin
                            alu_out = src_a + src_b;
                            overflow = ((!src_a[31]&&!src_b[31])&&alu_out[31])||((src_a[31]&&src_b[31])&&!alu_out[31]);
                          end
            `EXE_ADDIU_OP: alu_out = src_a + src_b;
            `EXE_SLTI_OP:  alu_out = $signed(src_a) < $signed(src_b);
                           //temp = src_a - src_b;
                           //alu_out = ((src_a[31]&&!src_b[31]&&!temp[31])||(!src_a[31]&&src_b[31]&&temp[31]))?((src_a[31]&&!src_b[31])?1'b1:1'b0):(((temp[31] == 1'b0)&&(temp != 0))?1'b0:1'b1);
            `EXE_SLTIU_OP: alu_out = src_a < src_b;
            `EXE_LB_OP: alu_out = src_a + src_b;
            `EXE_LBU_OP: alu_out = src_a + src_b;
            `EXE_LH_OP: alu_out = src_a + src_b;
            `EXE_LHU_OP: alu_out = src_a + src_b;
            `EXE_LW_OP: alu_out = src_a + src_b;
            `EXE_SB_OP: alu_out = src_a + src_b;
            `EXE_SH_OP: alu_out = src_a + src_b;
            `EXE_SW_OP: alu_out = src_a + src_b;
            `EXE_BGEZAL_OP: alu_out = pcplus8E ;
            `EXE_BLTZAL_OP: alu_out = pcplus8E ;
            `EXE_JAL_OP: alu_out = pcplus8E ;
            `EXE_JALR_OP: alu_out = pcplus8E;
            `EXE_MFC0_OP:alu_out = cp0Data;
            `EXE_MTC0_OP:alu_out = src_b;
            default:  alu_out = 32'bx;
          endcase
      end
endmodule
