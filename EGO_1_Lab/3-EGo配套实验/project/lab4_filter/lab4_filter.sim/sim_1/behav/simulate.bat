@echo off
set xv_path=D:\\software\\vivado\\2015.4\\bin
call %xv_path%/xsim FIR_tb_behav -key {Behavioral:sim_1:Functional:FIR_tb} -tclbatch FIR_tb.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
