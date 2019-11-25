# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/lab2_Smart_responder/lab2_Smart_responder.cache/wt [current_project]
set_property parent.project_path D:/lab2_Smart_responder/lab2_Smart_responder.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  D:/lab2_Smart_responder/lab2_Smart_responder.srcs/sources_1/new/push_detect.v
  D:/lab2_Smart_responder/lab2_Smart_responder.srcs/sources_1/new/show_who.v
  D:/lab2_Smart_responder/lab2_Smart_responder.srcs/sources_1/new/count_down.v
  D:/lab2_Smart_responder/lab2_Smart_responder.srcs/sources_1/new/Smart_responder.v
}
read_xdc D:/lab2_Smart_responder/lab2_Smart_responder.srcs/constrs_1/new/Smart_responder.xdc
set_property used_in_implementation false [get_files D:/lab2_Smart_responder/lab2_Smart_responder.srcs/constrs_1/new/Smart_responder.xdc]

synth_design -top Smart_responder -part xc7a35tcsg324-1
write_checkpoint -noxdef Smart_responder.dcp
catch { report_utilization -file Smart_responder_utilization_synth.rpt -pb Smart_responder_utilization_synth.pb }
