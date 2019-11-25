#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/Xilinx/SDK/2016.1/bin;D:/Xilinx/Vivado/2016.1/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2016.1/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2016.1/bin
else
  PATH=D:/Xilinx/SDK/2016.1/bin;D:/Xilinx/Vivado/2016.1/ids_lite/ISE/bin/nt64;D:/Xilinx/Vivado/2016.1/ids_lite/ISE/lib/nt64:D:/Xilinx/Vivado/2016.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='F:/fpga_xilinx/fpga/2016.10.25/myself/lab5_uart/lab5_uart.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log uart_demo.vds -m64 -mode batch -messageDb vivado.pb -notrace -source uart_demo.tcl
