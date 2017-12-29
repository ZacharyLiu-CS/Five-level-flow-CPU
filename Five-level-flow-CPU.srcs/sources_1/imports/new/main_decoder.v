`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/22 14:05:49
// Design Name:
// Module Name: main_decoder
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
module maindec(
    input [5:0] op,
    input [5:0] funct,
    input [4:0] rs,
    input [4:0] rt,
    input [4:0] rd,
    output wire memtoreg,memen,memwrite,
    output wire branch,alusrc,
    output wire [1:0] regdst,
    output wire regwrite,
    output [1:0] jump,
    output [1:0] hilowe,
    output [7:0] eqcontrol,
    output lw_format,
    output cp0write
    //output [1:0] ALU_op
    );
    wire R_format, R_special, branch_format,alusrc_format,regwrite_format,lw_format,sw_format,jal_format,jr_format,address_format;
    wire  mtc0,mfc0;
    wire cp0write;
    wire [1:0] jump_format;
    assign R_format = (op==`EXE_SPECIAL_INST)?1'b1:1'b0;
    assign R_special = R_format&&((funct==`EXE_DIV)||(funct==`EXE_DIVU)||(funct==`EXE_MTHI)||(funct==`EXE_MTLO)||(funct==`EXE_MULT)||(funct==`EXE_MULTU));
    assign lw_format = (op[5:3]==3'b100)?1'b1:1'b0;
    assign sw_format = (op[5:3]==3'b101)?1'b1:1'b0;
    assign address_format = ((op==6'b000001)&&(rt==`EXE_BLTZAL))||((op==6'b000001)&&(rt==`EXE_BGEZAL))||(op==`EXE_JAL)||(R_format&&(funct==`EXE_JALR));
    assign branch_format = ((!R_format)&&(op[5:3]==3'b000)&&(op[2:0]!=3'b010)&&(op[2:0]!=3'b011))?1'b1:1'b0;
    assign alusrc_format = (op[5:3]==3'b001)?1'b1:1'b0;
    //special power instruction
    assign mtc0 = ( (op == 6'b010000) && (rs == 5'b00100));
    assign mfc0 = ( (op == 6'b010000) && (rs == 5'b00000));



    assign regwrite_format = (R_format||alusrc_format||lw_format||address_format)&&(!R_special);
    //assign jump_format = (op==`EXE_SPECIAL_INST&&(funct==`EXE_JR))||(op == `EXE_J);/////
    assign jump_format[1] = (op==`EXE_SPECIAL_INST&&(funct==`EXE_JR))||jalr_format;//跳转至rs寄存器
    assign jump_format[0] = (op==`EXE_J)||jal_format;//跳转instr_index

    assign jal_format = (op==`EXE_JAL)?1'b1:1'b0;
    assign jalr_format = (op==`EXE_SPECIAL_INST&&(funct==`EXE_JALR));
   // assign jr_format = (op==`EXE_SPECIAL_INST)&&((funct==`EXE_JR)||(funct==`EXE_JALR));
   // assign bal_format = (op==6'b000001)&&((rt==`EXE_BLTZAL)||(rt==`EXE_BGEZAL));
    //
    assign memtoreg = lw_format;
    assign memen = 1'b1;
    assign memwrite = sw_format;

    assign branch = branch_format;
    assign alusrc = (alusrc_format||lw_format||sw_format||branch_format);
    assign regdst[0] = (R_format&&(rd != 5'b00000) );
    assign regdst[1] = eqcontrol[5]||eqcontrol[7]||jal_format;

    assign regwrite = ( regwrite_format || mfc0);
    assign cp0write = mtc0 ;

    assign jump = jump_format;
    assign hilowe[1] = (R_format&&(funct==`EXE_MTHI))||(R_format&&(funct==`EXE_MULT))||(R_format&&(funct==`EXE_MULTU))||(R_format&&(funct==`EXE_DIV))||(R_format&&(funct==`EXE_DIVU));
    assign hilowe[0] = (R_format&&(funct==`EXE_MTLO))||(R_format&&(funct==`EXE_MULT))||(R_format&&(funct==`EXE_MULTU))||(R_format&&(funct==`EXE_DIV))||(R_format&&(funct==`EXE_DIVU));
    assign eqcontrol[0] = (op==`EXE_BEQ);
    assign eqcontrol[1] = (op==`EXE_BGTZ);
    assign eqcontrol[2] = (op==`EXE_BLEZ);
    assign eqcontrol[3] = (op==`EXE_BNE);
    assign eqcontrol[4] = ((op==6'b000001)&&(rt==`EXE_BLTZ));
    assign eqcontrol[5] = ((op==6'b000001)&&(rt==`EXE_BLTZAL));
    assign eqcontrol[6] = ((op==6'b000001)&&(rt==`EXE_BGEZ));
    assign eqcontrol[7] = ((op==6'b000001)&&(rt==`EXE_BGEZAL));

endmodule

