# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.cache/wt [current_project]
set_property parent.project_path F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4/coe/filter_data.coe
add_files -quiet F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0.dcp
set_property used_in_implementation false [get_files F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.runs/dist_mem_gen_0_synth_1/dist_mem_gen_0.dcp]
read_verilog -library xil_defaultlib {
  F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4/multip.v
  F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4/FIR_filter.v
  F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4/FIR_count.v
  F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4/FIR_top.v
}
read_xdc F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.srcs/constrs_1/new/test.xdc
set_property used_in_implementation false [get_files F:/fpga_xilinx/fpga/2016.10.24/myself/project/lab4_filter/lab4_filter.srcs/constrs_1/new/test.xdc]

synth_design -top FIR_top -part xc7a35tcsg324-1
write_checkpoint -noxdef FIR_top.dcp
catch { report_utilization -file FIR_top_utilization_synth.rpt -pb FIR_top_utilization_synth.pb }
