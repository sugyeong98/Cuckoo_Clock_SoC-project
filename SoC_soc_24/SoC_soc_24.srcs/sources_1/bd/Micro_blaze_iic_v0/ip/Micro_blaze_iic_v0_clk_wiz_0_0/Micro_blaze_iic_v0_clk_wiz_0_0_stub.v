// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Oct 24 17:35:27 2024
// Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Micro_blaze_iic_v0/ip/Micro_blaze_iic_v0_clk_wiz_0_0/Micro_blaze_iic_v0_clk_wiz_0_0_stub.v
// Design      : Micro_blaze_iic_v0_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Micro_blaze_iic_v0_clk_wiz_0_0(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
