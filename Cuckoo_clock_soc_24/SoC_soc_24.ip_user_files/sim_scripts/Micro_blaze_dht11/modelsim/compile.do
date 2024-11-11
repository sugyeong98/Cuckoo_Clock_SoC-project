vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_2
vlib modelsim_lib/msim/lmb_v10_v3_0_10
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_17
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_v3_2_17
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_uartlite_v2_0_24
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_20
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_19
vlib modelsim_lib/msim/axi_crossbar_v2_1_21
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_iic_v2_0_23

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_2 modelsim_lib/msim/microblaze_v11_0_2
vmap lmb_v10_v3_0_10 modelsim_lib/msim/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 modelsim_lib/msim/mdm_v3_2_17
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 modelsim_lib/msim/axi_uartlite_v2_0_24
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 modelsim_lib/msim/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 modelsim_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 modelsim_lib/msim/axi_crossbar_v2_1_21
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_23 modelsim_lib/msim/axi_iic_v2_0_23

vlog -work xpm -64 -incr -sv "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_clk_wiz_0_0/Micro_blaze_dht11_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_clk_wiz_0_0/Micro_blaze_dht11_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_microblaze_0_0/sim/Micro_blaze_dht11_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_10 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_dlmb_v10_0/sim/Micro_blaze_dht11_dlmb_v10_0.vhd" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_ilmb_v10_0/sim/Micro_blaze_dht11_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_dlmb_bram_if_cntlr_0/sim/Micro_blaze_dht11_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_ilmb_bram_if_cntlr_0/sim/Micro_blaze_dht11_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_lmb_bram_0/sim/Micro_blaze_dht11_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_mdm_1_0/sim/Micro_blaze_dht11_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_rst_clk_wiz_0_100M_0/sim/Micro_blaze_dht11_rst_clk_wiz_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_axi_uartlite_0_0/sim/Micro_blaze_dht11_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_xbar_0/sim/Micro_blaze_dht11_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_23 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/b41e/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_axi_iic_0_0/sim/Micro_blaze_dht11_axi_iic_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micro_blaze_dht11/ipshared/ec67/hdl" \
"../../../bd/Micro_blaze_dht11/ipshared/8d52/src/clock_library.v" \
"../../../bd/Micro_blaze_dht11/ipshared/8d52/src/controler_dht11.v" \
"../../../bd/Micro_blaze_dht11/ipshared/8d52/src/exam2_sequential_logic_edge_detecter.v" \
"../../../bd/Micro_blaze_dht11/ipshared/8d52/hdl/myip_dht11_v1_0_S00_AXI.v" \
"../../../bd/Micro_blaze_dht11/ipshared/8d52/hdl/myip_dht11_v1_0.v" \
"../../../bd/Micro_blaze_dht11/ip/Micro_blaze_dht11_myip_dht11_0_0/sim/Micro_blaze_dht11_myip_dht11_0_0.v" \
"../../../bd/Micro_blaze_dht11/sim/Micro_blaze_dht11.v" \

vlog -work xil_defaultlib \
"glbl.v"

