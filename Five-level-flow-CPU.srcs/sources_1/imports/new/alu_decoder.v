`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2017/11/22 14:06:31
// Design Name:
// Module Name: alu_decoder
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

module aludec(
        input [5:0] op,
        input [5:0] funct,
        input [4:0] rs,
        input [4:0] rt,
        output reg [7:0] alu_control
    );
always @(*)
begin
  case(op)
    `EXE_SPECIAL_INST:
       begin
          case(funct)
            `EXE_AND:alu_control<=`EXE_AND_OP;
            `EXE_OR:alu_control<=`EXE_OR_OP;
            `EXE_XOR:alu_control<=`EXE_XOR_OP;
            `EXE_NOR:alu_control<=`EXE_NOR_OP;
            `EXE_SLL:alu_control<=`EXE_SLL_OP;
            `EXE_SRL:alu_control<=`EXE_SRL_OP;
            `EXE_SRA:alu_control<=`EXE_SRA_OP;
            `EXE_SLLV:alu_control<=`EXE_SLLV_OP;
            `EXE_SRLV:alu_control<=`EXE_SRLV_OP;
            `EXE_SRAV:alu_control<=`EXE_SRAV_OP;
            `EXE_MFHI:alu_control<=`EXE_MFHI_OP;
            `EXE_MTHI:alu_control<=`EXE_MTHI_OP;
            `EXE_MFLO:alu_control<=`EXE_MFLO_OP;
            `EXE_MTLO:alu_control<=`EXE_MTLO_OP;
            `EXE_ADD:alu_control<=`EXE_ADD_OP;
            `EXE_ADDU:alu_control<=`EXE_ADDU_OP;
            `EXE_SUB:alu_control<=`EXE_SUB_OP;
            `EXE_SUBU:alu_control<=`EXE_SUBU_OP;
            `EXE_SLT:alu_control<=`EXE_SLT_OP;
            `EXE_SLTU:alu_control<=`EXE_SLTU_OP;
            `EXE_MULT:alu_control<=`EXE_MULT_OP;
            `EXE_MULTU:alu_control<=`EXE_MULTU_OP;
            `EXE_DIV:alu_control<=`EXE_DIV_OP;
            `EXE_DIVU:alu_control<=`EXE_DIVU_OP;
            `EXE_JR:alu_control<=`EXE_JR_OP;
            `EXE_JALR:alu_control<=`EXE_JALR_OP;
            `EXE_SYSCALL:alu_control<=`EXE_SYSCALL_OP;
            `EXE_BREAK:alu_control<=`EXE_BREAK_OP;
            default:alu_control<=8'bxxxxxxxx;
          endcase
        end
    `EXE_ANDI:alu_control<=`EXE_ANDI_OP;
    `EXE_XORI:alu_control<=`EXE_XORI_OP;
    `EXE_LUI:alu_control<=`EXE_LUI_OP;
    `EXE_ORI:alu_control<=`EXE_ORI_OP;
    `EXE_ADDI:alu_control<=`EXE_ADDI_OP;
    `EXE_ADDIU:alu_control<=`EXE_ADDIU_OP;
    `EXE_SLTI:alu_control<=`EXE_SLTI_OP;
    `EXE_SLTIU:alu_control<=`EXE_SLTIU_OP;
    `EXE_J:alu_control<=`EXE_J_OP;
    `EXE_JAL:alu_control<=`EXE_JAL_OP;
    `EXE_BEQ:alu_control<=`EXE_BEQ_OP;
    `EXE_BGTZ:alu_control<=`EXE_BGTZ_OP;
    `EXE_BLEZ:alu_control<=`EXE_BLEZ_OP;
    `EXE_BNE:alu_control<=`EXE_BNE_OP;
    ////////////////////////
    `EXE_LB:alu_control<=`EXE_LB_OP;
    `EXE_LBU:alu_control<=`EXE_LBU_OP;
    `EXE_LH:alu_control<=`EXE_LH_OP;
    `EXE_LHU:alu_control<=`EXE_LHU_OP;
    `EXE_LW:alu_control<=`EXE_LW_OP;
    `EXE_SB:alu_control<=`EXE_SB_OP;
    `EXE_SH:alu_control<=`EXE_SH_OP;
    `EXE_SW:alu_control<=`EXE_SW_OP;
    //`EXE_ERET:alu_control<=`EXE_ERET_OP;
    // `EXE_NOP:alu_control<=`EXE_NOP_OP;
     6'b000001:
          begin
              case(rt)
                `EXE_BGEZ:alu_control<=`EXE_BGEZ_OP;
                `EXE_BGEZAL:alu_control<=`EXE_BGEZAL_OP;
                `EXE_BLTZ:alu_control<=`EXE_BLTZ_OP;
                `EXE_BLTZAL:alu_control<=`EXE_BLTZAL_OP;
              endcase
          end
    6'b010000:
        begin
            case (rs)
            5'b00100:alu_control <= `EXE_MTC0_OP;
            5'b00000:alu_control <= `EXE_MFC0_OP;
            endcase
        end
    default:alu_control<=8'bxxxxxxxx;
   endcase
end
endmodule
