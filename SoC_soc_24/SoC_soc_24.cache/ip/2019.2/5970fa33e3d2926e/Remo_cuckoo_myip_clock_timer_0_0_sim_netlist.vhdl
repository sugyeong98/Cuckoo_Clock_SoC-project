-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Nov  5 17:30:01 2024
-- Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Remo_cuckoo_myip_clock_timer_0_0_sim_netlist.vhdl
-- Design      : Remo_cuckoo_myip_clock_timer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p is
  port (
    q_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    q_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[19]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata[19]_i_2_0\ : in STD_LOGIC;
    \axi_rdata[19]_i_2_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p is
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \^q_reg_0\ : STD_LOGIC;
begin
  q_reg_0 <= \^q_reg_0\;
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \axi_rdata_reg[19]_0\(0),
      I1 => \axi_rdata_reg[19]_1\(0),
      I2 => \axi_rdata_reg[19]_i_4_n_0\,
      I3 => sel0(0),
      I4 => Q(0),
      I5 => sel0(1),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata_reg[19]\,
      O => D(0),
      S => sel0(2)
    );
\axi_rdata_reg[19]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_2_0\,
      I1 => \axi_rdata[19]_i_2_1\,
      O => \axi_rdata_reg[19]_i_4_n_0\,
      S => \^q_reg_0\
    );
q_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => q_reg_1,
      Q => \^q_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC;
    \hour_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_1 : out STD_LOGIC;
    ff_cur_reg_2 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \hour_reg[0]_0\ : in STD_LOGIC;
    \hour_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in_1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[0]_2\ : in STD_LOGIC;
    p_0_in_2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in_3 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd1[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd1[3]_i_3__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hour[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hour[0]_i_1__0\ : label is "soft_lutpair3";
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
\bcd1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => p_0_in_1(1),
      I3 => p_0_in_1(0),
      O => ff_cur_reg_0(0)
    );
\bcd1[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => p_0_in_3(1),
      I3 => p_0_in_3(0),
      O => ff_old_reg_2(0)
    );
\bcd1[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => ff_old_reg_0
    );
\bcd1[3]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      O => ff_cur_reg_1
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_2,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
\hour[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => Q(0),
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
      I3 => \hour_reg[0]_0\,
      I4 => \hour_reg[0]_1\(0),
      O => D(0)
    );
\hour[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => \hour_reg[0]_1\(0),
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \hour_reg[0]_2\,
      I4 => Q(0),
      O => \hour_reg[0]\(0)
    );
\hour[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => p_0_in_0(1),
      I3 => p_0_in_0(0),
      O => E(0)
    );
\hour[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => p_0_in_2(1),
      I3 => p_0_in_2(0),
      O => ff_old_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10 is
  port (
    ff_cur_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bcd10_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10 is
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd10[2]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bcd1[3]_i_1__0\ : label is "soft_lutpair15";
begin
\bcd10[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => \bcd10_reg[0]\,
      I3 => p_0_in_0(0),
      I4 => p_0_in_0(1),
      O => ff_cur_reg_0
    );
\bcd1[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => E(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => clk_sec,
      Q => p_0_in_0(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in_0(1),
      Q => p_0_in_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11 is
  port (
    \bcd1_reg[3]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    btn_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bcd10_reg[0]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  E(0) <= \^e\(0);
\bcd10[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => \^e\(0),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd10_reg[0]\,
      O => \bcd1_reg[3]\
    );
\bcd1[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \^e\(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => btn_sec,
      Q => p_0_in_0(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in_0(1),
      Q => p_0_in_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_sec : out STD_LOGIC;
    \cnt_clksource_reg[5]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^cnt_clksource_reg[5]\ : STD_LOGIC;
  signal \ff_cur_i_3__0_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_out : STD_LOGIC;
begin
  AR(0) <= \^ar\(0);
  \cnt_clksource_reg[5]\ <= \^cnt_clksource_reg[5]\;
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\ff_cur_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => clk_sec
    );
\ff_cur_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002220"
    )
        port map (
      I0 => Q(2),
      I1 => \^cnt_clksource_reg[5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \ff_cur_i_3__0_n_0\,
      I5 => Q(7),
      O => p_0_out
    );
\ff_cur_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => \^cnt_clksource_reg[5]\
    );
\ff_cur_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      O => \ff_cur_i_3__0_n_0\
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
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_clksource_reg[5]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13 is
  signal \^cnt_clksource_reg[5]\ : STD_LOGIC;
  signal \ff_cur_i_1__6_n_0\ : STD_LOGIC;
  signal ff_cur_i_3_n_0 : STD_LOGIC;
  signal \sec_clock/ed_source/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  \cnt_clksource_reg[5]\ <= \^cnt_clksource_reg[5]\;
\cnt_clksource[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sec_clock/ed_source/p_0_in\(0),
      I1 => \sec_clock/ed_source/p_0_in\(1),
      O => E(0)
    );
\ff_cur_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002220"
    )
        port map (
      I0 => Q(2),
      I1 => \^cnt_clksource_reg[5]\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => ff_cur_i_3_n_0,
      I5 => Q(7),
      O => \ff_cur_i_1__6_n_0\
    );
ff_cur_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => \^cnt_clksource_reg[5]\
    );
ff_cur_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(5),
      I1 => Q(6),
      O => ff_cur_i_3_n_0
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \ff_cur_i_1__6_n_0\,
      Q => \sec_clock/ed_source/p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \sec_clock/ed_source/p_0_in\(1),
      Q => \sec_clock/ed_source/p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => clk_min,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    btn_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => btn_min,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_min : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16 is
  signal \ff_cur_i_1__8_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
\ff_cur_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      O => clk_min
    );
\ff_cur_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      O => \ff_cur_i_1__8_n_0\
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \ff_cur_i_1__8_n_0\,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    inc_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\cnt_clksource[5]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => E(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => inc_sec,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_0,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_0,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20 is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20 is
  signal \ff_cur_i_1__9_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\ff_cur_i_1__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => ff_old_reg_0
    );
\ff_cur_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => Q(0),
      I4 => Q(1),
      O => \ff_cur_i_1__9_n_0\
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \ff_cur_i_1__9_n_0\,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    inc_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\cnt_clksource[5]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      O => E(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => inc_min,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9 is
  port (
    ff_old_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9 : entity is "edge_detector_n";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9 is
  signal \ff_cur_i_1__5_n_0\ : STD_LOGIC;
  signal \msec_clock/ed_source/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\cnt_clksource[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \msec_clock/ed_source/p_0_in\(0),
      I1 => \msec_clock/ed_source/p_0_in\(1),
      O => ff_old_reg_0(0)
    );
\ff_cur_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => \ff_cur_i_1__5_n_0\
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \ff_cur_i_1__5_n_0\,
      Q => \msec_clock/ed_source/p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \msec_clock/ed_source/p_0_in\(1),
      Q => \msec_clock/ed_source/p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  port (
    ff_cur_reg_0 : out STD_LOGIC;
    ff_cur_reg_1 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\ff_cur_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => ff_cur_reg_0
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_1,
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22 is
  port (
    inc_min : out STD_LOGIC;
    btn_min : out STD_LOGIC;
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22 is
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ff_cur_i_1__2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ff_cur_i_1__3\ : label is "soft_lutpair1";
begin
\ff_cur_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => ff_cur_reg_1,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => inc_min
    );
\ff_cur_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      O => btn_min
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_0,
      Q => p_0_in_0(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in_0(1),
      Q => p_0_in_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23 is
  port (
    inc_sec : out STD_LOGIC;
    btn_sec : out STD_LOGIC;
    ff_cur_reg_0 : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23 is
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ff_cur_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ff_cur_i_1__0\ : label is "soft_lutpair0";
begin
ff_cur_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      I2 => ff_cur_reg_1,
      I3 => p_0_in(0),
      I4 => p_0_in(1),
      O => inc_sec
    );
\ff_cur_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in_0(1),
      I1 => p_0_in_0(0),
      O => btn_sec
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => ff_cur_reg_0,
      Q => p_0_in_0(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in_0(1),
      Q => p_0_in_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24 is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24 is
  signal \fnd/rc/ed/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
debounced_btn_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \fnd/rc/ed/p_0_in\(0),
      I1 => \fnd/rc/ed/p_0_in\(1),
      O => ff_old_reg_0
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => S(0),
      Q => \fnd/rc/ed/p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \fnd/rc/ed/p_0_in\(1),
      Q => \fnd/rc/ed/p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    debounced_btn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => debounced_btn,
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ff_old_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr is
  signal \clk_div[0]_i_2_n_0\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \clk_div_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[10]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[11]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[12]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[13]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[14]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[15]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[3]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[4]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[5]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[6]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[7]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[8]\ : STD_LOGIC;
  signal \clk_div_reg_n_0_[9]\ : STD_LOGIC;
  signal cp : STD_LOGIC;
  signal debounced_btn : STD_LOGIC;
  signal \^ff_old_reg\ : STD_LOGIC;
  signal \NLW_clk_div_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_clk_div_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  ff_old_reg <= \^ff_old_reg\;
\clk_div[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_div_reg_n_0_[0]\,
      O => \clk_div[0]_i_2_n_0\
    );
\clk_div_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[0]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[0]\,
      R => '0'
    );
\clk_div_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \clk_div_reg[0]_i_1_n_0\,
      CO(2) => \clk_div_reg[0]_i_1_n_1\,
      CO(1) => \clk_div_reg[0]_i_1_n_2\,
      CO(0) => \clk_div_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \clk_div_reg[0]_i_1_n_4\,
      O(2) => \clk_div_reg[0]_i_1_n_5\,
      O(1) => \clk_div_reg[0]_i_1_n_6\,
      O(0) => \clk_div_reg[0]_i_1_n_7\,
      S(3) => \clk_div_reg_n_0_[3]\,
      S(2) => \clk_div_reg_n_0_[2]\,
      S(1) => \clk_div_reg_n_0_[1]\,
      S(0) => \clk_div[0]_i_2_n_0\
    );
\clk_div_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_5\,
      Q => \clk_div_reg_n_0_[10]\,
      R => '0'
    );
\clk_div_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_4\,
      Q => \clk_div_reg_n_0_[11]\,
      R => '0'
    );
\clk_div_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[12]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[12]\,
      R => '0'
    );
\clk_div_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[8]_i_1_n_0\,
      CO(3) => \clk_div_reg[12]_i_1_n_0\,
      CO(2) => \clk_div_reg[12]_i_1_n_1\,
      CO(1) => \clk_div_reg[12]_i_1_n_2\,
      CO(0) => \clk_div_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[12]_i_1_n_4\,
      O(2) => \clk_div_reg[12]_i_1_n_5\,
      O(1) => \clk_div_reg[12]_i_1_n_6\,
      O(0) => \clk_div_reg[12]_i_1_n_7\,
      S(3) => \clk_div_reg_n_0_[15]\,
      S(2) => \clk_div_reg_n_0_[14]\,
      S(1) => \clk_div_reg_n_0_[13]\,
      S(0) => \clk_div_reg_n_0_[12]\
    );
\clk_div_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[12]_i_1_n_6\,
      Q => \clk_div_reg_n_0_[13]\,
      R => '0'
    );
\clk_div_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[12]_i_1_n_5\,
      Q => \clk_div_reg_n_0_[14]\,
      R => '0'
    );
\clk_div_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[12]_i_1_n_4\,
      Q => \clk_div_reg_n_0_[15]\,
      R => '0'
    );
\clk_div_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[16]_i_1_n_7\,
      Q => cp,
      R => '0'
    );
\clk_div_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_clk_div_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_clk_div_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \clk_div_reg[16]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => cp
    );
\clk_div_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[0]_i_1_n_6\,
      Q => \clk_div_reg_n_0_[1]\,
      R => '0'
    );
\clk_div_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[0]_i_1_n_5\,
      Q => \clk_div_reg_n_0_[2]\,
      R => '0'
    );
\clk_div_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[0]_i_1_n_4\,
      Q => \clk_div_reg_n_0_[3]\,
      R => '0'
    );
\clk_div_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[4]\,
      R => '0'
    );
\clk_div_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[0]_i_1_n_0\,
      CO(3) => \clk_div_reg[4]_i_1_n_0\,
      CO(2) => \clk_div_reg[4]_i_1_n_1\,
      CO(1) => \clk_div_reg[4]_i_1_n_2\,
      CO(0) => \clk_div_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[4]_i_1_n_4\,
      O(2) => \clk_div_reg[4]_i_1_n_5\,
      O(1) => \clk_div_reg[4]_i_1_n_6\,
      O(0) => \clk_div_reg[4]_i_1_n_7\,
      S(3) => \clk_div_reg_n_0_[7]\,
      S(2) => \clk_div_reg_n_0_[6]\,
      S(1) => \clk_div_reg_n_0_[5]\,
      S(0) => \clk_div_reg_n_0_[4]\
    );
\clk_div_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_6\,
      Q => \clk_div_reg_n_0_[5]\,
      R => '0'
    );
\clk_div_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_5\,
      Q => \clk_div_reg_n_0_[6]\,
      R => '0'
    );
\clk_div_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[4]_i_1_n_4\,
      Q => \clk_div_reg_n_0_[7]\,
      R => '0'
    );
\clk_div_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_7\,
      Q => \clk_div_reg_n_0_[8]\,
      R => '0'
    );
\clk_div_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_div_reg[4]_i_1_n_0\,
      CO(3) => \clk_div_reg[8]_i_1_n_0\,
      CO(2) => \clk_div_reg[8]_i_1_n_1\,
      CO(1) => \clk_div_reg[8]_i_1_n_2\,
      CO(0) => \clk_div_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \clk_div_reg[8]_i_1_n_4\,
      O(2) => \clk_div_reg[8]_i_1_n_5\,
      O(1) => \clk_div_reg[8]_i_1_n_6\,
      O(0) => \clk_div_reg[8]_i_1_n_7\,
      S(3) => \clk_div_reg_n_0_[11]\,
      S(2) => \clk_div_reg_n_0_[10]\,
      S(1) => \clk_div_reg_n_0_[9]\,
      S(0) => \clk_div_reg_n_0_[8]\
    );
\clk_div_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clk_div_reg[8]_i_1_n_6\,
      Q => \clk_div_reg_n_0_[9]\,
      R => '0'
    );
debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^ff_old_reg\,
      CLR => AR(0),
      D => Q(0),
      Q => debounced_btn
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24
     port map (
      AR(0) => AR(0),
      S(0) => cp,
      ff_old_reg_0 => \^ff_old_reg\,
      s00_axi_aclk => s00_axi_aclk
    );
ed1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25
     port map (
      AR(0) => AR(0),
      debounced_btn => debounced_btn,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0 is
  port (
    inc_sec : out STD_LOGIC;
    btn_sec : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    debounced_btn_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0 : entity is "button_cntr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0 is
  signal debounced_btn_reg_n_0 : STD_LOGIC;
begin
debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => debounced_btn_reg_0,
      CLR => AR(0),
      D => Q(0),
      Q => debounced_btn_reg_n_0
    );
ed1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23
     port map (
      AR(0) => AR(0),
      btn_sec => btn_sec,
      ff_cur_reg_0 => debounced_btn_reg_n_0,
      ff_cur_reg_1 => ff_cur_reg,
      inc_sec => inc_sec,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1 is
  port (
    inc_min : out STD_LOGIC;
    btn_min : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    debounced_btn_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1 : entity is "button_cntr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1 is
  signal debounced_btn_reg_n_0 : STD_LOGIC;
begin
debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => debounced_btn_reg_0,
      CLR => AR(0),
      D => Q(0),
      Q => debounced_btn_reg_n_0
    );
ed1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22
     port map (
      AR(0) => AR(0),
      btn_min => btn_min,
      ff_cur_reg_0 => debounced_btn_reg_n_0,
      ff_cur_reg_1 => ff_cur_reg,
      inc_min => inc_min,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2 is
  port (
    ff_cur_reg : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    debounced_btn_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2 : entity is "button_cntr";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2 is
  signal debounced_btn_reg_n_0 : STD_LOGIC;
begin
debounced_btn_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => debounced_btn_reg_0,
      CLR => AR(0),
      D => Q(0),
      Q => debounced_btn_reg_n_0
    );
ed1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => AR(0),
      ff_cur_reg_0 => ff_cur_reg,
      ff_cur_reg_1 => debounced_btn_reg_n_0,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 is
  port (
    ff_old_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 is
  signal \cnt_sysclk[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk[6]_i_2_n_0\ : STD_LOGIC;
  signal cnt_sysclk_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_sysclk[4]_i_2\ : label is "soft_lutpair16";
begin
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777777F"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(6),
      I2 => cnt_sysclk_reg(4),
      I3 => cnt_sysclk_reg(3),
      I4 => cnt_sysclk_reg(2),
      I5 => cnt_sysclk_reg(0),
      O => \p_0_in__0\(0)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF01FF010000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(3),
      I2 => cnt_sysclk_reg(4),
      I3 => \cnt_sysclk[4]_i_2_n_0\,
      I4 => cnt_sysclk_reg(0),
      I5 => cnt_sysclk_reg(1),
      O => \p_0_in__0\(1)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07777000"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(6),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(0),
      I4 => cnt_sysclk_reg(2),
      O => \p_0_in__0\(2)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F7F00808080"
    )
        port map (
      I0 => cnt_sysclk_reg(1),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(2),
      I3 => cnt_sysclk_reg(6),
      I4 => cnt_sysclk_reg(5),
      I5 => cnt_sysclk_reg(3),
      O => \p_0_in__0\(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => cnt_sysclk_reg(2),
      I1 => cnt_sysclk_reg(0),
      I2 => cnt_sysclk_reg(1),
      I3 => cnt_sysclk_reg(3),
      I4 => \cnt_sysclk[4]_i_2_n_0\,
      I5 => cnt_sysclk_reg(4),
      O => \p_0_in__0\(4)
    );
\cnt_sysclk[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(6),
      O => \cnt_sysclk[4]_i_2_n_0\
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555700001555C000"
    )
        port map (
      I0 => cnt_sysclk_reg(6),
      I1 => cnt_sysclk_reg(2),
      I2 => cnt_sysclk_reg(3),
      I3 => cnt_sysclk_reg(4),
      I4 => cnt_sysclk_reg(5),
      I5 => \cnt_sysclk[6]_i_2_n_0\,
      O => \p_0_in__0\(5)
    );
\cnt_sysclk[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557000055558000"
    )
        port map (
      I0 => cnt_sysclk_reg(5),
      I1 => cnt_sysclk_reg(2),
      I2 => cnt_sysclk_reg(3),
      I3 => cnt_sysclk_reg(4),
      I4 => cnt_sysclk_reg(6),
      I5 => \cnt_sysclk[6]_i_2_n_0\,
      O => \p_0_in__0\(6)
    );
\cnt_sysclk[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
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
      CLR => AR(0),
      D => \p_0_in__0\(0),
      Q => cnt_sysclk_reg(0)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(1),
      Q => cnt_sysclk_reg(1)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(2),
      Q => cnt_sysclk_reg(2)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(3),
      Q => cnt_sysclk_reg(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(4),
      Q => cnt_sysclk_reg(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(5),
      Q => cnt_sysclk_reg(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \p_0_in__0\(6),
      Q => cnt_sysclk_reg(6)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9
     port map (
      AR(0) => AR(0),
      Q(5 downto 0) => cnt_sysclk_reg(6 downto 1),
      ff_old_reg_0(0) => ff_old_reg(0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_clksource_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000 is
  signal \cnt_clksource[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clksource[6]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_clksource[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clksource[9]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_clksource[9]_i_4_n_0\ : STD_LOGIC;
  signal cnt_clksource_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ed_n_1 : STD_LOGIC;
  signal \p_0_in__0__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_clksource[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_clksource[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_clksource[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_clksource[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_clksource[6]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_clksource[9]_i_3\ : label is "soft_lutpair9";
begin
\cnt_clksource[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2_n_0\,
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(0),
      O => \p_0_in__0__0\(0)
    );
\cnt_clksource[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F1F100"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(3),
      I2 => \cnt_clksource[4]_i_2_n_0\,
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(1),
      O => \p_0_in__0__0\(1)
    );
\cnt_clksource[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F1F1F1F1000000"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(3),
      I2 => \cnt_clksource[4]_i_2_n_0\,
      I3 => cnt_clksource_reg(1),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(2),
      O => \p_0_in__0__0\(2)
    );
\cnt_clksource[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2_n_0\,
      I1 => cnt_clksource_reg(2),
      I2 => cnt_clksource_reg(0),
      I3 => cnt_clksource_reg(1),
      I4 => cnt_clksource_reg(3),
      O => \p_0_in__0__0\(3)
    );
\cnt_clksource[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2_n_0\,
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(4),
      O => \p_0_in__0__0\(4)
    );
\cnt_clksource[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_clksource_reg(6),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(7),
      I3 => cnt_clksource_reg(8),
      I4 => cnt_clksource_reg(9),
      O => \cnt_clksource[4]_i_2_n_0\
    );
\cnt_clksource[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F343"
    )
        port map (
      I0 => cnt_clksource_reg(6),
      I1 => \cnt_clksource[9]_i_3_n_0\,
      I2 => cnt_clksource_reg(5),
      I3 => \cnt_clksource[6]_i_2_n_0\,
      O => \p_0_in__0__0\(5)
    );
\cnt_clksource[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F252"
    )
        port map (
      I0 => cnt_clksource_reg(5),
      I1 => \cnt_clksource[9]_i_3_n_0\,
      I2 => cnt_clksource_reg(6),
      I3 => \cnt_clksource[6]_i_2_n_0\,
      O => \p_0_in__0__0\(6)
    );
\cnt_clksource[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F007F7FFF7F7F"
    )
        port map (
      I0 => cnt_clksource_reg(9),
      I1 => cnt_clksource_reg(8),
      I2 => cnt_clksource_reg(7),
      I3 => cnt_clksource_reg(3),
      I4 => \cnt_clksource[6]_i_3_n_0\,
      I5 => cnt_clksource_reg(4),
      O => \cnt_clksource[6]_i_2_n_0\
    );
\cnt_clksource[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      O => \cnt_clksource[6]_i_3_n_0\
    );
\cnt_clksource[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000F7070000F"
    )
        port map (
      I0 => cnt_clksource_reg(8),
      I1 => cnt_clksource_reg(9),
      I2 => \cnt_clksource[9]_i_3_n_0\,
      I3 => ed_n_1,
      I4 => cnt_clksource_reg(7),
      I5 => \cnt_clksource[9]_i_4_n_0\,
      O => \p_0_in__0__0\(7)
    );
\cnt_clksource[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0A0B0AFF0F0F0F0"
    )
        port map (
      I0 => \cnt_clksource[9]_i_4_n_0\,
      I1 => cnt_clksource_reg(9),
      I2 => cnt_clksource_reg(8),
      I3 => \cnt_clksource[9]_i_3_n_0\,
      I4 => ed_n_1,
      I5 => cnt_clksource_reg(7),
      O => \p_0_in__0__0\(8)
    );
\cnt_clksource[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000877770008"
    )
        port map (
      I0 => cnt_clksource_reg(7),
      I1 => cnt_clksource_reg(8),
      I2 => ed_n_1,
      I3 => \cnt_clksource[9]_i_3_n_0\,
      I4 => cnt_clksource_reg(9),
      I5 => \cnt_clksource[9]_i_4_n_0\,
      O => \p_0_in__0__0\(9)
    );
\cnt_clksource[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(1),
      I2 => cnt_clksource_reg(0),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(4),
      O => \cnt_clksource[9]_i_3_n_0\
    );
\cnt_clksource[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000007F"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      I3 => cnt_clksource_reg(3),
      I4 => cnt_clksource_reg(4),
      I5 => ed_n_1,
      O => \cnt_clksource[9]_i_4_n_0\
    );
\cnt_clksource_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(0),
      Q => cnt_clksource_reg(0)
    );
\cnt_clksource_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(1),
      Q => cnt_clksource_reg(1)
    );
\cnt_clksource_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(2),
      Q => cnt_clksource_reg(2)
    );
\cnt_clksource_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(3),
      Q => cnt_clksource_reg(3)
    );
\cnt_clksource_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(4),
      Q => cnt_clksource_reg(4)
    );
\cnt_clksource_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(5),
      Q => cnt_clksource_reg(5)
    );
\cnt_clksource_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(6),
      Q => cnt_clksource_reg(6)
    );
\cnt_clksource_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(7),
      Q => cnt_clksource_reg(7)
    );
\cnt_clksource_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(8),
      Q => cnt_clksource_reg(8)
    );
\cnt_clksource_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \cnt_clksource_reg[0]_0\(0),
      CLR => AR(0),
      D => \p_0_in__0__0\(9),
      Q => cnt_clksource_reg(9)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13
     port map (
      AR(0) => AR(0),
      E(0) => E(0),
      Q(7 downto 0) => cnt_clksource_reg(9 downto 2),
      \cnt_clksource_reg[5]\ => ed_n_1,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_sec : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6 : entity is "clock_div_1000";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6 is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \cnt_clksource[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_clksource[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_clksource[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_clksource[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_clksource[9]_i_4__0_n_0\ : STD_LOGIC;
  signal cnt_clksource_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal ed_n_4 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_clksource[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_clksource[1]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_clksource[5]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_clksource[6]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_clksource[6]_i_3__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_clksource[9]_i_3__0\ : label is "soft_lutpair12";
begin
  AR(0) <= \^ar\(0);
\cnt_clksource[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2__0_n_0\,
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(0),
      O => \p_0_in__1\(0)
    );
\cnt_clksource[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F1F100"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(3),
      I2 => \cnt_clksource[4]_i_2__0_n_0\,
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(1),
      O => \p_0_in__1\(1)
    );
\cnt_clksource[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F1F1F1F1000000"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(3),
      I2 => \cnt_clksource[4]_i_2__0_n_0\,
      I3 => cnt_clksource_reg(1),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(2),
      O => \p_0_in__1\(2)
    );
\cnt_clksource[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2__0_n_0\,
      I1 => cnt_clksource_reg(2),
      I2 => cnt_clksource_reg(0),
      I3 => cnt_clksource_reg(1),
      I4 => cnt_clksource_reg(3),
      O => \p_0_in__1\(3)
    );
\cnt_clksource[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cnt_clksource[4]_i_2__0_n_0\,
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(4),
      O => \p_0_in__1\(4)
    );
\cnt_clksource[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_clksource_reg(6),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(7),
      I3 => cnt_clksource_reg(8),
      I4 => cnt_clksource_reg(9),
      O => \cnt_clksource[4]_i_2__0_n_0\
    );
\cnt_clksource[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F343"
    )
        port map (
      I0 => cnt_clksource_reg(6),
      I1 => \cnt_clksource[9]_i_3__0_n_0\,
      I2 => cnt_clksource_reg(5),
      I3 => \cnt_clksource[6]_i_2__0_n_0\,
      O => \p_0_in__1\(5)
    );
\cnt_clksource[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F252"
    )
        port map (
      I0 => cnt_clksource_reg(5),
      I1 => \cnt_clksource[9]_i_3__0_n_0\,
      I2 => cnt_clksource_reg(6),
      I3 => \cnt_clksource[6]_i_2__0_n_0\,
      O => \p_0_in__1\(6)
    );
\cnt_clksource[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F007F7FFF7F7F"
    )
        port map (
      I0 => cnt_clksource_reg(9),
      I1 => cnt_clksource_reg(8),
      I2 => cnt_clksource_reg(7),
      I3 => cnt_clksource_reg(3),
      I4 => \cnt_clksource[6]_i_3__0_n_0\,
      I5 => cnt_clksource_reg(4),
      O => \cnt_clksource[6]_i_2__0_n_0\
    );
\cnt_clksource[6]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      O => \cnt_clksource[6]_i_3__0_n_0\
    );
\cnt_clksource[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000F7070000F"
    )
        port map (
      I0 => cnt_clksource_reg(8),
      I1 => cnt_clksource_reg(9),
      I2 => \cnt_clksource[9]_i_3__0_n_0\,
      I3 => ed_n_4,
      I4 => cnt_clksource_reg(7),
      I5 => \cnt_clksource[9]_i_4__0_n_0\,
      O => \p_0_in__1\(7)
    );
\cnt_clksource[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0A0B0AFF0F0F0F0"
    )
        port map (
      I0 => \cnt_clksource[9]_i_4__0_n_0\,
      I1 => cnt_clksource_reg(9),
      I2 => cnt_clksource_reg(8),
      I3 => \cnt_clksource[9]_i_3__0_n_0\,
      I4 => ed_n_4,
      I5 => cnt_clksource_reg(7),
      O => \p_0_in__1\(8)
    );
\cnt_clksource[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000877770008"
    )
        port map (
      I0 => cnt_clksource_reg(7),
      I1 => cnt_clksource_reg(8),
      I2 => ed_n_4,
      I3 => \cnt_clksource[9]_i_3__0_n_0\,
      I4 => cnt_clksource_reg(9),
      I5 => \cnt_clksource[9]_i_4__0_n_0\,
      O => \p_0_in__1\(9)
    );
\cnt_clksource[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(1),
      I2 => cnt_clksource_reg(0),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(4),
      O => \cnt_clksource[9]_i_3__0_n_0\
    );
\cnt_clksource[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000007F"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      I3 => cnt_clksource_reg(3),
      I4 => cnt_clksource_reg(4),
      I5 => ed_n_4,
      O => \cnt_clksource[9]_i_4__0_n_0\
    );
\cnt_clksource_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(0),
      Q => cnt_clksource_reg(0)
    );
\cnt_clksource_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(1),
      Q => cnt_clksource_reg(1)
    );
\cnt_clksource_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(2),
      Q => cnt_clksource_reg(2)
    );
\cnt_clksource_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(3),
      Q => cnt_clksource_reg(3)
    );
\cnt_clksource_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(4),
      Q => cnt_clksource_reg(4)
    );
\cnt_clksource_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(5),
      Q => cnt_clksource_reg(5)
    );
\cnt_clksource_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(6),
      Q => cnt_clksource_reg(6)
    );
\cnt_clksource_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(7),
      Q => cnt_clksource_reg(7)
    );
\cnt_clksource_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(8),
      Q => cnt_clksource_reg(8)
    );
\cnt_clksource_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \^ar\(0),
      D => \p_0_in__1\(9),
      Q => cnt_clksource_reg(9)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12
     port map (
      AR(0) => \^ar\(0),
      Q(7 downto 0) => cnt_clksource_reg(9 downto 2),
      clk_sec => clk_sec,
      \cnt_clksource_reg[5]\ => ed_n_4,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60 is
  port (
    ff_old_reg : out STD_LOGIC;
    inc_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60 is
  signal \cnt_clksource[0]_i_1__2_n_0\ : STD_LOGIC;
  signal cnt_clksource_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ed_source_n_0 : STD_LOGIC;
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 5 downto 1 );
begin
\cnt_clksource[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => cnt_clksource_reg(2),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(3),
      I4 => cnt_clksource_reg(0),
      O => \cnt_clksource[0]_i_1__2_n_0\
    );
\cnt_clksource[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666666666666666"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      I3 => cnt_clksource_reg(5),
      I4 => cnt_clksource_reg(4),
      I5 => cnt_clksource_reg(3),
      O => \p_0_in__3\(1)
    );
\cnt_clksource[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F007F007F00"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(4),
      I2 => cnt_clksource_reg(5),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(1),
      O => \p_0_in__3\(2)
    );
\cnt_clksource[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFFF0000000"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(3),
      O => \p_0_in__3\(3)
    );
\cnt_clksource[4]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37777FFFC0000000"
    )
        port map (
      I0 => cnt_clksource_reg(5),
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(4),
      O => \p_0_in__3\(4)
    );
\cnt_clksource[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4C4CCC4CCC4CCC"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(1),
      O => \p_0_in__3\(5)
    );
\cnt_clksource_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \cnt_clksource[0]_i_1__2_n_0\,
      Q => cnt_clksource_reg(0)
    );
\cnt_clksource_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__3\(1),
      Q => cnt_clksource_reg(1)
    );
\cnt_clksource_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__3\(2),
      Q => cnt_clksource_reg(2)
    );
\cnt_clksource_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__3\(3),
      Q => cnt_clksource_reg(3)
    );
\cnt_clksource_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__3\(4),
      Q => cnt_clksource_reg(4)
    );
\cnt_clksource_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__3\(5),
      Q => cnt_clksource_reg(5)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20
     port map (
      AR(0) => AR(0),
      Q(4 downto 0) => cnt_clksource_reg(5 downto 1),
      ff_old_reg_0 => ff_old_reg,
      s00_axi_aclk => s00_axi_aclk
    );
ed_source: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21
     port map (
      AR(0) => AR(0),
      E(0) => ed_source_n_0,
      inc_min => inc_min,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk_min : out STD_LOGIC;
    inc_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4 : entity is "clock_div_60";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4 is
  signal \cnt_clksource[0]_i_1__1_n_0\ : STD_LOGIC;
  signal cnt_clksource_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ed_source_n_0 : STD_LOGIC;
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 5 downto 1 );
begin
\cnt_clksource[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => cnt_clksource_reg(2),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(3),
      I4 => cnt_clksource_reg(0),
      O => \cnt_clksource[0]_i_1__1_n_0\
    );
\cnt_clksource[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666666666666666"
    )
        port map (
      I0 => cnt_clksource_reg(1),
      I1 => cnt_clksource_reg(0),
      I2 => cnt_clksource_reg(2),
      I3 => cnt_clksource_reg(5),
      I4 => cnt_clksource_reg(4),
      I5 => cnt_clksource_reg(3),
      O => \p_0_in__2\(1)
    );
\cnt_clksource[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"007F7F007F007F00"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(4),
      I2 => cnt_clksource_reg(5),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(1),
      O => \p_0_in__2\(2)
    );
\cnt_clksource[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07777FFFF0000000"
    )
        port map (
      I0 => cnt_clksource_reg(4),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(3),
      O => \p_0_in__2\(3)
    );
\cnt_clksource[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37777FFFC0000000"
    )
        port map (
      I0 => cnt_clksource_reg(5),
      I1 => cnt_clksource_reg(3),
      I2 => cnt_clksource_reg(1),
      I3 => cnt_clksource_reg(0),
      I4 => cnt_clksource_reg(2),
      I5 => cnt_clksource_reg(4),
      O => \p_0_in__2\(4)
    );
\cnt_clksource[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6C4C4CCC4CCC4CCC"
    )
        port map (
      I0 => cnt_clksource_reg(3),
      I1 => cnt_clksource_reg(5),
      I2 => cnt_clksource_reg(4),
      I3 => cnt_clksource_reg(2),
      I4 => cnt_clksource_reg(0),
      I5 => cnt_clksource_reg(1),
      O => \p_0_in__2\(5)
    );
\cnt_clksource_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \cnt_clksource[0]_i_1__1_n_0\,
      Q => cnt_clksource_reg(0)
    );
\cnt_clksource_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__2\(1),
      Q => cnt_clksource_reg(1)
    );
\cnt_clksource_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__2\(2),
      Q => cnt_clksource_reg(2)
    );
\cnt_clksource_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__2\(3),
      Q => cnt_clksource_reg(3)
    );
\cnt_clksource_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__2\(4),
      Q => cnt_clksource_reg(4)
    );
\cnt_clksource_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_source_n_0,
      CLR => AR(0),
      D => \p_0_in__2\(5),
      Q => cnt_clksource_reg(5)
    );
ed: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16
     port map (
      AR(0) => AR(0),
      Q(4 downto 0) => cnt_clksource_reg(5 downto 1),
      clk_min => clk_min,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
ed_source: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17
     port map (
      AR(0) => AR(0),
      E(0) => ed_source_n_0,
      inc_sec => inc_sec,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \hour_reg[4]_0\ : out STD_LOGIC;
    ff_cur_reg : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \hour_reg[4]_1\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[2]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[21]_1\ : in STD_LOGIC;
    \axi_rdata_reg[21]_2\ : in STD_LOGIC;
    \axi_rdata_reg[21]_3\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[17]_1\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]_1\ : in STD_LOGIC;
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]_1\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_rdata_reg[16]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \hour_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24 is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \hour[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \hour[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \hour[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \hour[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \hour[4]_i_3_n_0\ : STD_LOGIC;
  signal \^hour_reg[3]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \hour[2]_i_2\ : label is "soft_lutpair4";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \hour_reg[3]_0\ <= \^hour_reg[3]_0\;
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[16]_0\(0),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[16]_1\(0),
      I3 => sel0(1),
      I4 => \axi_rdata[16]_i_4_n_0\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axi_rdata_reg[21]_1\,
      I2 => \hour_reg[4]_1\(0),
      I3 => sel0(0),
      I4 => \axi_rdata_reg[21]_3\(0),
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0D0D0DD"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata_reg[17]\,
      I2 => \axi_rdata_reg[17]_0\,
      I3 => sel0(1),
      I4 => \axi_rdata[17]_i_4_n_0\,
      O => D(1)
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F6000006F60FFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axi_rdata[20]_i_5_n_0\,
      I2 => \axi_rdata_reg[21]_1\,
      I3 => \axi_rdata_reg[17]_1\,
      I4 => sel0(0),
      I5 => \axi_rdata_reg[21]_3\(1),
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata_reg[18]\,
      I2 => \axi_rdata_reg[18]_0\,
      I3 => \axi_rdata[18]_i_4_n_0\,
      O => D(2)
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF470047FF"
    )
        port map (
      I0 => \axi_rdata[18]_i_5_n_0\,
      I1 => \axi_rdata_reg[21]_1\,
      I2 => \axi_rdata_reg[18]_1\,
      I3 => sel0(0),
      I4 => \axi_rdata_reg[21]_3\(2),
      I5 => sel0(1),
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C34"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0290"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \hour_reg[4]_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata_reg[20]\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[20]_0\,
      I3 => sel0(1),
      I4 => \axi_rdata[20]_i_4_n_0\,
      O => D(3)
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53FF5300"
    )
        port map (
      I0 => \axi_rdata[20]_i_5_n_0\,
      I1 => \axi_rdata_reg[20]_1\,
      I2 => \axi_rdata_reg[21]_1\,
      I3 => sel0(0),
      I4 => \axi_rdata_reg[21]_3\(3),
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4DF3"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(4),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \axi_rdata_reg[21]\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[21]_0\,
      I3 => sel0(1),
      I4 => \axi_rdata[21]_i_4_n_0\,
      O => D(4)
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4747FF00"
    )
        port map (
      I0 => \axi_rdata[21]_i_5_n_0\,
      I1 => \axi_rdata_reg[21]_1\,
      I2 => \axi_rdata_reg[21]_2\,
      I3 => \axi_rdata_reg[21]_3\(4),
      I4 => sel0(0),
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(4),
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata_reg[16]\,
      O => D(0),
      S => sel0(2)
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19
     port map (
      AR(0) => AR(0),
      ff_cur_reg_0 => ff_cur_reg,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
\hour[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FB08FB080808"
    )
        port map (
      I0 => \hour_reg[4]_1\(1),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => \^hour_reg[3]_0\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \hour[1]_i_1__0_n_0\
    );
\hour[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B8B8888888"
    )
        port map (
      I0 => \hour_reg[4]_1\(2),
      I1 => \hour_reg[2]_0\,
      I2 => \^hour_reg[3]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => \hour[2]_i_1__0_n_0\
    );
\hour[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => \^hour_reg[3]_0\
    );
\hour[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FB08FB0808"
    )
        port map (
      I0 => \hour_reg[4]_1\(3),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => \^q\(4),
      I4 => \hour[4]_i_3_n_0\,
      I5 => \^q\(3),
      O => \hour[3]_i_1__0_n_0\
    );
\hour[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FBFB080808"
    )
        port map (
      I0 => \hour_reg[4]_1\(4),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => \hour[4]_i_3_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \hour[4]_i_2__0_n_0\
    );
\hour[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \hour[4]_i_3_n_0\
    );
\hour_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \hour_reg[0]_0\(0),
      Q => \^q\(0)
    );
\hour_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \hour[1]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\hour_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \hour[2]_i_1__0_n_0\,
      Q => \^q\(2)
    );
\hour_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \hour[3]_i_1__0_n_0\,
      Q => \^q\(3)
    );
\hour_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \hour[4]_i_2__0_n_0\,
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \hour_reg[4]_0\ : out STD_LOGIC;
    \hour_reg[4]_1\ : out STD_LOGIC;
    \hour_reg[1]_0\ : out STD_LOGIC;
    \hour_reg[4]_2\ : out STD_LOGIC;
    \hour_reg[4]_3\ : out STD_LOGIC;
    ff_cur_reg : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \hour_reg[4]_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[2]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3 : entity is "loadable_counter_bcd_24";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3 is
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \hour[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \^hour_reg[3]_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hour[2]_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hour[4]_i_3__0\ : label is "soft_lutpair8";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \hour_reg[3]_0\ <= \^hour_reg[3]_0\;
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D6B5"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \hour_reg[1]_0\
    );
\axi_rdata[18]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"581A"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \hour_reg[4]_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0290"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(1),
      O => \hour_reg[4]_1\
    );
\axi_rdata[20]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"39BD"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \hour_reg[4]_2\
    );
\axi_rdata[21]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(2),
      O => \hour_reg[4]_3\
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18
     port map (
      AR(0) => AR(0),
      ff_cur_reg_0 => ff_cur_reg,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
\hour[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808FB08FB080808"
    )
        port map (
      I0 => \hour_reg[4]_4\(0),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \^hour_reg[3]_0\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => p_1_in(1)
    );
\hour[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8B8B8888888"
    )
        port map (
      I0 => \hour_reg[4]_4\(1),
      I1 => \hour_reg[2]_0\,
      I2 => \^hour_reg[3]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => p_1_in(2)
    );
\hour[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1555FFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(4),
      O => \^hour_reg[3]_0\
    );
\hour[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FB08FB0808"
    )
        port map (
      I0 => \hour_reg[4]_4\(2),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \^q\(4),
      I4 => \hour[4]_i_3__0_n_0\,
      I5 => \^q\(3),
      O => p_1_in(3)
    );
\hour[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808FBFB080808"
    )
        port map (
      I0 => \hour_reg[4]_4\(3),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \hour[4]_i_3__0_n_0\,
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => p_1_in(4)
    );
\hour[4]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \hour[4]_i_3__0_n_0\
    );
\hour_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => \^q\(0)
    );
\hour_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_1_in(1),
      Q => \^q\(1)
    );
\hour_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_1_in(2),
      Q => \^q\(2)
    );
\hour_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_1_in(3),
      Q => \^q\(3)
    );
\hour_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => p_1_in(4),
      Q => \^q\(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    set_min10 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bcd10_reg[2]_0\ : in STD_LOGIC;
    \bcd1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[14]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata_reg[14]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata[8]_i_2_0\ : in STD_LOGIC;
    \bcd10_reg[2]_1\ : in STD_LOGIC;
    \axi_rdata[14]_i_2_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \bcd10_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \bcd10_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \bcd10[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_2__2_n_0\ : STD_LOGIC;
  signal \bcd1[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \bcd1[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd1[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \bcd1[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \^set_min10\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  set_min10(2 downto 0) <= \^set_min10\(2 downto 0);
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(2),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(2),
      I3 => sel0(1),
      I4 => \axi_rdata[10]_i_4_n_0\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(2),
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(2),
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(3),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(3),
      I3 => sel0(1),
      I4 => \axi_rdata[11]_i_4_n_0\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(3),
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(3),
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(4),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(4),
      I3 => sel0(1),
      I4 => \axi_rdata[12]_i_4_n_0\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_min10\(0),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd10_reg[0]_0\,
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(4),
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(5),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(5),
      I3 => sel0(1),
      I4 => \axi_rdata[13]_i_4_n_0\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_min10\(1),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd10_reg[1]_0\,
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(5),
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(6),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(6),
      I3 => sel0(1),
      I4 => \axi_rdata[14]_i_4_n_0\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_min10\(2),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd10_reg[2]_1\,
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(6),
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(0),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(0),
      I3 => sel0(1),
      I4 => \axi_rdata[8]_i_4_n_0\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(0),
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(0),
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[14]_0\(1),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[14]_1\(1),
      I3 => sel0(1),
      I4 => \axi_rdata[9]_i_4_n_0\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axi_rdata[8]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(1),
      I3 => sel0(0),
      I4 => \axi_rdata[14]_i_2_0\(1),
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata_reg[10]\,
      O => D(2),
      S => sel0(2)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\,
      O => D(3),
      S => sel0(2)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata_reg[12]\,
      O => D(4),
      S => sel0(2)
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata_reg[13]\,
      O => D(5),
      S => sel0(2)
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata_reg[14]\,
      O => D(6),
      S => sel0(2)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata_reg[8]\,
      O => D(0),
      S => sel0(2)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[9]\,
      O => D(1),
      S => sel0(2)
    );
\bcd10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8BBB0000"
    )
        port map (
      I0 => \bcd10_reg[0]_0\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_min10\(2),
      I3 => \^set_min10\(1),
      I4 => \bcd10[2]_i_2__2_n_0\,
      I5 => \^set_min10\(0),
      O => \bcd10[0]_i_1_n_0\
    );
\bcd10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF8B880000"
    )
        port map (
      I0 => \bcd10_reg[1]_0\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_min10\(2),
      I3 => \^set_min10\(0),
      I4 => \bcd10[2]_i_2__2_n_0\,
      I5 => \^set_min10\(1),
      O => \bcd10[1]_i_1_n_0\
    );
\bcd10[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFFB8880000"
    )
        port map (
      I0 => \bcd10_reg[2]_1\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_min10\(0),
      I3 => \^set_min10\(1),
      I4 => \bcd10[2]_i_2__2_n_0\,
      I5 => \^set_min10\(2),
      O => \bcd10[2]_i_1_n_0\
    );
\bcd10[2]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => E(0),
      I1 => \^q\(3),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \bcd10_reg[2]_0\,
      O => \bcd10[2]_i_2__2_n_0\
    );
\bcd10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[0]_i_1_n_0\,
      Q => \^set_min10\(0)
    );
\bcd10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[1]_i_1_n_0\,
      Q => \^set_min10\(1)
    );
\bcd10_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[2]_i_1_n_0\,
      Q => \^set_min10\(2)
    );
\bcd1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B8888BBBB"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(0),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[0]_i_1__1_n_0\
    );
\bcd1[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FBFB08"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(1),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[1]_i_1__0_n_0\
    );
\bcd1[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(2),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[2]_i_1__1_n_0\
    );
\bcd1[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BB8888888"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(3),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[3]_i_2__1_n_0\
    );
\bcd1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[0]_i_1__1_n_0\,
      Q => \^q\(0)
    );
\bcd1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[1]_i_1__0_n_0\,
      Q => \^q\(1)
    );
\bcd1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[2]_i_1__1_n_0\,
      Q => \^q\(2)
    );
\bcd1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[3]_i_2__1_n_0\,
      Q => \^q\(3)
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15
     port map (
      AR(0) => AR(0),
      btn_min => btn_min,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \bcd1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bcd10_reg[0]_0\ : out STD_LOGIC;
    \bcd10_reg[1]_0\ : out STD_LOGIC;
    \bcd10_reg[2]_0\ : out STD_LOGIC;
    clk_min : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bcd10_reg[2]_1\ : in STD_LOGIC;
    p_0_in_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    set_min10 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5 : entity is "loadable_counter_bcd_60";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5 is
  signal \bcd10[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_2_n_0\ : STD_LOGIC;
  signal \^bcd10_reg[0]_0\ : STD_LOGIC;
  signal \^bcd10_reg[1]_0\ : STD_LOGIC;
  signal \^bcd10_reg[2]_0\ : STD_LOGIC;
  signal \bcd1[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd1[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd1[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd1[3]_i_2_n_0\ : STD_LOGIC;
  signal \^bcd1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \bcd10_reg[0]_0\ <= \^bcd10_reg[0]_0\;
  \bcd10_reg[1]_0\ <= \^bcd10_reg[1]_0\;
  \bcd10_reg[2]_0\ <= \^bcd10_reg[2]_0\;
  \bcd1_reg[3]_0\(3 downto 0) <= \^bcd1_reg[3]_0\(3 downto 0);
\bcd10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8BBB0000"
    )
        port map (
      I0 => set_min10(0),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[2]_0\,
      I3 => \^bcd10_reg[1]_0\,
      I4 => \bcd10[2]_i_2_n_0\,
      I5 => \^bcd10_reg[0]_0\,
      O => \bcd10[0]_i_1_n_0\
    );
\bcd10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF8B880000"
    )
        port map (
      I0 => set_min10(1),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[2]_0\,
      I3 => \^bcd10_reg[0]_0\,
      I4 => \bcd10[2]_i_2_n_0\,
      I5 => \^bcd10_reg[1]_0\,
      O => \bcd10[1]_i_1_n_0\
    );
\bcd10[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFFB8880000"
    )
        port map (
      I0 => set_min10(2),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[0]_0\,
      I3 => \^bcd10_reg[1]_0\,
      I4 => \bcd10[2]_i_2_n_0\,
      I5 => \^bcd10_reg[2]_0\,
      O => \bcd10[2]_i_1_n_0\
    );
\bcd10[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888880"
    )
        port map (
      I0 => E(0),
      I1 => \^bcd1_reg[3]_0\(3),
      I2 => \^bcd1_reg[3]_0\(0),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(2),
      I5 => \bcd10_reg[2]_1\,
      O => \bcd10[2]_i_2_n_0\
    );
\bcd10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[0]_i_1_n_0\,
      Q => \^bcd10_reg[0]_0\
    );
\bcd10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[1]_i_1_n_0\,
      Q => \^bcd10_reg[1]_0\
    );
\bcd10_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[2]_i_1_n_0\,
      Q => \^bcd10_reg[2]_0\
    );
\bcd1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B8888BBBB"
    )
        port map (
      I0 => Q(0),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[0]_i_1_n_0\
    );
\bcd1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FBFB08"
    )
        port map (
      I0 => Q(1),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(1),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[1]_i_1_n_0\
    );
\bcd1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => Q(2),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[2]_i_1_n_0\
    );
\bcd1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BB8888888"
    )
        port map (
      I0 => Q(3),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[3]_i_2_n_0\
    );
\bcd1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[0]_i_1_n_0\,
      Q => \^bcd1_reg[3]_0\(0)
    );
\bcd1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[1]_i_1_n_0\,
      Q => \^bcd1_reg[3]_0\(1)
    );
\bcd1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[2]_i_1_n_0\,
      Q => \^bcd1_reg[3]_0\(2)
    );
\bcd1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \bcd1[3]_i_2_n_0\,
      Q => \^bcd1_reg[3]_0\(3)
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14
     port map (
      AR(0) => AR(0),
      clk_min => clk_min,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    set_sec10 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bcd10_reg[2]_0\ : in STD_LOGIC;
    \bcd1_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata[0]_i_2_0\ : in STD_LOGIC;
    \bcd10_reg[2]_1\ : in STD_LOGIC;
    \axi_rdata[6]_i_2_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \bcd10_reg[1]_0\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \bcd10_reg[0]_0\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7 : entity is "loadable_counter_bcd_60";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \bcd10[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd1[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \bcd1[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \bcd1[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \bcd1[3]_i_2__2_n_0\ : STD_LOGIC;
  signal ed_clk_n_0 : STD_LOGIC;
  signal ed_clk_n_1 : STD_LOGIC;
  signal \^set_sec10\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  set_sec10(2 downto 0) <= \^set_sec10\(2 downto 0);
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(0),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(0),
      I3 => sel0(1),
      I4 => \axi_rdata[0]_i_4_n_0\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(0),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(0),
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(1),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(1),
      I3 => sel0(1),
      I4 => \axi_rdata[1]_i_4_n_0\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(1),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(1),
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(1),
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(2),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(2),
      I3 => sel0(1),
      I4 => \axi_rdata[2]_i_4_n_0\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(2),
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(2),
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(3),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(3),
      I3 => sel0(1),
      I4 => \axi_rdata[3]_i_4_n_0\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^q\(3),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd1_reg[3]_0\(3),
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(3),
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(4),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(4),
      I3 => sel0(1),
      I4 => \axi_rdata[4]_i_4_n_0\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_sec10\(0),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd10_reg[0]_0\,
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(4),
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(5),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(5),
      I3 => sel0(1),
      I4 => \axi_rdata[5]_i_4_n_0\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_sec10\(1),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd10_reg[1]_0\,
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(5),
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \axi_rdata_reg[6]_0\(6),
      I1 => sel0(0),
      I2 => \axi_rdata_reg[6]_1\(6),
      I3 => sel0(1),
      I4 => \axi_rdata[6]_i_4_n_0\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \^set_sec10\(2),
      I1 => \axi_rdata[0]_i_2_0\,
      I2 => \bcd10_reg[2]_1\,
      I3 => sel0(0),
      I4 => \axi_rdata[6]_i_2_0\(6),
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\,
      O => D(0),
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      O => D(1),
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata_reg[2]\,
      O => D(2),
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[3]\,
      O => D(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata_reg[4]\,
      O => D(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[5]\,
      O => D(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[6]\,
      O => D(6),
      S => sel0(2)
    );
\bcd10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8BBB0000"
    )
        port map (
      I0 => \bcd10_reg[0]_0\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_sec10\(2),
      I3 => \^set_sec10\(1),
      I4 => ed_clk_n_0,
      I5 => \^set_sec10\(0),
      O => \bcd10[0]_i_1_n_0\
    );
\bcd10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF8B880000"
    )
        port map (
      I0 => \bcd10_reg[1]_0\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_sec10\(2),
      I3 => \^set_sec10\(0),
      I4 => ed_clk_n_0,
      I5 => \^set_sec10\(1),
      O => \bcd10[1]_i_1_n_0\
    );
\bcd10[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFFB8880000"
    )
        port map (
      I0 => \bcd10_reg[2]_1\,
      I1 => \bcd10_reg[2]_0\,
      I2 => \^set_sec10\(0),
      I3 => \^set_sec10\(1),
      I4 => ed_clk_n_0,
      I5 => \^set_sec10\(2),
      O => \bcd10[2]_i_1_n_0\
    );
\bcd10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[0]_i_1_n_0\,
      Q => \^set_sec10\(0)
    );
\bcd10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[1]_i_1_n_0\,
      Q => \^set_sec10\(1)
    );
\bcd10_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[2]_i_1_n_0\,
      Q => \^set_sec10\(2)
    );
\bcd1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B8888BBBB"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(0),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[0]_i_1__2_n_0\
    );
\bcd1[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808080808FBFB08"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(1),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[1]_i_1__1_n_0\
    );
\bcd1[2]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(2),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[2]_i_1__2_n_0\
    );
\bcd1[3]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BB8888888"
    )
        port map (
      I0 => \bcd1_reg[3]_0\(3),
      I1 => \bcd10_reg[2]_0\,
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \^q\(3),
      O => \bcd1[3]_i_2__2_n_0\
    );
\bcd1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[0]_i_1__2_n_0\,
      Q => \^q\(0)
    );
\bcd1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[1]_i_1__1_n_0\,
      Q => \^q\(1)
    );
\bcd1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[2]_i_1__2_n_0\,
      Q => \^q\(2)
    );
\bcd1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[3]_i_2__2_n_0\,
      Q => \^q\(3)
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11
     port map (
      AR(0) => AR(0),
      E(0) => ed_clk_n_1,
      Q(3 downto 0) => \^q\(3 downto 0),
      \bcd10_reg[0]\ => \bcd10_reg[2]_0\,
      \bcd1_reg[3]\ => ed_clk_n_0,
      btn_sec => btn_sec,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8 is
  port (
    \bcd1_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bcd10_reg[0]_0\ : out STD_LOGIC;
    \bcd10_reg[1]_0\ : out STD_LOGIC;
    \bcd10_reg[2]_0\ : out STD_LOGIC;
    clk_sec : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bcd10_reg[2]_1\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    set_sec10 : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8 : entity is "loadable_counter_bcd_60";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8 is
  signal \bcd10[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd10[2]_i_3_n_0\ : STD_LOGIC;
  signal \^bcd10_reg[0]_0\ : STD_LOGIC;
  signal \^bcd10_reg[1]_0\ : STD_LOGIC;
  signal \^bcd10_reg[2]_0\ : STD_LOGIC;
  signal \bcd1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd1[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \bcd1[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bcd1[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \^bcd1_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ed_clk_n_0 : STD_LOGIC;
  signal ed_clk_n_1 : STD_LOGIC;
begin
  \bcd10_reg[0]_0\ <= \^bcd10_reg[0]_0\;
  \bcd10_reg[1]_0\ <= \^bcd10_reg[1]_0\;
  \bcd10_reg[2]_0\ <= \^bcd10_reg[2]_0\;
  \bcd1_reg[3]_0\(3 downto 0) <= \^bcd1_reg[3]_0\(3 downto 0);
\bcd10[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888FFFF8BBB0000"
    )
        port map (
      I0 => set_sec10(0),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[2]_0\,
      I3 => \^bcd10_reg[1]_0\,
      I4 => ed_clk_n_0,
      I5 => \^bcd10_reg[0]_0\,
      O => \bcd10[0]_i_1_n_0\
    );
\bcd10[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFF8B880000"
    )
        port map (
      I0 => set_sec10(1),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[2]_0\,
      I3 => \^bcd10_reg[0]_0\,
      I4 => ed_clk_n_0,
      I5 => \^bcd10_reg[1]_0\,
      O => \bcd10[1]_i_1_n_0\
    );
\bcd10[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BFFFFB8880000"
    )
        port map (
      I0 => set_sec10(2),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd10_reg[0]_0\,
      I3 => \^bcd10_reg[1]_0\,
      I4 => ed_clk_n_0,
      I5 => \^bcd10_reg[2]_0\,
      O => \bcd10[2]_i_1_n_0\
    );
\bcd10[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^bcd1_reg[3]_0\(3),
      I1 => \^bcd1_reg[3]_0\(0),
      I2 => \^bcd1_reg[3]_0\(1),
      I3 => \^bcd1_reg[3]_0\(2),
      O => \bcd10[2]_i_3_n_0\
    );
\bcd10_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[0]_i_1_n_0\,
      Q => \^bcd10_reg[0]_0\
    );
\bcd10_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[1]_i_1_n_0\,
      Q => \^bcd10_reg[1]_0\
    );
\bcd10_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \bcd10[2]_i_1_n_0\,
      Q => \^bcd10_reg[2]_0\
    );
\bcd1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888B8888BBBB"
    )
        port map (
      I0 => Q(0),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[0]_i_1__0_n_0\
    );
\bcd1[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888B8B88"
    )
        port map (
      I0 => Q(1),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(3),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      O => \bcd1[1]_i_1__2_n_0\
    );
\bcd1[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888BB8B8B8"
    )
        port map (
      I0 => Q(2),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[2]_i_1__0_n_0\
    );
\bcd1[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888BB8888888"
    )
        port map (
      I0 => Q(3),
      I1 => \bcd10_reg[2]_1\,
      I2 => \^bcd1_reg[3]_0\(2),
      I3 => \^bcd1_reg[3]_0\(1),
      I4 => \^bcd1_reg[3]_0\(0),
      I5 => \^bcd1_reg[3]_0\(3),
      O => \bcd1[3]_i_2__0_n_0\
    );
\bcd1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[0]_i_1__0_n_0\,
      Q => \^bcd1_reg[3]_0\(0)
    );
\bcd1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[1]_i_1__2_n_0\,
      Q => \^bcd1_reg[3]_0\(1)
    );
\bcd1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[2]_i_1__0_n_0\,
      Q => \^bcd1_reg[3]_0\(2)
    );
\bcd1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clk_n_1,
      CLR => AR(0),
      D => \bcd1[3]_i_2__0_n_0\,
      Q => \^bcd1_reg[3]_0\(3)
    );
ed_clk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10
     port map (
      AR(0) => AR(0),
      E(0) => ed_clk_n_1,
      \bcd10_reg[0]\ => \bcd10[2]_i_3_n_0\,
      clk_sec => clk_sec,
      ff_cur_reg_0 => ed_clk_n_0,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    q_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 19 downto 0 );
    q_reg_0 : in STD_LOGIC;
    \axi_rdata_reg[21]\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[21]_0\ : in STD_LOGIC;
    \axi_rdata_reg[19]\ : in STD_LOGIC;
    \axi_rdata_reg[19]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[19]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \axi_rdata_reg[17]\ : in STD_LOGIC;
    \axi_rdata_reg[17]_0\ : in STD_LOGIC;
    \axi_rdata_reg[18]\ : in STD_LOGIC;
    \axi_rdata_reg[18]_0\ : in STD_LOGIC;
    \axi_rdata_reg[20]\ : in STD_LOGIC;
    \axi_rdata_reg[20]_0\ : in STD_LOGIC;
    \axi_rdata_reg[16]\ : in STD_LOGIC;
    \axi_rdata_reg[14]\ : in STD_LOGIC;
    \axi_rdata_reg[13]\ : in STD_LOGIC;
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set is
  signal btn0_n_2 : STD_LOGIC;
  signal btn3_n_0 : STD_LOGIC;
  signal btn_min : STD_LOGIC;
  signal btn_sec : STD_LOGIC;
  signal clk_min : STD_LOGIC;
  signal clk_sec : STD_LOGIC;
  signal \ed/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ed/p_0_in_4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ed_clk/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ed_clk/p_0_in_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ed_clk/p_0_in_2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ed_clk/p_0_in_3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ed_source_n_3 : STD_LOGIC;
  signal ed_source_n_4 : STD_LOGIC;
  signal ed_source_n_5 : STD_LOGIC;
  signal ed_source_n_6 : STD_LOGIC;
  signal ed_source_n_7 : STD_LOGIC;
  signal ed_source_n_8 : STD_LOGIC;
  signal ed_source_n_9 : STD_LOGIC;
  signal hour_clock_n_0 : STD_LOGIC;
  signal hour_set_n_13 : STD_LOGIC;
  signal hour_set_n_2 : STD_LOGIC;
  signal hour_set_n_3 : STD_LOGIC;
  signal hour_set_n_4 : STD_LOGIC;
  signal hour_set_n_5 : STD_LOGIC;
  signal hour_set_n_6 : STD_LOGIC;
  signal hour_set_n_7 : STD_LOGIC;
  signal hout_watch_n_10 : STD_LOGIC;
  signal hout_watch_n_11 : STD_LOGIC;
  signal hout_watch_n_12 : STD_LOGIC;
  signal hout_watch_n_2 : STD_LOGIC;
  signal hout_watch_n_3 : STD_LOGIC;
  signal hout_watch_n_4 : STD_LOGIC;
  signal hout_watch_n_5 : STD_LOGIC;
  signal hout_watch_n_6 : STD_LOGIC;
  signal hout_watch_n_7 : STD_LOGIC;
  signal hout_watch_n_8 : STD_LOGIC;
  signal hout_watch_n_9 : STD_LOGIC;
  signal inc_min : STD_LOGIC;
  signal inc_sec : STD_LOGIC;
  signal min_watch_n_2 : STD_LOGIC;
  signal min_watch_n_3 : STD_LOGIC;
  signal min_watch_n_4 : STD_LOGIC;
  signal min_watch_n_5 : STD_LOGIC;
  signal min_watch_n_6 : STD_LOGIC;
  signal min_watch_n_7 : STD_LOGIC;
  signal min_watch_n_8 : STD_LOGIC;
  signal msec_clock_n_0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q_reg\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal sec_watch_n_0 : STD_LOGIC;
  signal sec_watch_n_1 : STD_LOGIC;
  signal sec_watch_n_2 : STD_LOGIC;
  signal sec_watch_n_3 : STD_LOGIC;
  signal sec_watch_n_4 : STD_LOGIC;
  signal sec_watch_n_5 : STD_LOGIC;
  signal sec_watch_n_6 : STD_LOGIC;
  signal set_min1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal set_min10 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal set_sec1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal set_sec10 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal usec_clock_n_0 : STD_LOGIC;
begin
  q_reg <= \^q_reg\;
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
btn0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(0) => Q(0),
      ff_old_reg => btn0_n_2,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
btn1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(0) => Q(1),
      btn_sec => btn_sec,
      debounced_btn_reg_0 => btn0_n_2,
      ff_cur_reg => \^q_reg\,
      inc_sec => inc_sec,
      p_0_in(1 downto 0) => \ed/p_0_in_4\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
btn2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(0) => Q(2),
      btn_min => btn_min,
      debounced_btn_reg_0 => btn0_n_2,
      ff_cur_reg => \^q_reg\,
      inc_min => inc_min,
      p_0_in(1 downto 0) => \ed/p_0_in\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
btn3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(0) => Q(3),
      debounced_btn_reg_0 => btn0_n_2,
      ff_cur_reg => btn3_n_0,
      s00_axi_aclk => s00_axi_aclk
    );
ed_source: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(0) => p_1_in(0),
      E(0) => ed_source_n_3,
      Q(0) => hour_set_n_7,
      ff_cur_reg_0(0) => ed_source_n_4,
      ff_cur_reg_1 => ed_source_n_9,
      ff_cur_reg_2 => \^q_reg\,
      ff_old_reg_0 => ed_source_n_5,
      ff_old_reg_1(0) => ed_source_n_7,
      ff_old_reg_2(0) => ed_source_n_8,
      \hour_reg[0]\(0) => ed_source_n_6,
      \hour_reg[0]_0\ => hout_watch_n_2,
      \hour_reg[0]_1\(0) => hout_watch_n_7,
      \hour_reg[0]_2\ => hour_set_n_2,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      p_0_in_0(1 downto 0) => \ed_clk/p_0_in_1\(1 downto 0),
      p_0_in_1(1 downto 0) => \ed_clk/p_0_in_3\(1 downto 0),
      p_0_in_2(1 downto 0) => \ed_clk/p_0_in\(1 downto 0),
      p_0_in_3(1 downto 0) => \ed_clk/p_0_in_2\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
hour_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      ff_old_reg => hour_clock_n_0,
      inc_min => inc_min,
      s00_axi_aclk => s00_axi_aclk
    );
hour_set: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(4 downto 3) => D(19 downto 18),
      D(2 downto 0) => D(16 downto 14),
      E(0) => ed_source_n_7,
      Q(4) => hour_set_n_3,
      Q(3) => hour_set_n_4,
      Q(2) => hour_set_n_5,
      Q(1) => hour_set_n_6,
      Q(0) => hour_set_n_7,
      \axi_rdata_reg[16]\ => \axi_rdata_reg[16]\,
      \axi_rdata_reg[16]_0\(0) => \axi_rdata_reg[19]_0\(14),
      \axi_rdata_reg[16]_1\(0) => \axi_rdata_reg[19]_1\(14),
      \axi_rdata_reg[17]\ => \axi_rdata_reg[17]\,
      \axi_rdata_reg[17]_0\ => \axi_rdata_reg[17]_0\,
      \axi_rdata_reg[17]_1\ => hout_watch_n_10,
      \axi_rdata_reg[18]\ => \axi_rdata_reg[18]\,
      \axi_rdata_reg[18]_0\ => \axi_rdata_reg[18]_0\,
      \axi_rdata_reg[18]_1\ => hout_watch_n_8,
      \axi_rdata_reg[20]\ => \axi_rdata_reg[20]\,
      \axi_rdata_reg[20]_0\ => \axi_rdata_reg[20]_0\,
      \axi_rdata_reg[20]_1\ => hout_watch_n_11,
      \axi_rdata_reg[21]\ => \axi_rdata_reg[21]\,
      \axi_rdata_reg[21]_0\ => \axi_rdata_reg[21]_0\,
      \axi_rdata_reg[21]_1\ => \^q_reg\,
      \axi_rdata_reg[21]_2\ => hout_watch_n_12,
      \axi_rdata_reg[21]_3\(4 downto 3) => Q(19 downto 18),
      \axi_rdata_reg[21]_3\(2 downto 0) => Q(16 downto 14),
      ff_cur_reg => btn3_n_0,
      \hour_reg[0]_0\(0) => ed_source_n_6,
      \hour_reg[2]_0\ => ed_source_n_9,
      \hour_reg[3]_0\ => hour_set_n_2,
      \hour_reg[4]_0\ => hour_set_n_13,
      \hour_reg[4]_1\(4) => hout_watch_n_3,
      \hour_reg[4]_1\(3) => hout_watch_n_4,
      \hour_reg[4]_1\(2) => hout_watch_n_5,
      \hour_reg[4]_1\(1) => hout_watch_n_6,
      \hour_reg[4]_1\(0) => hout_watch_n_7,
      p_0_in(1 downto 0) => \ed_clk/p_0_in\(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
hout_watch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(0) => p_1_in(0),
      E(0) => ed_source_n_3,
      Q(4) => hout_watch_n_3,
      Q(3) => hout_watch_n_4,
      Q(2) => hout_watch_n_5,
      Q(1) => hout_watch_n_6,
      Q(0) => hout_watch_n_7,
      ff_cur_reg => hour_clock_n_0,
      \hour_reg[1]_0\ => hout_watch_n_10,
      \hour_reg[2]_0\ => ed_source_n_5,
      \hour_reg[3]_0\ => hout_watch_n_2,
      \hour_reg[4]_0\ => hout_watch_n_8,
      \hour_reg[4]_1\ => hout_watch_n_9,
      \hour_reg[4]_2\ => hout_watch_n_11,
      \hour_reg[4]_3\ => hout_watch_n_12,
      \hour_reg[4]_4\(3) => hour_set_n_3,
      \hour_reg[4]_4\(2) => hour_set_n_4,
      \hour_reg[4]_4\(1) => hour_set_n_5,
      \hour_reg[4]_4\(0) => hour_set_n_6,
      p_0_in(1 downto 0) => \ed_clk/p_0_in_1\(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
min_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      clk_min => clk_min,
      inc_sec => inc_sec,
      p_0_in(1 downto 0) => \ed/p_0_in\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
min_set: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(6 downto 0) => D(13 downto 7),
      E(0) => ed_source_n_8,
      Q(3 downto 0) => set_min1(3 downto 0),
      \axi_rdata[14]_i_2_0\(6 downto 0) => Q(13 downto 7),
      \axi_rdata[8]_i_2_0\ => \^q_reg\,
      \axi_rdata_reg[10]\ => \axi_rdata_reg[10]\,
      \axi_rdata_reg[11]\ => \axi_rdata_reg[11]\,
      \axi_rdata_reg[12]\ => \axi_rdata_reg[12]\,
      \axi_rdata_reg[13]\ => \axi_rdata_reg[13]\,
      \axi_rdata_reg[14]\ => \axi_rdata_reg[14]\,
      \axi_rdata_reg[14]_0\(6 downto 0) => \axi_rdata_reg[19]_0\(13 downto 7),
      \axi_rdata_reg[14]_1\(6 downto 0) => \axi_rdata_reg[19]_1\(13 downto 7),
      \axi_rdata_reg[8]\ => \axi_rdata_reg[8]\,
      \axi_rdata_reg[9]\ => \axi_rdata_reg[9]\,
      \bcd10_reg[0]_0\ => min_watch_n_6,
      \bcd10_reg[1]_0\ => min_watch_n_7,
      \bcd10_reg[2]_0\ => ed_source_n_9,
      \bcd10_reg[2]_1\ => min_watch_n_8,
      \bcd1_reg[3]_0\(3) => min_watch_n_2,
      \bcd1_reg[3]_0\(2) => min_watch_n_3,
      \bcd1_reg[3]_0\(1) => min_watch_n_4,
      \bcd1_reg[3]_0\(0) => min_watch_n_5,
      btn_min => btn_min,
      p_0_in(1 downto 0) => \ed_clk/p_0_in_2\(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0),
      set_min10(2 downto 0) => set_min10(2 downto 0)
    );
min_watch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      E(0) => ed_source_n_4,
      Q(3 downto 0) => set_min1(3 downto 0),
      \bcd10_reg[0]_0\ => min_watch_n_6,
      \bcd10_reg[1]_0\ => min_watch_n_7,
      \bcd10_reg[2]_0\ => min_watch_n_8,
      \bcd10_reg[2]_1\ => ed_source_n_5,
      \bcd1_reg[3]_0\(3) => min_watch_n_2,
      \bcd1_reg[3]_0\(2) => min_watch_n_3,
      \bcd1_reg[3]_0\(1) => min_watch_n_4,
      \bcd1_reg[3]_0\(0) => min_watch_n_5,
      clk_min => clk_min,
      p_0_in(1 downto 0) => \ed_clk/p_0_in_3\(1 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      set_min10(2 downto 0) => set_min10(2 downto 0)
    );
msec_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      E(0) => msec_clock_n_0,
      \cnt_clksource_reg[0]_0\(0) => usec_clock_n_0,
      s00_axi_aclk => s00_axi_aclk
    );
sec_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      E(0) => msec_clock_n_0,
      clk_sec => clk_sec,
      p_0_in(1 downto 0) => \ed/p_0_in_4\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
sec_set: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(6 downto 0) => D(6 downto 0),
      Q(3 downto 0) => set_sec1(3 downto 0),
      \axi_rdata[0]_i_2_0\ => \^q_reg\,
      \axi_rdata[6]_i_2_0\(6 downto 0) => Q(6 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata_reg[0]\,
      \axi_rdata_reg[1]\ => \axi_rdata_reg[1]\,
      \axi_rdata_reg[2]\ => \axi_rdata_reg[2]\,
      \axi_rdata_reg[3]\ => \axi_rdata_reg[3]\,
      \axi_rdata_reg[4]\ => \axi_rdata_reg[4]\,
      \axi_rdata_reg[5]\ => \axi_rdata_reg[5]\,
      \axi_rdata_reg[6]\ => \axi_rdata_reg[6]\,
      \axi_rdata_reg[6]_0\(6 downto 0) => \axi_rdata_reg[19]_0\(6 downto 0),
      \axi_rdata_reg[6]_1\(6 downto 0) => \axi_rdata_reg[19]_1\(6 downto 0),
      \bcd10_reg[0]_0\ => sec_watch_n_4,
      \bcd10_reg[1]_0\ => sec_watch_n_5,
      \bcd10_reg[2]_0\ => ed_source_n_9,
      \bcd10_reg[2]_1\ => sec_watch_n_6,
      \bcd1_reg[3]_0\(3) => sec_watch_n_0,
      \bcd1_reg[3]_0\(2) => sec_watch_n_1,
      \bcd1_reg[3]_0\(1) => sec_watch_n_2,
      \bcd1_reg[3]_0\(0) => sec_watch_n_3,
      btn_sec => btn_sec,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0),
      set_sec10(2 downto 0) => set_sec10(2 downto 0)
    );
sec_watch: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      Q(3 downto 0) => set_sec1(3 downto 0),
      \bcd10_reg[0]_0\ => sec_watch_n_4,
      \bcd10_reg[1]_0\ => sec_watch_n_5,
      \bcd10_reg[2]_0\ => sec_watch_n_6,
      \bcd10_reg[2]_1\ => ed_source_n_5,
      \bcd1_reg[3]_0\(3) => sec_watch_n_0,
      \bcd1_reg[3]_0\(2) => sec_watch_n_1,
      \bcd1_reg[3]_0\(1) => sec_watch_n_2,
      \bcd1_reg[3]_0\(0) => sec_watch_n_3,
      clk_sec => clk_sec,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      set_sec10(2 downto 0) => set_sec10(2 downto 0)
    );
t_mode: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      D(0) => D(17),
      Q(0) => Q(17),
      \axi_rdata[19]_i_2_0\ => hout_watch_n_9,
      \axi_rdata[19]_i_2_1\ => hour_set_n_13,
      \axi_rdata_reg[19]\ => \axi_rdata_reg[19]\,
      \axi_rdata_reg[19]_0\(0) => \axi_rdata_reg[19]_0\(15),
      \axi_rdata_reg[19]_1\(0) => \axi_rdata_reg[19]_1\(15),
      q_reg_0 => \^q_reg\,
      q_reg_1 => q_reg_0,
      s00_axi_aclk => s00_axi_aclk,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
usec_clock: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100
     port map (
      AR(0) => \^s00_axi_aresetn_0\,
      ff_old_reg(0) => usec_clock_n_0,
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    set_watch : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    aw_en_reg_0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    q_reg : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    aw_en_reg_1 : in STD_LOGIC;
    axi_rvalid_reg_0 : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI is
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
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal nolabel_line446_n_0 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \slv_reg0__0\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair18";
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
      S => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => nolabel_line446_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in_0(1),
      R => nolabel_line446_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in_0(2),
      R => nolabel_line446_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
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
      R => nolabel_line446_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => nolabel_line446_n_0
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
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(15),
      I4 => sel0(0),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[16]_i_3_n_0\
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
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => slv_reg3(17),
      I3 => sel0(0),
      I4 => slv_reg2(17),
      O => \axi_rdata[17]_i_3_n_0\
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
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEAAA"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => slv_reg3(18),
      I3 => sel0(0),
      I4 => slv_reg2(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[19]_i_3_n_0\
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
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => sel0(0),
      I2 => slv_reg2(20),
      O => \axi_rdata[20]_i_3_n_0\
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
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => sel0(0),
      I2 => slv_reg2(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => sel0(2),
      I1 => \axi_rdata[22]_i_2_n_0\,
      I2 => \axi_rdata[22]_i_3_n_0\,
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
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003F3F5F5"
    )
        port map (
      I0 => \slv_reg0__0\(22),
      I1 => slv_reg2(22),
      I2 => sel0(0),
      I3 => slv_reg3(22),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(23),
      I4 => sel0(0),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(24),
      I4 => sel0(0),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(25),
      I4 => sel0(0),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(26),
      I4 => sel0(0),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(27),
      I4 => sel0(0),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(28),
      I4 => sel0(0),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(29),
      I4 => sel0(0),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[29]_i_3_n_0\
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
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(30),
      I4 => sel0(0),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(31),
      I4 => sel0(0),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[31]_i_3_n_0\
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
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => \slv_reg0__0\(7),
      I4 => sel0(0),
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
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
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
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      O => reg_data_out(15),
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      O => reg_data_out(23),
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      O => reg_data_out(24),
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      O => reg_data_out(25),
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      O => reg_data_out(26),
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      O => reg_data_out(27),
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      O => reg_data_out(28),
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      O => reg_data_out(29),
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      O => reg_data_out(30),
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_3_n_0\,
      O => reg_data_out(31),
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => nolabel_line446_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_0,
      Q => \^s00_axi_rvalid\,
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
nolabel_line446: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set
     port map (
      D(19 downto 14) => reg_data_out(21 downto 16),
      D(13 downto 7) => reg_data_out(14 downto 8),
      D(6 downto 0) => reg_data_out(6 downto 0),
      Q(19 downto 14) => \slv_reg0__0\(21 downto 16),
      Q(13 downto 7) => \slv_reg0__0\(14 downto 8),
      Q(6 downto 4) => \slv_reg0__0\(6 downto 4),
      Q(3 downto 0) => slv_reg0(3 downto 0),
      \axi_rdata_reg[0]\ => \axi_rdata[0]_i_3_n_0\,
      \axi_rdata_reg[10]\ => \axi_rdata[10]_i_3_n_0\,
      \axi_rdata_reg[11]\ => \axi_rdata[11]_i_3_n_0\,
      \axi_rdata_reg[12]\ => \axi_rdata[12]_i_3_n_0\,
      \axi_rdata_reg[13]\ => \axi_rdata[13]_i_3_n_0\,
      \axi_rdata_reg[14]\ => \axi_rdata[14]_i_3_n_0\,
      \axi_rdata_reg[16]\ => \axi_rdata[16]_i_3_n_0\,
      \axi_rdata_reg[17]\ => \axi_rdata[17]_i_2_n_0\,
      \axi_rdata_reg[17]_0\ => \axi_rdata[17]_i_3_n_0\,
      \axi_rdata_reg[18]\ => \axi_rdata[18]_i_2_n_0\,
      \axi_rdata_reg[18]_0\ => \axi_rdata[18]_i_3_n_0\,
      \axi_rdata_reg[19]\ => \axi_rdata[19]_i_3_n_0\,
      \axi_rdata_reg[19]_0\(15) => slv_reg3(19),
      \axi_rdata_reg[19]_0\(14) => slv_reg3(16),
      \axi_rdata_reg[19]_0\(13 downto 7) => slv_reg3(14 downto 8),
      \axi_rdata_reg[19]_0\(6 downto 0) => slv_reg3(6 downto 0),
      \axi_rdata_reg[19]_1\(15) => slv_reg2(19),
      \axi_rdata_reg[19]_1\(14) => slv_reg2(16),
      \axi_rdata_reg[19]_1\(13 downto 7) => slv_reg2(14 downto 8),
      \axi_rdata_reg[19]_1\(6 downto 0) => slv_reg2(6 downto 0),
      \axi_rdata_reg[1]\ => \axi_rdata[1]_i_3_n_0\,
      \axi_rdata_reg[20]\ => \axi_rdata[20]_i_2_n_0\,
      \axi_rdata_reg[20]_0\ => \axi_rdata[20]_i_3_n_0\,
      \axi_rdata_reg[21]\ => \axi_rdata[21]_i_2_n_0\,
      \axi_rdata_reg[21]_0\ => \axi_rdata[21]_i_3_n_0\,
      \axi_rdata_reg[2]\ => \axi_rdata[2]_i_3_n_0\,
      \axi_rdata_reg[3]\ => \axi_rdata[3]_i_3_n_0\,
      \axi_rdata_reg[4]\ => \axi_rdata[4]_i_3_n_0\,
      \axi_rdata_reg[5]\ => \axi_rdata[5]_i_3_n_0\,
      \axi_rdata_reg[6]\ => \axi_rdata[6]_i_3_n_0\,
      \axi_rdata_reg[8]\ => \axi_rdata[8]_i_3_n_0\,
      \axi_rdata_reg[9]\ => \axi_rdata[9]_i_3_n_0\,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      q_reg => set_watch,
      q_reg_0 => q_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => nolabel_line446_n_0,
      sel0(2 downto 0) => sel0(2 downto 0)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
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
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(2),
      I4 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0__0\(10),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0__0\(11),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0__0\(12),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0__0\(13),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0__0\(14),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0__0\(15),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0__0\(16),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0__0\(17),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0__0\(18),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0__0\(19),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0__0\(20),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0__0\(21),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0__0\(22),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0__0\(23),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0__0\(24),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0__0\(25),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0__0\(26),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0__0\(27),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0__0\(28),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0__0\(29),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0__0\(30),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0__0\(31),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0__0\(4),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0__0\(5),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0__0\(6),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0__0\(7),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0__0\(8),
      R => nolabel_line446_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0__0\(9),
      R => nolabel_line446_n_0
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
      O => \slv_reg2[15]_i_1_n_0\
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
      O => \slv_reg2[23]_i_1_n_0\
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
      O => \slv_reg2[31]_i_1_n_0\
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
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => nolabel_line446_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => nolabel_line446_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => nolabel_line446_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => nolabel_line446_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => nolabel_line446_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => nolabel_line446_n_0
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
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => nolabel_line446_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => nolabel_line446_n_0
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0 is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0 is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal myip_clock_timer_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal \nolabel_line446/btn0/ed1/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \nolabel_line446/set_watch\ : STD_LOGIC;
  signal q_i_1_n_0 : STD_LOGIC;
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
      I1 => myip_clock_timer_v1_0_S00_AXI_inst_n_7,
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
myip_clock_timer_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI
     port map (
      aw_en_reg_0 => myip_clock_timer_v1_0_S00_AXI_inst_n_7,
      aw_en_reg_1 => aw_en_i_1_n_0,
      axi_arready_reg_0 => \^s_axi_arready\,
      axi_awready_reg_0 => \^s_axi_awready\,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => \^s_axi_wready\,
      p_0_in(1 downto 0) => \nolabel_line446/btn0/ed1/p_0_in\(1 downto 0),
      q_reg => q_i_1_n_0,
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
      set_watch => \nolabel_line446/set_watch\
    );
q_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \nolabel_line446/btn0/ed1/p_0_in\(0),
      I1 => \nolabel_line446/btn0/ed1/p_0_in\(1),
      I2 => \nolabel_line446/set_watch\,
      O => q_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Remo_cuckoo_myip_clock_timer_0_0,myip_clock_timer_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_clock_timer_v1_0,Vivado 2019.2";
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
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
