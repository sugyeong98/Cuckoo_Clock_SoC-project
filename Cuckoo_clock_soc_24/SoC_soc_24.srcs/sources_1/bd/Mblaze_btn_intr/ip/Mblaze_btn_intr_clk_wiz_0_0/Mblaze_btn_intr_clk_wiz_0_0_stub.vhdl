-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Oct 28 17:17:34 2024
-- Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/SUJIN/Desktop/sg_workspace/SoC_soc_24/SoC_soc_24.srcs/sources_1/bd/Mblaze_btn_intr/ip/Mblaze_btn_intr_clk_wiz_0_0/Mblaze_btn_intr_clk_wiz_0_0_stub.vhdl
-- Design      : Mblaze_btn_intr_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mblaze_btn_intr_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end Mblaze_btn_intr_clk_wiz_0_0;

architecture stub of Mblaze_btn_intr_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;