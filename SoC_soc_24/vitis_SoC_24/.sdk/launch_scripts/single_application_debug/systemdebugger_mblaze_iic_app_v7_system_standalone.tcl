connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B9A5E8A" && level==0} -index 0
fpga -file C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/vitis_SoC_24/Mblaze_iic_app_v7/_ide/bitstream/Micro_blaze_iic_wrapper_v2.bit
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/vitis_SoC_24/Mblaze_iic_app_v7/Debug/Mblaze_iic_app_v7.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
