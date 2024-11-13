-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Fri Oct 25 10:49:52 2024
-- Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Micro_blaze_dht11_myip_dht11_0_0_sim_netlist.vhdl
-- Design      : Micro_blaze_dht11_myip_dht11_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  port (
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_usec1 : STD_LOGIC;
  signal \count_usec[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_usec[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[12]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[20]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[4]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_usec[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_usec_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_usec_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  AR(0) <= \^ar\(0);
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
\count_usec[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => count_usec_reg_0_sn_1,
      O => ff_old_reg_0
    );
\count_usec[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => count_usec_reg_0_sn_1,
      O => count_usec1
    );
\count_usec[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(3),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_4_n_0\
    );
\count_usec[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_5_n_0\
    );
\count_usec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[0]_i_6_n_0\
    );
\count_usec[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC4C"
    )
        port map (
      I0 => count_usec_reg(0),
      I1 => count_usec_reg_0_sn_1,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \count_usec[0]_i_7_n_0\
    );
\count_usec[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(15),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_2_n_0\
    );
\count_usec[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_3_n_0\
    );
\count_usec[12]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(13),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_4_n_0\
    );
\count_usec[12]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(12),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[12]_i_5_n_0\
    );
\count_usec[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(19),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_2_n_0\
    );
\count_usec[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(18),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_3_n_0\
    );
\count_usec[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_4_n_0\
    );
\count_usec[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(16),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[16]_i_5_n_0\
    );
\count_usec[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(21),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_2_n_0\
    );
\count_usec[20]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(20),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[20]_i_3_n_0\
    );
\count_usec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(7),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_2_n_0\
    );
\count_usec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_3_n_0\
    );
\count_usec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_4_n_0\
    );
\count_usec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(4),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[4]_i_5_n_0\
    );
\count_usec[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_2_n_0\
    );
\count_usec[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_3_n_0\
    );
\count_usec[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_4_n_0\
    );
\count_usec[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF00"
    )
        port map (
      I0 => count_usec_reg(8),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_reg_0_sn_1,
      O => \count_usec[8]_i_5_n_0\
    );
\count_usec_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_usec_reg[0]_i_2_n_0\,
      CO(2) => \count_usec_reg[0]_i_2_n_1\,
      CO(1) => \count_usec_reg[0]_i_2_n_2\,
      CO(0) => \count_usec_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => count_usec1,
      O(3 downto 0) => O(3 downto 0),
      S(3) => \count_usec[0]_i_4_n_0\,
      S(2) => \count_usec[0]_i_5_n_0\,
      S(1) => \count_usec[0]_i_6_n_0\,
      S(0) => \count_usec[0]_i_7_n_0\
    );
\count_usec_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[8]_i_1_n_0\,
      CO(3) => \count_usec_reg[12]_i_1_n_0\,
      CO(2) => \count_usec_reg[12]_i_1_n_1\,
      CO(1) => \count_usec_reg[12]_i_1_n_2\,
      CO(0) => \count_usec_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      S(3) => \count_usec[12]_i_2_n_0\,
      S(2) => \count_usec[12]_i_3_n_0\,
      S(1) => \count_usec[12]_i_4_n_0\,
      S(0) => \count_usec[12]_i_5_n_0\
    );
\count_usec_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[12]_i_1_n_0\,
      CO(3) => \count_usec_reg[16]_i_1_n_0\,
      CO(2) => \count_usec_reg[16]_i_1_n_1\,
      CO(1) => \count_usec_reg[16]_i_1_n_2\,
      CO(0) => \count_usec_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      S(3) => \count_usec[16]_i_2_n_0\,
      S(2) => \count_usec[16]_i_3_n_0\,
      S(1) => \count_usec[16]_i_4_n_0\,
      S(0) => \count_usec[16]_i_5_n_0\
    );
\count_usec_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[16]_i_1_n_0\,
      CO(3 downto 1) => \NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_usec_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_usec_reg[20]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \count_usec[20]_i_2_n_0\,
      S(0) => \count_usec[20]_i_3_n_0\
    );
\count_usec_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[0]_i_2_n_0\,
      CO(3) => \count_usec_reg[4]_i_1_n_0\,
      CO(2) => \count_usec_reg[4]_i_1_n_1\,
      CO(1) => \count_usec_reg[4]_i_1_n_2\,
      CO(0) => \count_usec_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      S(3) => \count_usec[4]_i_2_n_0\,
      S(2) => \count_usec[4]_i_3_n_0\,
      S(1) => \count_usec[4]_i_4_n_0\,
      S(0) => \count_usec[4]_i_5_n_0\
    );
\count_usec_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_usec_reg[4]_i_1_n_0\,
      CO(3) => \count_usec_reg[8]_i_1_n_0\,
      CO(2) => \count_usec_reg[8]_i_1_n_1\,
      CO(1) => \count_usec_reg[8]_i_1_n_2\,
      CO(0) => \count_usec_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      S(3) => \count_usec[8]_i_2_n_0\,
      S(2) => \count_usec[8]_i_3_n_0\,
      S(1) => \count_usec[8]_i_4_n_0\,
      S(0) => \count_usec[8]_i_5_n_0\
    );
ff_cur_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(3),
      I5 => Q(4),
      O => p_0_out
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_out,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\state[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_data_reg[16]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \read_state_reg[1]\ : out STD_LOGIC;
    \read_state_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_data_reg[38]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \state_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \read_state_reg[0]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \state_reg[5]_0\ : out STD_LOGIC;
    \state_reg[4]\ : out STD_LOGIC;
    \temp_data_reg[36]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \state_reg[3]\ : out STD_LOGIC;
    \temp_data_reg[34]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    ff_old_reg_0 : in STD_LOGIC;
    count_usec_e_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \humidity_reg[7]\ : in STD_LOGIC_VECTOR ( 39 downto 0 );
    dht11_data_0 : in STD_LOGIC;
    \read_state_reg[1]_1\ : in STD_LOGIC;
    \read_state_reg[1]_2\ : in STD_LOGIC;
    \read_state_reg[1]_3\ : in STD_LOGIC;
    \temperature_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    humidity1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \temp_data_reg[0]\ : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \temp_data_reg[0]_0\ : in STD_LOGIC;
    \temp_data_reg[0]_1\ : in STD_LOGIC;
    \next_state_reg[0]\ : in STD_LOGIC;
    \next_state_reg[0]_0\ : in STD_LOGIC;
    \next_state_reg[0]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \^d\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \data_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_count[5]_i_3_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_10_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_11_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_12_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_13_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_i_9_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_2_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_3_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_4_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_5_n_0\ : STD_LOGIC;
  signal \humidity[7]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \read_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_3_n_0\ : STD_LOGIC;
  signal \^temp_data_reg[16]\ : STD_LOGIC;
  signal \^temp_data_reg[36]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^temp_data_reg[38]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of count_usec_e_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_count[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_count[4]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \humidity[7]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[5]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \next_state[5]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state[5]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_state[1]_i_2\ : label is "soft_lutpair0";
begin
  D(6 downto 0) <= \^d\(6 downto 0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  \temp_data_reg[16]\ <= \^temp_data_reg[16]\;
  \temp_data_reg[36]\(2 downto 0) <= \^temp_data_reg[36]\(2 downto 0);
  \temp_data_reg[38]\(31 downto 0) <= \^temp_data_reg[38]\(31 downto 0);
count_usec_e_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \humidity[7]_i_4_n_0\,
      I1 => count_usec_e_reg,
      I2 => \next_state_reg[0]_1\(3),
      I3 => \data_count[1]_i_2_n_0\,
      O => \state_reg[5]_0\
    );
count_usec_e_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => \next_state_reg[0]_1\(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_e_reg,
      O => \state_reg[3]\
    );
count_usec_e_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E0EE"
    )
        port map (
      I0 => \next_state_reg[0]_1\(2),
      I1 => \next_state_reg[0]_1\(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => count_usec_e_reg,
      O => \state_reg[4]\
    );
\data_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8AAA00002000"
    )
        port map (
      I0 => \next_state[5]_i_6_n_0\,
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => Q(0),
      O => \read_state_reg[0]\(0)
    );
\data_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \next_state[5]_i_6_n_0\,
      I1 => \data_count[1]_i_2_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      O => \read_state_reg[0]\(1)
    );
\data_count[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \read_state_reg[1]_3\,
      I1 => \read_state_reg[1]_2\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \data_count[1]_i_2_n_0\
    );
\data_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0020"
    )
        port map (
      I0 => \next_state[5]_i_6_n_0\,
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => \data_count[3]_i_2_n_0\,
      I4 => Q(2),
      O => \read_state_reg[0]\(2)
    );
\data_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF004000000000"
    )
        port map (
      I0 => \read_state_reg[1]_3\,
      I1 => \read_state_reg[1]_2\,
      I2 => Q(2),
      I3 => \data_count[3]_i_2_n_0\,
      I4 => Q(3),
      I5 => \next_state[5]_i_6_n_0\,
      O => \read_state_reg[0]\(3)
    );
\data_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => Q(0),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => Q(1),
      O => \data_count[3]_i_2_n_0\
    );
\data_count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => Q(3),
      I1 => \data_count[4]_i_2_n_0\,
      I2 => Q(4),
      I3 => \next_state[5]_i_6_n_0\,
      O => \read_state_reg[0]\(4)
    );
\data_count[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \read_state_reg[1]_3\,
      I1 => \read_state_reg[1]_2\,
      I2 => Q(2),
      I3 => Q(0),
      I4 => \data_count[4]_i_3_n_0\,
      I5 => Q(1),
      O => \data_count[4]_i_2_n_0\
    );
\data_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => \data_count[4]_i_3_n_0\
    );
\data_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88A82222"
    )
        port map (
      I0 => \next_state[5]_i_6_n_0\,
      I1 => \data_count[5]_i_3_n_0\,
      I2 => \read_state_reg[1]_3\,
      I3 => \read_state_reg[1]_2\,
      I4 => Q(5),
      O => \read_state_reg[0]\(5)
    );
\data_count[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => Q(2),
      I4 => \data_count[3]_i_2_n_0\,
      I5 => Q(3),
      O => \data_count[5]_i_3_n_0\
    );
dht11_data_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => '0',
      I1 => dht11_data_0,
      I2 => '0',
      I3 => '0',
      I4 => '0',
      I5 => '0',
      O => dht11_data
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => ff_old_reg_0,
      D => dht11_data,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => ff_old_reg_0,
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\humidity1__2_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => \humidity1__2_carry__0_i_8_n_0\,
      I1 => \humidity1__2_carry__0_i_9_n_0\,
      I2 => \humidity_reg[7]\(36),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(37),
      O => \^temp_data_reg[36]\(2)
    );
\humidity1__2_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \humidity_reg[7]\(12),
      I2 => \^d\(3),
      I3 => \humidity_reg[7]\(27),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(28),
      O => \humidity1__2_carry__0_i_10_n_0\
    );
\humidity1__2_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF3E2E2C02200"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(10),
      I3 => \humidity_reg[7]\(27),
      I4 => \humidity_reg[7]\(26),
      I5 => \^d\(2),
      O => \humidity1__2_carry__0_i_11_n_0\
    );
\humidity1__2_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF3E2E2C02200"
    )
        port map (
      I0 => \humidity_reg[7]\(13),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(12),
      I3 => \humidity_reg[7]\(29),
      I4 => \humidity_reg[7]\(28),
      I5 => \^d\(4),
      O => \humidity1__2_carry__0_i_12_n_0\
    );
\humidity1__2_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8748B47478B74B8"
    )
        port map (
      I0 => \humidity_reg[7]\(14),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(15),
      I3 => \humidity_reg[7]\(22),
      I4 => \humidity_reg[7]\(23),
      I5 => \humidity1__2_carry__0_i_15_n_0\,
      O => \humidity1__2_carry__0_i_13_n_0\
    );
\humidity1__2_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(13),
      I1 => \humidity_reg[7]\(14),
      I2 => \^d\(5),
      I3 => \humidity_reg[7]\(29),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(30),
      O => \humidity1__2_carry__0_i_14_n_0\
    );
\humidity1__2_carry__0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => \humidity_reg[7]\(39),
      I1 => \humidity_reg[7]\(38),
      I2 => \humidity_reg[7]\(31),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(30),
      O => \humidity1__2_carry__0_i_15_n_0\
    );
\humidity1__2_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD54540"
    )
        port map (
      I0 => \humidity1__2_carry__0_i_10_n_0\,
      I1 => \humidity_reg[7]\(35),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(36),
      I4 => \humidity1__2_carry__0_i_11_n_0\,
      O => \^temp_data_reg[36]\(1)
    );
\humidity1__2_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => \humidity1__2_carry_i_12_n_0\,
      I1 => \humidity1__2_carry_i_13_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(35),
      O => \^temp_data_reg[36]\(0)
    );
\humidity1__2_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8818117177E7EE8"
    )
        port map (
      I0 => \humidity1__2_carry__0_i_12_n_0\,
      I1 => \^temp_data_reg[38]\(30),
      I2 => \^temp_data_reg[38]\(14),
      I3 => \^temp_data_reg[38]\(22),
      I4 => \^d\(5),
      I5 => \humidity1__2_carry__0_i_13_n_0\,
      O => S(3)
    );
\humidity1__2_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(2),
      I1 => \humidity1__2_carry__0_i_12_n_0\,
      I2 => \humidity_reg[7]\(37),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(38),
      I5 => \humidity1__2_carry__0_i_14_n_0\,
      O => S(2)
    );
\humidity1__2_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(1),
      I1 => \humidity1__2_carry__0_i_8_n_0\,
      I2 => \humidity_reg[7]\(36),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(37),
      I5 => \humidity1__2_carry__0_i_9_n_0\,
      O => S(1)
    );
\humidity1__2_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^temp_data_reg[36]\(0),
      I1 => \humidity1__2_carry__0_i_11_n_0\,
      I2 => \humidity_reg[7]\(35),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(36),
      I5 => \humidity1__2_carry__0_i_10_n_0\,
      O => S(0)
    );
\humidity1__2_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF3E2E2C02200"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(11),
      I3 => \humidity_reg[7]\(28),
      I4 => \humidity_reg[7]\(27),
      I5 => \^d\(3),
      O => \humidity1__2_carry__0_i_8_n_0\
    );
\humidity1__2_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => \humidity_reg[7]\(13),
      I2 => \^d\(4),
      I3 => \humidity_reg[7]\(28),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(29),
      O => \humidity1__2_carry__0_i_9_n_0\
    );
\humidity1__2_carry_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BBB222"
    )
        port map (
      I0 => \humidity1__2_carry_i_9_n_0\,
      I1 => \humidity1__2_carry_i_10_n_0\,
      I2 => \humidity_reg[7]\(33),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(34),
      O => \^di\(3)
    );
\humidity1__2_carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(9),
      I1 => \humidity_reg[7]\(10),
      I2 => \^d\(1),
      I3 => \humidity_reg[7]\(25),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(26),
      O => \humidity1__2_carry_i_10_n_0\
    );
\humidity1__2_carry_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(8),
      I1 => \humidity_reg[7]\(9),
      I2 => \^temp_data_reg[16]\,
      I3 => \humidity_reg[7]\(24),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(25),
      O => \humidity1__2_carry_i_11_n_0\
    );
\humidity1__2_carry_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF3E2E2C02200"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(9),
      I3 => \humidity_reg[7]\(26),
      I4 => \humidity_reg[7]\(25),
      I5 => \^d\(1),
      O => \humidity1__2_carry_i_12_n_0\
    );
\humidity1__2_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AA53C3C5AA5C3C3"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \humidity_reg[7]\(11),
      I2 => \^d\(2),
      I3 => \humidity_reg[7]\(26),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(27),
      O => \humidity1__2_carry_i_13_n_0\
    );
\humidity1__2_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699969"
    )
        port map (
      I0 => \humidity1__2_carry_i_9_n_0\,
      I1 => \humidity1__2_carry_i_10_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(33),
      O => \^di\(2)
    );
\humidity1__2_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \humidity1__2_carry_i_11_n_0\,
      I1 => \humidity_reg[7]\(33),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(32),
      O => \^di\(1)
    );
\humidity1__2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C33CA5A5C33C5A5A"
    )
        port map (
      I0 => \humidity_reg[7]\(8),
      I1 => \humidity_reg[7]\(7),
      I2 => \^d\(0),
      I3 => \humidity_reg[7]\(23),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(24),
      O => \^di\(0)
    );
\humidity1__2_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699966669666999"
    )
        port map (
      I0 => \^di\(3),
      I1 => \humidity1__2_carry_i_12_n_0\,
      I2 => \humidity_reg[7]\(34),
      I3 => \data_count[1]_i_2_n_0\,
      I4 => \humidity_reg[7]\(35),
      I5 => \humidity1__2_carry_i_13_n_0\,
      O => \temp_data_reg[34]\(3)
    );
\humidity1__2_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666966696999"
    )
        port map (
      I0 => \^temp_data_reg[38]\(26),
      I1 => \humidity1__2_carry_i_10_n_0\,
      I2 => \^temp_data_reg[38]\(9),
      I3 => \^temp_data_reg[16]\,
      I4 => \^temp_data_reg[38]\(17),
      I5 => \^temp_data_reg[38]\(25),
      O => \temp_data_reg[34]\(2)
    );
\humidity1__2_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A6A6A566A"
    )
        port map (
      I0 => \^di\(1),
      I1 => \^d\(0),
      I2 => \^temp_data_reg[38]\(16),
      I3 => \humidity_reg[7]\(8),
      I4 => \data_count[1]_i_2_n_0\,
      I5 => \humidity_reg[7]\(7),
      O => \temp_data_reg[34]\(1)
    );
\humidity1__2_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^di\(0),
      I1 => \humidity_reg[7]\(32),
      I2 => \data_count[1]_i_2_n_0\,
      I3 => \humidity_reg[7]\(31),
      O => \temp_data_reg[34]\(0)
    );
\humidity1__2_carry_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEF3E2E2C02200"
    )
        port map (
      I0 => \humidity_reg[7]\(9),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(8),
      I3 => \humidity_reg[7]\(25),
      I4 => \humidity_reg[7]\(24),
      I5 => \^temp_data_reg[16]\,
      O => \humidity1__2_carry_i_9_n_0\
    );
\humidity[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000200000000"
    )
        port map (
      I0 => \temperature_reg[0]\(0),
      I1 => \humidity[7]_i_2_n_0\,
      I2 => \humidity[7]_i_3_n_0\,
      I3 => \^temp_data_reg[38]\(0),
      I4 => humidity1(0),
      I5 => \humidity[7]_i_4_n_0\,
      O => E(0)
    );
\humidity[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF47B8FFFF"
    )
        port map (
      I0 => \humidity_reg[7]\(5),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(6),
      I3 => humidity1(6),
      I4 => s00_axi_aresetn,
      I5 => \humidity[7]_i_5_n_0\,
      O => \humidity[7]_i_2_n_0\
    );
\humidity[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF47B8"
    )
        port map (
      I0 => \humidity_reg[7]\(2),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(3),
      I3 => humidity1(3),
      I4 => \humidity[7]_i_6_n_0\,
      O => \humidity[7]_i_3_n_0\
    );
\humidity[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E00"
    )
        port map (
      I0 => Q(3),
      I1 => \data_count[4]_i_2_n_0\,
      I2 => Q(4),
      I3 => Q(5),
      O => \humidity[7]_i_4_n_0\
    );
\humidity[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B8FFFFFFFF47B8"
    )
        port map (
      I0 => \humidity_reg[7]\(6),
      I1 => \data_count[1]_i_2_n_0\,
      I2 => \humidity_reg[7]\(7),
      I3 => humidity1(7),
      I4 => \^temp_data_reg[38]\(2),
      I5 => humidity1(2),
      O => \humidity[7]_i_5_n_0\
    );
\humidity[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \^temp_data_reg[38]\(5),
      I1 => humidity1(5),
      I2 => humidity1(4),
      I3 => \^temp_data_reg[38]\(4),
      I4 => humidity1(1),
      I5 => \^temp_data_reg[38]\(1),
      O => \humidity[7]_i_6_n_0\
    );
\next_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8AAAAAAA8AAA8"
    )
        port map (
      I0 => \next_state_reg[0]\,
      I1 => \next_state_reg[0]_0\,
      I2 => \next_state[5]_i_4_n_0\,
      I3 => \next_state[5]_i_5_n_0\,
      I4 => \next_state[5]_i_6_n_0\,
      I5 => \next_state_reg[0]_1\(3),
      O => \state_reg[5]\(0)
    );
\next_state[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEE0E00"
    )
        port map (
      I0 => \next_state_reg[0]_1\(2),
      I1 => \next_state_reg[0]_1\(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => count_usec_e_reg,
      O => \next_state[5]_i_4_n_0\
    );
\next_state[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \next_state_reg[0]_1\(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => count_usec_e_reg,
      O => \next_state[5]_i_5_n_0\
    );
\next_state[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_usec_e_reg,
      I1 => \humidity[7]_i_4_n_0\,
      O => \next_state[5]_i_6_n_0\
    );
\read_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7407744"
    )
        port map (
      I0 => \read_state[1]_i_2_n_0\,
      I1 => \read_state_reg[1]_1\,
      I2 => \read_state_reg[1]_2\,
      I3 => \read_state_reg[1]_3\,
      I4 => \next_state[5]_i_6_n_0\,
      O => \read_state_reg[1]_0\
    );
\read_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8B0B8B8"
    )
        port map (
      I0 => \read_state[1]_i_2_n_0\,
      I1 => \read_state_reg[1]_1\,
      I2 => \read_state_reg[1]_2\,
      I3 => \read_state_reg[1]_3\,
      I4 => \next_state[5]_i_6_n_0\,
      O => \read_state_reg[1]\
    );
\read_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45445545"
    )
        port map (
      I0 => count_usec_e_reg,
      I1 => \humidity[7]_i_4_n_0\,
      I2 => \read_state_reg[1]_3\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => \read_state[1]_i_2_n_0\
    );
\temp_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEE0EEE0EEE0"
    )
        port map (
      I0 => \data_count[1]_i_2_n_0\,
      I1 => \humidity_reg[7]\(0),
      I2 => \temp_data_reg[0]\,
      I3 => \temp_data[0]_i_3_n_0\,
      I4 => count_usec_reg(0),
      I5 => \temp_data_reg[0]_0\,
      O => \^temp_data_reg[38]\(0)
    );
\temp_data[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \temp_data_reg[0]_1\,
      I1 => count_usec_reg(2),
      I2 => count_usec_reg(1),
      I3 => count_usec_reg(4),
      I4 => count_usec_reg(3),
      I5 => \data_count[1]_i_2_n_0\,
      O => \temp_data[0]_i_3_n_0\
    );
\temp_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(10),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(9),
      O => \^temp_data_reg[38]\(10)
    );
\temp_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(11),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(10),
      O => \^temp_data_reg[38]\(11)
    );
\temp_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(12),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(11),
      O => \^temp_data_reg[38]\(12)
    );
\temp_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(13),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(12),
      O => \^temp_data_reg[38]\(13)
    );
\temp_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(14),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(13),
      O => \^temp_data_reg[38]\(14)
    );
\temp_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(14),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(15),
      O => \^temp_data_reg[38]\(15)
    );
\temp_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(15),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(16),
      O => \^d\(0)
    );
\temp_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(16),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(17),
      O => \^temp_data_reg[16]\
    );
\temp_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(17),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(18),
      O => \^d\(1)
    );
\temp_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(18),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(19),
      O => \^d\(2)
    );
\temp_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(0),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(1),
      O => \^temp_data_reg[38]\(1)
    );
\temp_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(19),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(20),
      O => \^d\(3)
    );
\temp_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(20),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(21),
      O => \^d\(4)
    );
\temp_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(21),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(22),
      O => \^d\(5)
    );
\temp_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(22),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(23),
      O => \^d\(6)
    );
\temp_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(23),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(24),
      O => \^temp_data_reg[38]\(16)
    );
\temp_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(24),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(25),
      O => \^temp_data_reg[38]\(17)
    );
\temp_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(25),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(26),
      O => \^temp_data_reg[38]\(18)
    );
\temp_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(26),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(27),
      O => \^temp_data_reg[38]\(19)
    );
\temp_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(27),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(28),
      O => \^temp_data_reg[38]\(20)
    );
\temp_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(28),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(29),
      O => \^temp_data_reg[38]\(21)
    );
\temp_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(1),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(2),
      O => \^temp_data_reg[38]\(2)
    );
\temp_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(29),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(30),
      O => \^temp_data_reg[38]\(22)
    );
\temp_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(30),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(31),
      O => \^temp_data_reg[38]\(23)
    );
\temp_data[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(31),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(32),
      O => \^temp_data_reg[38]\(24)
    );
\temp_data[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(32),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(33),
      O => \^temp_data_reg[38]\(25)
    );
\temp_data[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(34),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(33),
      O => \^temp_data_reg[38]\(26)
    );
\temp_data[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(35),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(34),
      O => \^temp_data_reg[38]\(27)
    );
\temp_data[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(36),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(35),
      O => \^temp_data_reg[38]\(28)
    );
\temp_data[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(37),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(36),
      O => \^temp_data_reg[38]\(29)
    );
\temp_data[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(38),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(37),
      O => \^temp_data_reg[38]\(30)
    );
\temp_data[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(38),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(39),
      O => \^temp_data_reg[38]\(31)
    );
\temp_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(2),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(3),
      O => \^temp_data_reg[38]\(3)
    );
\temp_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(3),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(4),
      O => \^temp_data_reg[38]\(4)
    );
\temp_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(4),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(5),
      O => \^temp_data_reg[38]\(5)
    );
\temp_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(5),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(6),
      O => \^temp_data_reg[38]\(6)
    );
\temp_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(6),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(7),
      O => \^temp_data_reg[38]\(7)
    );
\temp_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => \humidity_reg[7]\(7),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(8),
      O => \^temp_data_reg[38]\(8)
    );
\temp_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABAAAAAAA8AAA"
    )
        port map (
      I0 => \humidity_reg[7]\(9),
      I1 => \read_state_reg[1]_3\,
      I2 => \read_state_reg[1]_2\,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      I5 => \humidity_reg[7]\(8),
      O => \^temp_data_reg[38]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[11]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[15]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[19]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_usec_reg[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    count_usec_reg_0_sp_1 : in STD_LOGIC;
    count_usec_reg : in STD_LOGIC_VECTOR ( 21 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 is
  signal \cnt_sysclk[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal count_usec_reg_0_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_sysclk[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_sysclk[6]_i_2\ : label is "soft_lutpair7";
begin
  count_usec_reg_0_sn_1 <= count_usec_reg_0_sp_1;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => \cnt_sysclk[4]_i_2_n_0\,
      O => p_0_in(0)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cnt_sysclk_reg(1),
      I1 => cnt_sysclk_reg(0),
      I2 => \cnt_sysclk[4]_i_2_n_0\,
      O => p_0_in(1)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      I2 => cnt_sysclk_reg(2),
      I3 => \cnt_sysclk[4]_i_2_n_0\,
      O => p_0_in(2)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(1),
      I2 => cnt_sysclk_reg(0),
      I3 => cnt_sysclk_reg(3),
      I4 => \cnt_sysclk[4]_i_2_n_0\,
      O => p_0_in(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => cnt_sysclk_reg(3),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(2),
      I4 => cnt_sysclk_reg(4),
      I5 => \cnt_sysclk[4]_i_2_n_0\,
      O => p_0_in(4)
    );
\cnt_sysclk[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => \cnt_sysclk[6]_i_2_n_0\,
      I1 => cnt_sysclk_reg(4),
      I2 => cnt_sysclk_reg(3),
      I3 => cnt_sysclk_reg(2),
      I4 => cnt_sysclk_reg(6),
      I5 => cnt_sysclk_reg(5),
      O => \cnt_sysclk[4]_i_2_n_0\
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555557C0000000"
    )
        port map (
      I0 => cnt_sysclk_reg(6),
      I1 => cnt_sysclk_reg(4),
      I2 => cnt_sysclk_reg(2),
      I3 => \cnt_sysclk[6]_i_2_n_0\,
      I4 => cnt_sysclk_reg(3),
      I5 => cnt_sysclk_reg(5),
      O => \cnt_sysclk[5]_i_1_n_0\
    );
\cnt_sysclk[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF01FF80000000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => \cnt_sysclk[6]_i_2_n_0\,
      I2 => cnt_sysclk_reg(3),
      I3 => cnt_sysclk_reg(5),
      I4 => cnt_sysclk_reg(4),
      I5 => cnt_sysclk_reg(6),
      O => \cnt_sysclk[6]_i_1_n_0\
    );
\cnt_sysclk[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk_reg(0),
      I1 => cnt_sysclk_reg(1),
      O => \cnt_sysclk[6]_i_2_n_0\
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(0),
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(1),
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(2),
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(3),
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => p_0_in(4),
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \cnt_sysclk[5]_i_1_n_0\,
      Q => cnt_sysclk_reg(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => \cnt_sysclk[6]_i_1_n_0\,
      Q => cnt_sysclk_reg(6)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      O(3 downto 0) => O(3 downto 0),
      Q(5 downto 0) => cnt_sysclk_reg(6 downto 1),
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      \count_usec_reg[11]\(3 downto 0) => \count_usec_reg[11]\(3 downto 0),
      \count_usec_reg[15]\(3 downto 0) => \count_usec_reg[15]\(3 downto 0),
      \count_usec_reg[19]\(3 downto 0) => \count_usec_reg[19]\(3 downto 0),
      \count_usec_reg[21]\(1 downto 0) => \count_usec_reg[21]\(1 downto 0),
      \count_usec_reg[7]\(3 downto 0) => \count_usec_reg[7]\(3 downto 0),
      count_usec_reg_0_sp_1 => count_usec_reg_0_sn_1,
      ff_old_reg_0 => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    count_usec_e_reg_0 : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \humidity_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \temperature_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    count_usec_e10_out : out STD_LOGIC;
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[5]_0\ : out STD_LOGIC;
    \state_reg[4]_0\ : out STD_LOGIC;
    \state_reg[3]_0\ : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    count_usec_e_reg_1 : in STD_LOGIC;
    dht11_data_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count_usec_e_i_7_n_0 : STD_LOGIC;
  signal count_usec_e_i_8_n_0 : STD_LOGIC;
  signal count_usec_e_i_9_n_0 : STD_LOGIC;
  signal \^count_usec_e_reg_0\ : STD_LOGIC;
  signal count_usec_reg : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal \data_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_count_reg_n_0_[5]\ : STD_LOGIC;
  signal dht11_buffer0 : STD_LOGIC;
  signal dht11_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal dht11_data_INST_0_i_5_n_0 : STD_LOGIC;
  signal dht11_data_INST_0_i_6_n_0 : STD_LOGIC;
  signal dht11_data_INST_0_i_7_n_0 : STD_LOGIC;
  signal dht11_data_INST_0_i_8_n_0 : STD_LOGIC;
  signal ed_n_0 : STD_LOGIC;
  signal ed_n_1 : STD_LOGIC;
  signal ed_n_10 : STD_LOGIC;
  signal ed_n_11 : STD_LOGIC;
  signal ed_n_12 : STD_LOGIC;
  signal ed_n_13 : STD_LOGIC;
  signal ed_n_14 : STD_LOGIC;
  signal ed_n_2 : STD_LOGIC;
  signal ed_n_3 : STD_LOGIC;
  signal ed_n_39 : STD_LOGIC;
  signal ed_n_4 : STD_LOGIC;
  signal ed_n_40 : STD_LOGIC;
  signal ed_n_41 : STD_LOGIC;
  signal ed_n_42 : STD_LOGIC;
  signal ed_n_43 : STD_LOGIC;
  signal ed_n_44 : STD_LOGIC;
  signal ed_n_45 : STD_LOGIC;
  signal ed_n_46 : STD_LOGIC;
  signal ed_n_48 : STD_LOGIC;
  signal ed_n_49 : STD_LOGIC;
  signal ed_n_5 : STD_LOGIC;
  signal ed_n_50 : STD_LOGIC;
  signal ed_n_51 : STD_LOGIC;
  signal ed_n_52 : STD_LOGIC;
  signal ed_n_53 : STD_LOGIC;
  signal ed_n_56 : STD_LOGIC;
  signal ed_n_57 : STD_LOGIC;
  signal ed_n_58 : STD_LOGIC;
  signal ed_n_59 : STD_LOGIC;
  signal ed_n_6 : STD_LOGIC;
  signal ed_n_60 : STD_LOGIC;
  signal ed_n_61 : STD_LOGIC;
  signal ed_n_62 : STD_LOGIC;
  signal ed_n_64 : STD_LOGIC;
  signal ed_n_65 : STD_LOGIC;
  signal ed_n_66 : STD_LOGIC;
  signal ed_n_67 : STD_LOGIC;
  signal ed_n_7 : STD_LOGIC;
  signal ed_n_8 : STD_LOGIC;
  signal ed_n_9 : STD_LOGIC;
  signal humidity1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \humidity1__2_carry__0_n_1\ : STD_LOGIC;
  signal \humidity1__2_carry__0_n_2\ : STD_LOGIC;
  signal \humidity1__2_carry__0_n_3\ : STD_LOGIC;
  signal \humidity1__2_carry_n_0\ : STD_LOGIC;
  signal \humidity1__2_carry_n_1\ : STD_LOGIC;
  signal \humidity1__2_carry_n_2\ : STD_LOGIC;
  signal \humidity1__2_carry_n_3\ : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \next_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_10_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_11_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_12_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_13_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_14_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_8_n_0\ : STD_LOGIC;
  signal \next_state[5]_i_9_n_0\ : STD_LOGIC;
  signal \next_state_inferred__3/i__n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \read_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_state_reg_n_0_[1]\ : STD_LOGIC;
  signal temp_data : STD_LOGIC;
  signal \temp_data[0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_data[0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \temp_data_reg_n_0_[9]\ : STD_LOGIC;
  signal usec_clock_n_1 : STD_LOGIC;
  signal usec_clock_n_10 : STD_LOGIC;
  signal usec_clock_n_11 : STD_LOGIC;
  signal usec_clock_n_12 : STD_LOGIC;
  signal usec_clock_n_13 : STD_LOGIC;
  signal usec_clock_n_14 : STD_LOGIC;
  signal usec_clock_n_15 : STD_LOGIC;
  signal usec_clock_n_16 : STD_LOGIC;
  signal usec_clock_n_17 : STD_LOGIC;
  signal usec_clock_n_18 : STD_LOGIC;
  signal usec_clock_n_19 : STD_LOGIC;
  signal usec_clock_n_2 : STD_LOGIC;
  signal usec_clock_n_20 : STD_LOGIC;
  signal usec_clock_n_21 : STD_LOGIC;
  signal usec_clock_n_22 : STD_LOGIC;
  signal usec_clock_n_23 : STD_LOGIC;
  signal usec_clock_n_3 : STD_LOGIC;
  signal usec_clock_n_4 : STD_LOGIC;
  signal usec_clock_n_5 : STD_LOGIC;
  signal usec_clock_n_6 : STD_LOGIC;
  signal usec_clock_n_7 : STD_LOGIC;
  signal usec_clock_n_8 : STD_LOGIC;
  signal usec_clock_n_9 : STD_LOGIC;
  signal \NLW_humidity1__2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of count_usec_e_i_5 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of count_usec_e_i_6 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of count_usec_e_i_8 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of count_usec_e_i_9 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of dht11_data_INST_0_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of dht11_data_INST_0_i_7 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of dht11_data_INST_0_i_8 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \next_state[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_state[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_state[5]_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \next_state[5]_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \next_state[5]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \next_state[5]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \temp_data[0]_i_2\ : label is "soft_lutpair10";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  SR(0) <= \^sr\(0);
  count_usec_e_reg_0 <= \^count_usec_e_reg_0\;
count_usec_e_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \next_state[5]_i_8_n_0\,
      I1 => \^q\(1),
      I2 => dht11_data_INST_0_i_3_n_0,
      I3 => \^q\(0),
      O => \state_reg[1]_0\
    );
count_usec_e_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABABAAA"
    )
        port map (
      I0 => count_usec_e_i_7_n_0,
      I1 => count_usec_e_i_8_n_0,
      I2 => s00_axi_aresetn,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => count_usec_e10_out
    );
count_usec_e_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400040440"
    )
        port map (
      I0 => count_usec_e_i_9_n_0,
      I1 => s00_axi_aresetn,
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(2),
      O => count_usec_e_i_7_n_0
    );
count_usec_e_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => count_usec_e_i_8_n_0
    );
count_usec_e_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => count_usec_e_i_9_n_0
    );
count_usec_e_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => count_usec_e_reg_1,
      Q => \^count_usec_e_reg_0\,
      R => '0'
    );
\count_usec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_5,
      Q => count_usec_reg(0)
    );
\count_usec_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_11,
      Q => count_usec_reg(10)
    );
\count_usec_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_10,
      Q => count_usec_reg(11)
    );
\count_usec_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_17,
      Q => count_usec_reg(12)
    );
\count_usec_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_16,
      Q => count_usec_reg(13)
    );
\count_usec_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_15,
      Q => count_usec_reg(14)
    );
\count_usec_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_14,
      Q => count_usec_reg(15)
    );
\count_usec_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_21,
      Q => count_usec_reg(16)
    );
\count_usec_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_20,
      Q => count_usec_reg(17)
    );
\count_usec_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_19,
      Q => count_usec_reg(18)
    );
\count_usec_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_18,
      Q => count_usec_reg(19)
    );
\count_usec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_4,
      Q => count_usec_reg(1)
    );
\count_usec_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_23,
      Q => count_usec_reg(20)
    );
\count_usec_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_22,
      Q => count_usec_reg(21)
    );
\count_usec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_3,
      Q => count_usec_reg(2)
    );
\count_usec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_2,
      Q => count_usec_reg(3)
    );
\count_usec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_9,
      Q => count_usec_reg(4)
    );
\count_usec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_8,
      Q => count_usec_reg(5)
    );
\count_usec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_7,
      Q => count_usec_reg(6)
    );
\count_usec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_6,
      Q => count_usec_reg(7)
    );
\count_usec_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_13,
      Q => count_usec_reg(8)
    );
\count_usec_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => usec_clock_n_1,
      CLR => \^sr\(0),
      D => usec_clock_n_12,
      Q => count_usec_reg(9)
    );
\data_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \data_count[5]_i_1_n_0\
    );
\data_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_53,
      Q => \data_count_reg_n_0_[0]\
    );
\data_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_52,
      Q => \data_count_reg_n_0_[1]\
    );
\data_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_51,
      Q => \data_count_reg_n_0_[2]\
    );
\data_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_50,
      Q => \data_count_reg_n_0_[3]\
    );
\data_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_49,
      Q => \data_count_reg_n_0_[4]\
    );
\data_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \data_count[5]_i_1_n_0\,
      CLR => \^sr\(0),
      D => ed_n_48,
      Q => \data_count_reg_n_0_[5]\
    );
dht11_data_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FD00007070"
    )
        port map (
      I0 => \^q\(0),
      I1 => dht11_data_INST_0_i_3_n_0,
      I2 => dht11_buffer0,
      I3 => \next_state[2]_i_1_n_0\,
      I4 => dht11_data_INST_0_i_5_n_0,
      I5 => dht11_data_0,
      O => \state_reg[0]_0\
    );
dht11_data_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
        port map (
      I0 => count_usec_reg(21),
      I1 => count_usec_reg(20),
      I2 => count_usec_reg(19),
      I3 => count_usec_reg(18),
      I4 => dht11_data_INST_0_i_6_n_0,
      O => dht11_data_INST_0_i_3_n_0
    );
dht11_data_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \next_state[5]_i_8_n_0\,
      O => dht11_buffer0
    );
dht11_data_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBBB"
    )
        port map (
      I0 => count_usec_e_i_8_n_0,
      I1 => s00_axi_aresetn,
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => dht11_data_INST_0_i_5_n_0
    );
dht11_data_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAEAAAEAAAAAAA"
    )
        port map (
      I0 => count_usec_reg(17),
      I1 => count_usec_reg(16),
      I2 => count_usec_reg(15),
      I3 => count_usec_reg(14),
      I4 => dht11_data_INST_0_i_7_n_0,
      I5 => dht11_data_INST_0_i_8_n_0,
      O => dht11_data_INST_0_i_6_n_0
    );
dht11_data_INST_0_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => count_usec_reg(11),
      I1 => count_usec_reg(13),
      I2 => count_usec_reg(12),
      O => dht11_data_INST_0_i_7_n_0
    );
dht11_data_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
        port map (
      I0 => count_usec_reg(10),
      I1 => count_usec_reg(9),
      I2 => count_usec_reg(8),
      I3 => count_usec_reg(6),
      I4 => count_usec_reg(7),
      O => dht11_data_INST_0_i_8_n_0
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      D(6) => ed_n_5,
      D(5) => ed_n_6,
      D(4) => ed_n_7,
      D(3) => ed_n_8,
      D(2) => ed_n_9,
      D(1) => ed_n_10,
      D(0) => ed_n_11,
      DI(3) => ed_n_0,
      DI(2) => ed_n_1,
      DI(1) => ed_n_2,
      DI(0) => ed_n_3,
      E(0) => ed_n_14,
      Q(5) => \data_count_reg_n_0_[5]\,
      Q(4) => \data_count_reg_n_0_[4]\,
      Q(3) => \data_count_reg_n_0_[3]\,
      Q(2) => \data_count_reg_n_0_[2]\,
      Q(1) => \data_count_reg_n_0_[1]\,
      Q(0) => \data_count_reg_n_0_[0]\,
      S(3) => ed_n_59,
      S(2) => ed_n_60,
      S(1) => ed_n_61,
      S(0) => ed_n_62,
      count_usec_e_reg => \next_state[5]_i_7_n_0\,
      count_usec_reg(4 downto 0) => count_usec_reg(10 downto 6),
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_0,
      ff_old_reg_0 => \^sr\(0),
      humidity1(7 downto 0) => humidity1(7 downto 0),
      \humidity_reg[7]\(39) => \temp_data_reg_n_0_[39]\,
      \humidity_reg[7]\(38) => \temp_data_reg_n_0_[38]\,
      \humidity_reg[7]\(37) => \temp_data_reg_n_0_[37]\,
      \humidity_reg[7]\(36) => \temp_data_reg_n_0_[36]\,
      \humidity_reg[7]\(35) => \temp_data_reg_n_0_[35]\,
      \humidity_reg[7]\(34) => \temp_data_reg_n_0_[34]\,
      \humidity_reg[7]\(33) => \temp_data_reg_n_0_[33]\,
      \humidity_reg[7]\(32) => \temp_data_reg_n_0_[32]\,
      \humidity_reg[7]\(31) => \temp_data_reg_n_0_[31]\,
      \humidity_reg[7]\(30) => \temp_data_reg_n_0_[30]\,
      \humidity_reg[7]\(29) => \temp_data_reg_n_0_[29]\,
      \humidity_reg[7]\(28) => \temp_data_reg_n_0_[28]\,
      \humidity_reg[7]\(27) => \temp_data_reg_n_0_[27]\,
      \humidity_reg[7]\(26) => \temp_data_reg_n_0_[26]\,
      \humidity_reg[7]\(25) => \temp_data_reg_n_0_[25]\,
      \humidity_reg[7]\(24) => \temp_data_reg_n_0_[24]\,
      \humidity_reg[7]\(23) => \temp_data_reg_n_0_[23]\,
      \humidity_reg[7]\(22) => \temp_data_reg_n_0_[22]\,
      \humidity_reg[7]\(21) => \temp_data_reg_n_0_[21]\,
      \humidity_reg[7]\(20) => \temp_data_reg_n_0_[20]\,
      \humidity_reg[7]\(19) => \temp_data_reg_n_0_[19]\,
      \humidity_reg[7]\(18) => \temp_data_reg_n_0_[18]\,
      \humidity_reg[7]\(17) => \temp_data_reg_n_0_[17]\,
      \humidity_reg[7]\(16) => \temp_data_reg_n_0_[16]\,
      \humidity_reg[7]\(15) => \temp_data_reg_n_0_[15]\,
      \humidity_reg[7]\(14) => \temp_data_reg_n_0_[14]\,
      \humidity_reg[7]\(13) => \temp_data_reg_n_0_[13]\,
      \humidity_reg[7]\(12) => \temp_data_reg_n_0_[12]\,
      \humidity_reg[7]\(11) => \temp_data_reg_n_0_[11]\,
      \humidity_reg[7]\(10) => \temp_data_reg_n_0_[10]\,
      \humidity_reg[7]\(9) => \temp_data_reg_n_0_[9]\,
      \humidity_reg[7]\(8) => \temp_data_reg_n_0_[8]\,
      \humidity_reg[7]\(7) => \temp_data_reg_n_0_[7]\,
      \humidity_reg[7]\(6) => \temp_data_reg_n_0_[6]\,
      \humidity_reg[7]\(5) => \temp_data_reg_n_0_[5]\,
      \humidity_reg[7]\(4) => \temp_data_reg_n_0_[4]\,
      \humidity_reg[7]\(3) => \temp_data_reg_n_0_[3]\,
      \humidity_reg[7]\(2) => \temp_data_reg_n_0_[2]\,
      \humidity_reg[7]\(1) => \temp_data_reg_n_0_[1]\,
      \humidity_reg[7]\(0) => \temp_data_reg_n_0_[0]\,
      \next_state_reg[0]\ => \next_state_inferred__3/i__n_0\,
      \next_state_reg[0]_0\ => \next_state[5]_i_3_n_0\,
      \next_state_reg[0]_1\(3 downto 0) => \^q\(5 downto 2),
      \read_state_reg[0]\(5) => ed_n_48,
      \read_state_reg[0]\(4) => ed_n_49,
      \read_state_reg[0]\(3) => ed_n_50,
      \read_state_reg[0]\(2) => ed_n_51,
      \read_state_reg[0]\(1) => ed_n_52,
      \read_state_reg[0]\(0) => ed_n_53,
      \read_state_reg[1]\ => ed_n_12,
      \read_state_reg[1]_0\ => ed_n_13,
      \read_state_reg[1]_1\ => \data_count[5]_i_1_n_0\,
      \read_state_reg[1]_2\ => \read_state_reg_n_0_[1]\,
      \read_state_reg[1]_3\ => \read_state_reg_n_0_[0]\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \state_reg[3]\ => \state_reg[3]_0\,
      \state_reg[4]\ => \state_reg[4]_0\,
      \state_reg[5]\(0) => next_state,
      \state_reg[5]_0\ => \state_reg[5]_0\,
      \temp_data_reg[0]\ => \temp_data[0]_i_2_n_0\,
      \temp_data_reg[0]_0\ => \temp_data[0]_i_4_n_0\,
      \temp_data_reg[0]_1\ => \next_state[5]_i_10_n_0\,
      \temp_data_reg[16]\ => ed_n_4,
      \temp_data_reg[34]\(3) => ed_n_64,
      \temp_data_reg[34]\(2) => ed_n_65,
      \temp_data_reg[34]\(1) => ed_n_66,
      \temp_data_reg[34]\(0) => ed_n_67,
      \temp_data_reg[36]\(2) => ed_n_56,
      \temp_data_reg[36]\(1) => ed_n_57,
      \temp_data_reg[36]\(0) => ed_n_58,
      \temp_data_reg[38]\(31 downto 24) => p_1_in(7 downto 0),
      \temp_data_reg[38]\(23 downto 16) => p_0_in_0(7 downto 0),
      \temp_data_reg[38]\(15 downto 8) => p_0_in1_in(7 downto 0),
      \temp_data_reg[38]\(7) => ed_n_39,
      \temp_data_reg[38]\(6) => ed_n_40,
      \temp_data_reg[38]\(5) => ed_n_41,
      \temp_data_reg[38]\(4) => ed_n_42,
      \temp_data_reg[38]\(3) => ed_n_43,
      \temp_data_reg[38]\(2) => ed_n_44,
      \temp_data_reg[38]\(1) => ed_n_45,
      \temp_data_reg[38]\(0) => ed_n_46,
      \temperature_reg[0]\(0) => temp_data
    );
\humidity1__2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \humidity1__2_carry_n_0\,
      CO(2) => \humidity1__2_carry_n_1\,
      CO(1) => \humidity1__2_carry_n_2\,
      CO(0) => \humidity1__2_carry_n_3\,
      CYINIT => '0',
      DI(3) => ed_n_0,
      DI(2) => ed_n_1,
      DI(1) => ed_n_2,
      DI(0) => ed_n_3,
      O(3 downto 0) => humidity1(3 downto 0),
      S(3) => ed_n_64,
      S(2) => ed_n_65,
      S(1) => ed_n_66,
      S(0) => ed_n_67
    );
\humidity1__2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \humidity1__2_carry_n_0\,
      CO(3) => \NLW_humidity1__2_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \humidity1__2_carry__0_n_1\,
      CO(1) => \humidity1__2_carry__0_n_2\,
      CO(0) => \humidity1__2_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => ed_n_56,
      DI(1) => ed_n_57,
      DI(0) => ed_n_58,
      O(3 downto 0) => humidity1(7 downto 4),
      S(3) => ed_n_59,
      S(2) => ed_n_60,
      S(1) => ed_n_61,
      S(0) => ed_n_62
    );
\humidity_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(0),
      Q => \humidity_reg[7]_0\(0),
      R => '0'
    );
\humidity_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(1),
      Q => \humidity_reg[7]_0\(1),
      R => '0'
    );
\humidity_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(2),
      Q => \humidity_reg[7]_0\(2),
      R => '0'
    );
\humidity_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(3),
      Q => \humidity_reg[7]_0\(3),
      R => '0'
    );
\humidity_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(4),
      Q => \humidity_reg[7]_0\(4),
      R => '0'
    );
\humidity_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(5),
      Q => \humidity_reg[7]_0\(5),
      R => '0'
    );
\humidity_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(6),
      Q => \humidity_reg[7]_0\(6),
      R => '0'
    );
\humidity_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => p_1_in(7),
      Q => \humidity_reg[7]_0\(7),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFF0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      I4 => \^q\(5),
      I5 => \next_state[5]_i_7_n_0\,
      O => \next_state[0]_i_1_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(1),
      I1 => \next_state[5]_i_7_n_0\,
      O => \next_state[2]_i_1_n_0\
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(2),
      I1 => \next_state[5]_i_7_n_0\,
      O => \next_state[3]_i_1_n_0\
    );
\next_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(3),
      I1 => \next_state[5]_i_7_n_0\,
      O => \next_state[4]_i_1_n_0\
    );
\next_state[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_usec_reg(14),
      I1 => count_usec_reg(12),
      I2 => count_usec_reg(13),
      I3 => count_usec_reg(11),
      O => \next_state[5]_i_10_n_0\
    );
\next_state[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000057FFFFFFFFFF"
    )
        port map (
      I0 => \next_state[5]_i_13_n_0\,
      I1 => count_usec_reg(5),
      I2 => count_usec_reg(6),
      I3 => count_usec_reg(7),
      I4 => count_usec_reg(8),
      I5 => \next_state[5]_i_14_n_0\,
      O => \next_state[5]_i_11_n_0\
    );
\next_state[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => \next_state[5]_i_14_n_0\,
      I1 => count_usec_reg(11),
      I2 => count_usec_reg(7),
      I3 => count_usec_reg(8),
      I4 => count_usec_reg(5),
      I5 => count_usec_reg(6),
      O => \next_state[5]_i_12_n_0\
    );
\next_state[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_usec_reg(6),
      I1 => count_usec_reg(4),
      I2 => count_usec_reg(0),
      I3 => count_usec_reg(1),
      I4 => count_usec_reg(2),
      I5 => count_usec_reg(3),
      O => \next_state[5]_i_13_n_0\
    );
\next_state[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => count_usec_reg(9),
      I1 => count_usec_reg(10),
      O => \next_state[5]_i_14_n_0\
    );
\next_state[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(4),
      I1 => \next_state[5]_i_7_n_0\,
      O => \next_state[5]_i_2_n_0\
    );
\next_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => dht11_data_INST_0_i_3_n_0,
      I1 => \^q\(0),
      I2 => \next_state[5]_i_8_n_0\,
      I3 => \^q\(1),
      O => \next_state[5]_i_3_n_0\
    );
\next_state[5]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFAAAAAA"
    )
        port map (
      I0 => \next_state[5]_i_9_n_0\,
      I1 => \next_state[5]_i_10_n_0\,
      I2 => \next_state[5]_i_11_n_0\,
      I3 => count_usec_reg(15),
      I4 => count_usec_reg(16),
      O => \next_state[5]_i_7_n_0\
    );
\next_state[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00045555"
    )
        port map (
      I0 => \temp_data[0]_i_2_n_0\,
      I1 => \next_state[5]_i_12_n_0\,
      I2 => count_usec_reg(13),
      I3 => count_usec_reg(12),
      I4 => count_usec_reg(14),
      O => \next_state[5]_i_8_n_0\
    );
\next_state[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_usec_reg(18),
      I1 => count_usec_reg(17),
      I2 => count_usec_reg(20),
      I3 => count_usec_reg(21),
      I4 => count_usec_reg(19),
      O => \next_state[5]_i_9_n_0\
    );
\next_state_inferred__3/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100010116"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \next_state_inferred__3/i__n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      D => \next_state[0]_i_1_n_0\,
      PRE => \^sr\(0),
      Q => \next_state_reg_n_0_[0]\
    );
\next_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^sr\(0),
      D => \^q\(0),
      Q => \next_state_reg_n_0_[1]\
    );
\next_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^sr\(0),
      D => \next_state[2]_i_1_n_0\,
      Q => \next_state_reg_n_0_[2]\
    );
\next_state_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^sr\(0),
      D => \next_state[3]_i_1_n_0\,
      Q => \next_state_reg_n_0_[3]\
    );
\next_state_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^sr\(0),
      D => \next_state[4]_i_1_n_0\,
      Q => \next_state_reg_n_0_[4]\
    );
\next_state_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => next_state,
      CLR => \^sr\(0),
      D => \next_state[5]_i_2_n_0\,
      Q => \next_state_reg_n_0_[5]\
    );
\read_state_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ed_n_13,
      PRE => \^sr\(0),
      Q => \read_state_reg_n_0_[0]\
    );
\read_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_n_12,
      Q => \read_state_reg_n_0_[1]\
    );
\state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      PRE => \^sr\(0),
      Q => \^q\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[1]\,
      Q => \^q\(1)
    );
\state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[2]\,
      Q => \^q\(2)
    );
\state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[3]\,
      Q => \^q\(3)
    );
\state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[4]\,
      Q => \^q\(4)
    );
\state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \next_state_reg_n_0_[5]\,
      Q => \^q\(5)
    );
\temp_data[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \next_state[5]_i_9_n_0\,
      I1 => count_usec_reg(16),
      I2 => count_usec_reg(15),
      O => \temp_data[0]_i_2_n_0\
    );
\temp_data[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_usec_reg(5),
      I1 => count_usec_reg(3),
      I2 => count_usec_reg(2),
      I3 => count_usec_reg(0),
      I4 => count_usec_reg(1),
      I5 => count_usec_reg(4),
      O => \temp_data[0]_i_4_n_0\
    );
\temp_data[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \data_count[5]_i_1_n_0\,
      I1 => \next_state[5]_i_7_n_0\,
      O => temp_data
    );
\temp_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_46,
      Q => \temp_data_reg_n_0_[0]\
    );
\temp_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(2),
      Q => \temp_data_reg_n_0_[10]\
    );
\temp_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(3),
      Q => \temp_data_reg_n_0_[11]\
    );
\temp_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(4),
      Q => \temp_data_reg_n_0_[12]\
    );
\temp_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(5),
      Q => \temp_data_reg_n_0_[13]\
    );
\temp_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(6),
      Q => \temp_data_reg_n_0_[14]\
    );
\temp_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(7),
      Q => \temp_data_reg_n_0_[15]\
    );
\temp_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_11,
      Q => \temp_data_reg_n_0_[16]\
    );
\temp_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_4,
      Q => \temp_data_reg_n_0_[17]\
    );
\temp_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_10,
      Q => \temp_data_reg_n_0_[18]\
    );
\temp_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_9,
      Q => \temp_data_reg_n_0_[19]\
    );
\temp_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_45,
      Q => \temp_data_reg_n_0_[1]\
    );
\temp_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_8,
      Q => \temp_data_reg_n_0_[20]\
    );
\temp_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_7,
      Q => \temp_data_reg_n_0_[21]\
    );
\temp_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_6,
      Q => \temp_data_reg_n_0_[22]\
    );
\temp_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_5,
      Q => \temp_data_reg_n_0_[23]\
    );
\temp_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(0),
      Q => \temp_data_reg_n_0_[24]\
    );
\temp_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(1),
      Q => \temp_data_reg_n_0_[25]\
    );
\temp_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(2),
      Q => \temp_data_reg_n_0_[26]\
    );
\temp_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(3),
      Q => \temp_data_reg_n_0_[27]\
    );
\temp_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(4),
      Q => \temp_data_reg_n_0_[28]\
    );
\temp_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(5),
      Q => \temp_data_reg_n_0_[29]\
    );
\temp_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_44,
      Q => \temp_data_reg_n_0_[2]\
    );
\temp_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(6),
      Q => \temp_data_reg_n_0_[30]\
    );
\temp_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in_0(7),
      Q => \temp_data_reg_n_0_[31]\
    );
\temp_data_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => \temp_data_reg_n_0_[32]\
    );
\temp_data_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => \temp_data_reg_n_0_[33]\
    );
\temp_data_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => \temp_data_reg_n_0_[34]\
    );
\temp_data_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => \temp_data_reg_n_0_[35]\
    );
\temp_data_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => \temp_data_reg_n_0_[36]\
    );
\temp_data_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => \temp_data_reg_n_0_[37]\
    );
\temp_data_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => \temp_data_reg_n_0_[38]\
    );
\temp_data_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => \temp_data_reg_n_0_[39]\
    );
\temp_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_43,
      Q => \temp_data_reg_n_0_[3]\
    );
\temp_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_42,
      Q => \temp_data_reg_n_0_[4]\
    );
\temp_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_41,
      Q => \temp_data_reg_n_0_[5]\
    );
\temp_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_40,
      Q => \temp_data_reg_n_0_[6]\
    );
\temp_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => ed_n_39,
      Q => \temp_data_reg_n_0_[7]\
    );
\temp_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(0),
      Q => \temp_data_reg_n_0_[8]\
    );
\temp_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => temp_data,
      CLR => \^sr\(0),
      D => p_0_in1_in(1),
      Q => \temp_data_reg_n_0_[9]\
    );
\temperature_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_11,
      Q => \temperature_reg[7]_0\(0),
      R => '0'
    );
\temperature_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_4,
      Q => \temperature_reg[7]_0\(1),
      R => '0'
    );
\temperature_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_10,
      Q => \temperature_reg[7]_0\(2),
      R => '0'
    );
\temperature_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_9,
      Q => \temperature_reg[7]_0\(3),
      R => '0'
    );
\temperature_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_8,
      Q => \temperature_reg[7]_0\(4),
      R => '0'
    );
\temperature_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_7,
      Q => \temperature_reg[7]_0\(5),
      R => '0'
    );
\temperature_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_6,
      Q => \temperature_reg[7]_0\(6),
      R => '0'
    );
\temperature_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => ed_n_14,
      D => ed_n_5,
      Q => \temperature_reg[7]_0\(7),
      R => '0'
    );
usec_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100
     port map (
      O(3) => usec_clock_n_2,
      O(2) => usec_clock_n_3,
      O(1) => usec_clock_n_4,
      O(0) => usec_clock_n_5,
      count_usec_reg(21 downto 0) => count_usec_reg(21 downto 0),
      \count_usec_reg[11]\(3) => usec_clock_n_10,
      \count_usec_reg[11]\(2) => usec_clock_n_11,
      \count_usec_reg[11]\(1) => usec_clock_n_12,
      \count_usec_reg[11]\(0) => usec_clock_n_13,
      \count_usec_reg[15]\(3) => usec_clock_n_14,
      \count_usec_reg[15]\(2) => usec_clock_n_15,
      \count_usec_reg[15]\(1) => usec_clock_n_16,
      \count_usec_reg[15]\(0) => usec_clock_n_17,
      \count_usec_reg[19]\(3) => usec_clock_n_18,
      \count_usec_reg[19]\(2) => usec_clock_n_19,
      \count_usec_reg[19]\(1) => usec_clock_n_20,
      \count_usec_reg[19]\(0) => usec_clock_n_21,
      \count_usec_reg[21]\(1) => usec_clock_n_22,
      \count_usec_reg[21]\(0) => usec_clock_n_23,
      \count_usec_reg[7]\(3) => usec_clock_n_6,
      \count_usec_reg[7]\(2) => usec_clock_n_7,
      \count_usec_reg[7]\(1) => usec_clock_n_8,
      \count_usec_reg[7]\(0) => usec_clock_n_9,
      count_usec_reg_0_sp_1 => \^count_usec_e_reg_0\,
      ff_old_reg => usec_clock_n_1,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI is
  port (
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    count_usec_e_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \state_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    count_usec_e10_out : out STD_LOGIC;
    \state_reg[1]\ : out STD_LOGIC;
    \state_reg[5]\ : out STD_LOGIC;
    \state_reg[4]\ : out STD_LOGIC;
    \state_reg[3]\ : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    count_usec_e_reg_0 : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    dht11_data_0 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI is
  signal \^aw_en_reg_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal dht11_n_0 : STD_LOGIC;
  signal humidity : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal temperature : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \slv_reg2[31]_i_2\ : label is "soft_lutpair17";
begin
  aw_en_reg_0 <= \^aw_en_reg_0\;
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_reg_1,
      Q => \^aw_en_reg_0\,
      S => dht11_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => dht11_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => dht11_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => dht11_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => dht11_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^aw_en_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => p_0_in_0(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in_0(0),
      R => dht11_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => dht11_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => dht11_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => \^aw_en_reg_0\,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => dht11_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => dht11_n_0
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => temperature(0),
      I4 => sel0(0),
      I5 => humidity(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(10),
      I4 => sel0(0),
      I5 => slv_reg3(10),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(11),
      I4 => sel0(0),
      I5 => slv_reg3(11),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(12),
      I4 => sel0(0),
      I5 => slv_reg3(12),
      O => reg_data_out(12)
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(13),
      I4 => sel0(0),
      I5 => slv_reg3(13),
      O => reg_data_out(13)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(14),
      I4 => sel0(0),
      I5 => slv_reg3(14),
      O => reg_data_out(14)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(15),
      I4 => sel0(0),
      I5 => slv_reg3(15),
      O => reg_data_out(15)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(16),
      I4 => sel0(0),
      I5 => slv_reg3(16),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(17),
      I4 => sel0(0),
      I5 => slv_reg3(17),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(18),
      I4 => sel0(0),
      I5 => slv_reg3(18),
      O => reg_data_out(18)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(19),
      I4 => sel0(0),
      I5 => slv_reg3(19),
      O => reg_data_out(19)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => temperature(1),
      I4 => sel0(0),
      I5 => humidity(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(20),
      I4 => sel0(0),
      I5 => slv_reg3(20),
      O => reg_data_out(20)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(21),
      I4 => sel0(0),
      I5 => slv_reg3(21),
      O => reg_data_out(21)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(22),
      I4 => sel0(0),
      I5 => slv_reg3(22),
      O => reg_data_out(22)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(23),
      I4 => sel0(0),
      I5 => slv_reg3(23),
      O => reg_data_out(23)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(24),
      I4 => sel0(0),
      I5 => slv_reg3(24),
      O => reg_data_out(24)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(25),
      I4 => sel0(0),
      I5 => slv_reg3(25),
      O => reg_data_out(25)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(26),
      I4 => sel0(0),
      I5 => slv_reg3(26),
      O => reg_data_out(26)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(27),
      I4 => sel0(0),
      I5 => slv_reg3(27),
      O => reg_data_out(27)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(28),
      I4 => sel0(0),
      I5 => slv_reg3(28),
      O => reg_data_out(28)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(29),
      I4 => sel0(0),
      I5 => slv_reg3(29),
      O => reg_data_out(29)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => temperature(2),
      I4 => sel0(0),
      I5 => humidity(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(30),
      I4 => sel0(0),
      I5 => slv_reg3(30),
      O => reg_data_out(30)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(31),
      I4 => sel0(0),
      I5 => slv_reg3(31),
      O => reg_data_out(31)
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => temperature(3),
      I4 => sel0(0),
      I5 => humidity(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => temperature(4),
      I4 => sel0(0),
      I5 => humidity(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => temperature(5),
      I4 => sel0(0),
      I5 => humidity(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => temperature(6),
      I4 => sel0(0),
      I5 => humidity(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => temperature(7),
      I4 => sel0(0),
      I5 => humidity(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(8),
      I4 => sel0(0),
      I5 => slv_reg3(8),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8888888B888"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg2(9),
      I4 => sel0(0),
      I5 => slv_reg3(9),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => dht11_n_0
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => dht11_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => dht11_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => dht11_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => dht11_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => dht11_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => dht11_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => dht11_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => dht11_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => dht11_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => dht11_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => dht11_n_0
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => reg_data_out(1),
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => dht11_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => dht11_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => dht11_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => dht11_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => dht11_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => dht11_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => dht11_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => dht11_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => dht11_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => dht11_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => dht11_n_0
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2),
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => dht11_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => dht11_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => dht11_n_0
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => reg_data_out(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => dht11_n_0
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => reg_data_out(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => dht11_n_0
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      O => reg_data_out(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => dht11_n_0
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      O => reg_data_out(6),
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => dht11_n_0
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      O => reg_data_out(7),
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => dht11_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => dht11_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => \^s00_axi_rvalid\,
      R => dht11_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \^aw_en_reg_0\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => dht11_n_0
    );
dht11: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr
     port map (
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => dht11_n_0,
      count_usec_e10_out => count_usec_e10_out,
      count_usec_e_reg_0 => count_usec_e_reg,
      count_usec_e_reg_1 => count_usec_e_reg_0,
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_0,
      \humidity_reg[7]_0\(7 downto 0) => humidity(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[1]_0\ => \state_reg[1]\,
      \state_reg[3]_0\ => \state_reg[3]\,
      \state_reg[4]_0\ => \state_reg[4]\,
      \state_reg[5]_0\ => \state_reg[5]\,
      \temperature_reg[7]_0\(7 downto 0) => temperature(7 downto 0)
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(1),
      O => p_1_in(15)
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(1),
      O => p_1_in(23)
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(1),
      O => p_1_in(31)
    );
\slv_reg2[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(1),
      O => p_1_in(7)
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => dht11_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => dht11_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => dht11_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => dht11_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => dht11_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => dht11_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => dht11_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => dht11_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => dht11_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => dht11_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => dht11_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => dht11_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => dht11_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => dht11_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => dht11_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => dht11_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => dht11_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => dht11_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => dht11_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => dht11_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => dht11_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => dht11_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => dht11_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => dht11_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => dht11_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => dht11_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => dht11_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => dht11_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => dht11_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => dht11_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => dht11_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => dht11_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(2),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => dht11_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => dht11_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => dht11_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => dht11_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => dht11_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => dht11_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => dht11_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => dht11_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => dht11_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => dht11_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => dht11_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => dht11_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => dht11_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => dht11_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => dht11_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => dht11_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => dht11_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => dht11_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => dht11_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => dht11_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => dht11_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => dht11_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => dht11_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => dht11_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => dht11_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => dht11_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => dht11_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => dht11_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => dht11_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => dht11_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => dht11_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => dht11_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => dht11_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => dht11_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => dht11_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => dht11_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => dht11_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => dht11_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => dht11_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => dht11_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => dht11_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => dht11_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => dht11_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => dht11_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => dht11_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => dht11_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => dht11_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => dht11_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => dht11_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => dht11_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => dht11_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => dht11_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => dht11_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => dht11_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => dht11_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => dht11_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => dht11_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => dht11_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => dht11_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => dht11_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => dht11_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => dht11_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => dht11_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => dht11_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(2),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => dht11_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => dht11_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => dht11_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => dht11_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => dht11_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => dht11_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => dht11_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => dht11_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => dht11_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => dht11_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => dht11_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => dht11_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => dht11_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => dht11_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => dht11_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => dht11_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => dht11_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => dht11_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => dht11_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => dht11_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => dht11_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => dht11_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => dht11_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => dht11_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => dht11_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => dht11_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => dht11_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => dht11_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => dht11_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => dht11_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => dht11_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => dht11_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in_0(2),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in_0(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in_0(2),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => dht11_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => dht11_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => dht11_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => dht11_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => dht11_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => dht11_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => dht11_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => dht11_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => dht11_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => dht11_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => dht11_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => dht11_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => dht11_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => dht11_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => dht11_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => dht11_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => dht11_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => dht11_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => dht11_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => dht11_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => dht11_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => dht11_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => dht11_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => dht11_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => dht11_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => dht11_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => dht11_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => dht11_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => dht11_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => dht11_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => dht11_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => dht11_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => dht11_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => dht11_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => dht11_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => dht11_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => dht11_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => dht11_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => dht11_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => dht11_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => dht11_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => dht11_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => dht11_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => dht11_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => dht11_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => dht11_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => dht11_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => dht11_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => dht11_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => dht11_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => dht11_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => dht11_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => dht11_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => dht11_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => dht11_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => dht11_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => dht11_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => dht11_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => dht11_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => dht11_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => dht11_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => dht11_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => dht11_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => dht11_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    dht11_data : inout STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0 is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal count_usec_e_i_1_n_0 : STD_LOGIC;
  signal \dht11/count_usec_e10_out\ : STD_LOGIC;
  signal dht11_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_3 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_47 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_48 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_49 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_50 : STD_LOGIC;
  signal myip_dht11_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => myip_dht11_v1_0_S00_AXI_inst_n_5,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
count_usec_e_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => myip_dht11_v1_0_S00_AXI_inst_n_48,
      I1 => myip_dht11_v1_0_S00_AXI_inst_n_50,
      I2 => myip_dht11_v1_0_S00_AXI_inst_n_49,
      I3 => myip_dht11_v1_0_S00_AXI_inst_n_47,
      I4 => \dht11/count_usec_e10_out\,
      I5 => myip_dht11_v1_0_S00_AXI_inst_n_3,
      O => count_usec_e_i_1_n_0
    );
dht11_data_INST_0_i_1: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => myip_dht11_v1_0_S00_AXI_inst_n_7,
      Q => dht11_data_INST_0_i_1_n_0,
      R => '0'
    );
myip_dht11_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI
     port map (
      Q(5 downto 0) => Q(5 downto 0),
      aw_en_reg_0 => myip_dht11_v1_0_S00_AXI_inst_n_5,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => \^s_axi_wready\,
      count_usec_e10_out => \dht11/count_usec_e10_out\,
      count_usec_e_reg => myip_dht11_v1_0_S00_AXI_inst_n_3,
      count_usec_e_reg_0 => count_usec_e_i_1_n_0,
      dht11_data => dht11_data,
      dht11_data_0 => dht11_data_INST_0_i_1_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rvalid => \^s00_axi_rvalid\,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      \state_reg[0]\ => myip_dht11_v1_0_S00_AXI_inst_n_7,
      \state_reg[1]\ => myip_dht11_v1_0_S00_AXI_inst_n_47,
      \state_reg[3]\ => myip_dht11_v1_0_S00_AXI_inst_n_50,
      \state_reg[4]\ => myip_dht11_v1_0_S00_AXI_inst_n_49,
      \state_reg[5]\ => myip_dht11_v1_0_S00_AXI_inst_n_48
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    dht11_data : inout STD_LOGIC;
    led_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Micro_blaze_dht11_myip_dht11_0_0,myip_dht11_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_dht11_v1_0,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  led_debug(6) <= 'Z';
  led_debug(7) <= 'Z';
  led_debug(8) <= 'Z';
  led_debug(9) <= 'Z';
  led_debug(10) <= 'Z';
  led_debug(11) <= 'Z';
  led_debug(12) <= 'Z';
  led_debug(13) <= 'Z';
  led_debug(14) <= 'Z';
  led_debug(15) <= 'Z';
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0
     port map (
      Q(5 downto 0) => led_debug(5 downto 0),
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      dht11_data => dht11_data,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
