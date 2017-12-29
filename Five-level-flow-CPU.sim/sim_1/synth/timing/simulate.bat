@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.1\\bin
call %xv_path%/xsim testbench_time_synth -key {Post-Synthesis:sim_1:Timing:testbench} -tclbatch testbench.tcl -view D:/Xilinx/singel_cpu/project_1/testbench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
