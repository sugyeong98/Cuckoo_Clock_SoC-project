# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.cache/wt [current_project]
set_property parent.project_path C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {C:/Users/SUJIN/AppData/Roaming/Xilinx/Vivado/2019.2/xhub/board_store} [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_repo_paths {
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_bluetooth_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_clock_timer_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_clock_timer_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_keypad_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_pwm_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_usonic_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_dht11_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_dht11_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_dht11_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_dht11_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_fnd_cntr_1.0
  c:/Users/SUJIN/Desktop/sg_workspace/ip_repo/myip_fnd_cntr_1.0
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/hdl/Remo_cuckoo_wrapper.v
add_files C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/Remo_cuckoo.bd
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_clk_wiz_0_0/Remo_cuckoo_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_clk_wiz_0_0/Remo_cuckoo_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_clk_wiz_0_0/Remo_cuckoo_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_0/Remo_cuckoo_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_0/Remo_cuckoo_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_dlmb_v10_0/Remo_cuckoo_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_ilmb_v10_0/Remo_cuckoo_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_lmb_bram_0/Remo_cuckoo_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_axi_intc_0/Remo_cuckoo_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_axi_intc_0/Remo_cuckoo_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_axi_intc_0/Remo_cuckoo_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_mdm_1_0/Remo_cuckoo_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_mdm_1_0/Remo_cuckoo_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_rst_clk_wiz_0_100M_0/Remo_cuckoo_rst_clk_wiz_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_rst_clk_wiz_0_100M_0/Remo_cuckoo_rst_clk_wiz_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_uartlite_0_0/Remo_cuckoo_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_uartlite_0_0/Remo_cuckoo_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_uartlite_0_0/Remo_cuckoo_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_iic_0_0/Remo_cuckoo_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_iic_0_0/Remo_cuckoo_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_gpio_0_0/Remo_cuckoo_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_gpio_0_0/Remo_cuckoo_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_axi_gpio_0_0/Remo_cuckoo_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/Remo_cuckoo_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Remo_cuckoo/ip/Remo_cuckoo_microblaze_0_0/data/mb_bootloop_le.elf]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/constrs_1/imports/�ҽ�����/Basys-3-Master.xdc
set_property used_in_implementation false [get_files C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/constrs_1/imports/�ҽ�����/Basys-3-Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Remo_cuckoo_wrapper -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Remo_cuckoo_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Remo_cuckoo_wrapper_utilization_synth.rpt -pb Remo_cuckoo_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]