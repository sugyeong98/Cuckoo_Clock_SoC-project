-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Oct 24 17:35:27 2024
-- Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Micro_blaze_iic_v0/ip/Micro_blaze_iic_v0_clk_wiz_0_0/Micro_blaze_iic_v0_clk_wiz_0_0_stub.vhdl
-- Design      : Micro_blaze_iic_v0_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Micro_blaze_iic_v0_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Micro_blaze_iic_v0_clk_wiz_0_0;

architecture stub of Micro_blaze_iic_v0_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
