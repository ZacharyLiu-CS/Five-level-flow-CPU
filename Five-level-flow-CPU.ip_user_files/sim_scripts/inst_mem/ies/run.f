-makelib ies/xil_defaultlib -sv \
  "F:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "F:/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_5 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../Five-level-flow-CPU.srcs/sources_1/ip/inst_mem/sim/inst_mem.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

