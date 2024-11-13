vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/microblaze_v11_0_2
vlib questa_lib/msim/lmb_v10_v3_0_10
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_17
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_24
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_20
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_19
vlib questa_lib/msim/axi_crossbar_v2_1_21
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_iic_v2_0_23

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap microblaze_v11_0_2 questa_lib/msim/microblaze_v11_0_2
vmap lmb_v10_v3_0_10 questa_lib/msim/lmb_v10_v3_0_10
vmap lmb_bram_if_cntlr_v4_0_17 questa_lib/msim/lmb_bram_if_cntlr_v4_0_17
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_17 questa_lib/msim/mdm_v3_2_17
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_24 questa_lib/msim/axi_uartlite_v2_0_24
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 questa_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 questa_lib/msim/axi_crossbar_v2_1_21
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_iic_v2_0_23 questa_lib/msim/axi_iic_v2_0_23

vlog -work xpm -64 -sv "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_clk_wiz_0_0/Micri_blaze_usonic_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_clk_wiz_0_0/Micri_blaze_usonic_clk_wiz_0_0.v" \

vcom -work microblaze_v11_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/f871/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_microblaze_0_0/sim/Micri_blaze_usonic_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_10 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/2e88/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_dlmb_v10_0/sim/Micri_blaze_usonic_dlmb_v10_0.vhd" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_ilmb_v10_0/sim/Micri_blaze_usonic_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_17 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/db6f/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_dlmb_bram_if_cntlr_0/sim/Micri_blaze_usonic_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_ilmb_bram_if_cntlr_0/sim/Micri_blaze_usonic_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_lmb_bram_0/sim/Micri_blaze_usonic_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_17 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/f9aa/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_mdm_1_0/sim/Micri_blaze_usonic_mdm_1_0.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_rst_clk_wiz_0_100M_0/sim/Micri_blaze_usonic_rst_clk_wiz_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_24 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/d8db/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_axi_uartlite_0_0/sim/Micri_blaze_usonic_axi_uartlite_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_xbar_0/sim/Micri_blaze_usonic_xbar_0.v" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_iic_v2_0_23 -64 -93 \
"../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/b41e/hdl/axi_iic_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_axi_iic_0_0/sim/Micri_blaze_usonic_axi_iic_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/4fba" "+incdir+../../../../SoC_soc_24.srcs/sources_1/bd/Micri_blaze_usonic/ipshared/ec67/hdl" \
"../../../bd/Micri_blaze_usonic/ipshared/95ef/src/clock_library.v" \
"../../../bd/Micri_blaze_usonic/ipshared/95ef/src/controler_usonic.v" \
"../../../bd/Micri_blaze_usonic/ipshared/95ef/src/exam2_sequential_logic_edge_detecter.v" \
"../../../bd/Micri_blaze_usonic/ipshared/95ef/hdl/myip_usonic_v1_0_S00_AXI.v" \
"../../../bd/Micri_blaze_usonic/ipshared/95ef/hdl/myip_usonic_v1_0.v" \
"../../../bd/Micri_blaze_usonic/ip/Micri_blaze_usonic_myip_usonic_0_0/sim/Micri_blaze_usonic_myip_usonic_0_0.v" \
"../../../bd/Micri_blaze_usonic/sim/Micri_blaze_usonic.v" \

vlog -work xil_defaultlib \
"glbl.v"

