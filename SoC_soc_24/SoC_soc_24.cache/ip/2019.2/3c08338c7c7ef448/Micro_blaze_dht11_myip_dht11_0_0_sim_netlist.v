// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri Oct 25 10:49:52 2024
// Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Micro_blaze_dht11_myip_dht11_0_0_sim_netlist.v
// Design      : Micro_blaze_dht11_myip_dht11_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Micro_blaze_dht11_myip_dht11_0_0,myip_dht11_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_dht11_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (dht11_data,
    led_debug,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  inout dht11_data;
  output [15:0]led_debug;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire dht11_data;
  wire [15:0]led_debug;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0 inst
       (.Q(led_debug[5:0]),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .dht11_data(dht11_data),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100
   (s00_axi_aresetn_0,
    ff_old_reg,
    O,
    \count_usec_reg[7] ,
    \count_usec_reg[11] ,
    \count_usec_reg[15] ,
    \count_usec_reg[19] ,
    \count_usec_reg[21] ,
    s00_axi_aclk,
    s00_axi_aresetn,
    count_usec_reg_0_sp_1,
    count_usec_reg);
  output s00_axi_aresetn_0;
  output ff_old_reg;
  output [3:0]O;
  output [3:0]\count_usec_reg[7] ;
  output [3:0]\count_usec_reg[11] ;
  output [3:0]\count_usec_reg[15] ;
  output [3:0]\count_usec_reg[19] ;
  output [1:0]\count_usec_reg[21] ;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input count_usec_reg_0_sp_1;
  input [21:0]count_usec_reg;

  wire [3:0]O;
  wire \cnt_sysclk[4]_i_2_n_0 ;
  wire \cnt_sysclk[5]_i_1_n_0 ;
  wire \cnt_sysclk[6]_i_1_n_0 ;
  wire \cnt_sysclk[6]_i_2_n_0 ;
  wire [6:0]cnt_sysclk_reg;
  wire [21:0]count_usec_reg;
  wire [3:0]\count_usec_reg[11] ;
  wire [3:0]\count_usec_reg[15] ;
  wire [3:0]\count_usec_reg[19] ;
  wire [1:0]\count_usec_reg[21] ;
  wire [3:0]\count_usec_reg[7] ;
  wire count_usec_reg_0_sn_1;
  wire ff_old_reg;
  wire [4:0]p_0_in;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_sysclk[0]_i_1 
       (.I0(cnt_sysclk_reg[0]),
        .I1(\cnt_sysclk[4]_i_2_n_0 ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt_sysclk[1]_i_1 
       (.I0(cnt_sysclk_reg[1]),
        .I1(cnt_sysclk_reg[0]),
        .I2(\cnt_sysclk[4]_i_2_n_0 ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \cnt_sysclk[2]_i_1 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .I2(cnt_sysclk_reg[2]),
        .I3(\cnt_sysclk[4]_i_2_n_0 ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnt_sysclk[3]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[1]),
        .I2(cnt_sysclk_reg[0]),
        .I3(cnt_sysclk_reg[3]),
        .I4(\cnt_sysclk[4]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \cnt_sysclk[4]_i_1 
       (.I0(cnt_sysclk_reg[3]),
        .I1(cnt_sysclk_reg[0]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[2]),
        .I4(cnt_sysclk_reg[4]),
        .I5(\cnt_sysclk[4]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \cnt_sysclk[4]_i_2 
       (.I0(\cnt_sysclk[6]_i_2_n_0 ),
        .I1(cnt_sysclk_reg[4]),
        .I2(cnt_sysclk_reg[3]),
        .I3(cnt_sysclk_reg[2]),
        .I4(cnt_sysclk_reg[6]),
        .I5(cnt_sysclk_reg[5]),
        .O(\cnt_sysclk[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h15555557C0000000)) 
    \cnt_sysclk[5]_i_1 
       (.I0(cnt_sysclk_reg[6]),
        .I1(cnt_sysclk_reg[4]),
        .I2(cnt_sysclk_reg[2]),
        .I3(\cnt_sysclk[6]_i_2_n_0 ),
        .I4(cnt_sysclk_reg[3]),
        .I5(cnt_sysclk_reg[5]),
        .O(\cnt_sysclk[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF01FF80000000)) 
    \cnt_sysclk[6]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(\cnt_sysclk[6]_i_2_n_0 ),
        .I2(cnt_sysclk_reg[3]),
        .I3(cnt_sysclk_reg[5]),
        .I4(cnt_sysclk_reg[4]),
        .I5(cnt_sysclk_reg[6]),
        .O(\cnt_sysclk[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_sysclk[6]_i_2 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .O(\cnt_sysclk[6]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[0]),
        .Q(cnt_sysclk_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[1]),
        .Q(cnt_sysclk_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[2]),
        .Q(cnt_sysclk_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[3]),
        .Q(cnt_sysclk_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(p_0_in[4]),
        .Q(cnt_sysclk_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\cnt_sysclk[5]_i_1_n_0 ),
        .Q(cnt_sysclk_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(s00_axi_aresetn_0),
        .D(\cnt_sysclk[6]_i_1_n_0 ),
        .Q(cnt_sysclk_reg[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ed
       (.AR(s00_axi_aresetn_0),
        .O(O),
        .Q(cnt_sysclk_reg[6:1]),
        .count_usec_reg(count_usec_reg),
        .\count_usec_reg[11] (\count_usec_reg[11] ),
        .\count_usec_reg[15] (\count_usec_reg[15] ),
        .\count_usec_reg[19] (\count_usec_reg[19] ),
        .\count_usec_reg[21] (\count_usec_reg[21] ),
        .\count_usec_reg[7] (\count_usec_reg[7] ),
        .count_usec_reg_0_sp_1(count_usec_reg_0_sn_1),
        .ff_old_reg_0(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr
   (SR,
    count_usec_e_reg_0,
    \state_reg[0]_0 ,
    Q,
    \humidity_reg[7]_0 ,
    \temperature_reg[7]_0 ,
    count_usec_e10_out,
    \state_reg[1]_0 ,
    \state_reg[5]_0 ,
    \state_reg[4]_0 ,
    \state_reg[3]_0 ,
    dht11_data,
    s00_axi_aclk,
    count_usec_e_reg_1,
    dht11_data_0,
    s00_axi_aresetn);
  output [0:0]SR;
  output count_usec_e_reg_0;
  output \state_reg[0]_0 ;
  output [5:0]Q;
  output [7:0]\humidity_reg[7]_0 ;
  output [7:0]\temperature_reg[7]_0 ;
  output count_usec_e10_out;
  output \state_reg[1]_0 ;
  output \state_reg[5]_0 ;
  output \state_reg[4]_0 ;
  output \state_reg[3]_0 ;
  inout dht11_data;
  input s00_axi_aclk;
  input count_usec_e_reg_1;
  input dht11_data_0;
  input s00_axi_aresetn;

  wire [5:0]Q;
  wire [0:0]SR;
  wire count_usec_e10_out;
  wire count_usec_e_i_7_n_0;
  wire count_usec_e_i_8_n_0;
  wire count_usec_e_i_9_n_0;
  wire count_usec_e_reg_0;
  wire count_usec_e_reg_1;
  wire [21:0]count_usec_reg;
  wire \data_count[5]_i_1_n_0 ;
  wire \data_count_reg_n_0_[0] ;
  wire \data_count_reg_n_0_[1] ;
  wire \data_count_reg_n_0_[2] ;
  wire \data_count_reg_n_0_[3] ;
  wire \data_count_reg_n_0_[4] ;
  wire \data_count_reg_n_0_[5] ;
  wire dht11_buffer0;
  wire dht11_data;
  wire dht11_data_0;
  wire dht11_data_INST_0_i_3_n_0;
  wire dht11_data_INST_0_i_5_n_0;
  wire dht11_data_INST_0_i_6_n_0;
  wire dht11_data_INST_0_i_7_n_0;
  wire dht11_data_INST_0_i_8_n_0;
  wire ed_n_0;
  wire ed_n_1;
  wire ed_n_10;
  wire ed_n_11;
  wire ed_n_12;
  wire ed_n_13;
  wire ed_n_14;
  wire ed_n_2;
  wire ed_n_3;
  wire ed_n_39;
  wire ed_n_4;
  wire ed_n_40;
  wire ed_n_41;
  wire ed_n_42;
  wire ed_n_43;
  wire ed_n_44;
  wire ed_n_45;
  wire ed_n_46;
  wire ed_n_48;
  wire ed_n_49;
  wire ed_n_5;
  wire ed_n_50;
  wire ed_n_51;
  wire ed_n_52;
  wire ed_n_53;
  wire ed_n_56;
  wire ed_n_57;
  wire ed_n_58;
  wire ed_n_59;
  wire ed_n_6;
  wire ed_n_60;
  wire ed_n_61;
  wire ed_n_62;
  wire ed_n_64;
  wire ed_n_65;
  wire ed_n_66;
  wire ed_n_67;
  wire ed_n_7;
  wire ed_n_8;
  wire ed_n_9;
  wire [7:0]humidity1;
  wire humidity1__2_carry__0_n_1;
  wire humidity1__2_carry__0_n_2;
  wire humidity1__2_carry__0_n_3;
  wire humidity1__2_carry_n_0;
  wire humidity1__2_carry_n_1;
  wire humidity1__2_carry_n_2;
  wire humidity1__2_carry_n_3;
  wire [7:0]\humidity_reg[7]_0 ;
  wire next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire \next_state[4]_i_1_n_0 ;
  wire \next_state[5]_i_10_n_0 ;
  wire \next_state[5]_i_11_n_0 ;
  wire \next_state[5]_i_12_n_0 ;
  wire \next_state[5]_i_13_n_0 ;
  wire \next_state[5]_i_14_n_0 ;
  wire \next_state[5]_i_2_n_0 ;
  wire \next_state[5]_i_3_n_0 ;
  wire \next_state[5]_i_7_n_0 ;
  wire \next_state[5]_i_8_n_0 ;
  wire \next_state[5]_i_9_n_0 ;
  wire \next_state_inferred__3/i__n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire \next_state_reg_n_0_[3] ;
  wire \next_state_reg_n_0_[4] ;
  wire \next_state_reg_n_0_[5] ;
  wire [7:0]p_0_in1_in;
  wire [7:0]p_0_in_0;
  wire [7:0]p_1_in;
  wire \read_state_reg_n_0_[0] ;
  wire \read_state_reg_n_0_[1] ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \state_reg[0]_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[3]_0 ;
  wire \state_reg[4]_0 ;
  wire \state_reg[5]_0 ;
  wire temp_data;
  wire \temp_data[0]_i_2_n_0 ;
  wire \temp_data[0]_i_4_n_0 ;
  wire \temp_data_reg_n_0_[0] ;
  wire \temp_data_reg_n_0_[10] ;
  wire \temp_data_reg_n_0_[11] ;
  wire \temp_data_reg_n_0_[12] ;
  wire \temp_data_reg_n_0_[13] ;
  wire \temp_data_reg_n_0_[14] ;
  wire \temp_data_reg_n_0_[15] ;
  wire \temp_data_reg_n_0_[16] ;
  wire \temp_data_reg_n_0_[17] ;
  wire \temp_data_reg_n_0_[18] ;
  wire \temp_data_reg_n_0_[19] ;
  wire \temp_data_reg_n_0_[1] ;
  wire \temp_data_reg_n_0_[20] ;
  wire \temp_data_reg_n_0_[21] ;
  wire \temp_data_reg_n_0_[22] ;
  wire \temp_data_reg_n_0_[23] ;
  wire \temp_data_reg_n_0_[24] ;
  wire \temp_data_reg_n_0_[25] ;
  wire \temp_data_reg_n_0_[26] ;
  wire \temp_data_reg_n_0_[27] ;
  wire \temp_data_reg_n_0_[28] ;
  wire \temp_data_reg_n_0_[29] ;
  wire \temp_data_reg_n_0_[2] ;
  wire \temp_data_reg_n_0_[30] ;
  wire \temp_data_reg_n_0_[31] ;
  wire \temp_data_reg_n_0_[32] ;
  wire \temp_data_reg_n_0_[33] ;
  wire \temp_data_reg_n_0_[34] ;
  wire \temp_data_reg_n_0_[35] ;
  wire \temp_data_reg_n_0_[36] ;
  wire \temp_data_reg_n_0_[37] ;
  wire \temp_data_reg_n_0_[38] ;
  wire \temp_data_reg_n_0_[39] ;
  wire \temp_data_reg_n_0_[3] ;
  wire \temp_data_reg_n_0_[4] ;
  wire \temp_data_reg_n_0_[5] ;
  wire \temp_data_reg_n_0_[6] ;
  wire \temp_data_reg_n_0_[7] ;
  wire \temp_data_reg_n_0_[8] ;
  wire \temp_data_reg_n_0_[9] ;
  wire [7:0]\temperature_reg[7]_0 ;
  wire usec_clock_n_1;
  wire usec_clock_n_10;
  wire usec_clock_n_11;
  wire usec_clock_n_12;
  wire usec_clock_n_13;
  wire usec_clock_n_14;
  wire usec_clock_n_15;
  wire usec_clock_n_16;
  wire usec_clock_n_17;
  wire usec_clock_n_18;
  wire usec_clock_n_19;
  wire usec_clock_n_2;
  wire usec_clock_n_20;
  wire usec_clock_n_21;
  wire usec_clock_n_22;
  wire usec_clock_n_23;
  wire usec_clock_n_3;
  wire usec_clock_n_4;
  wire usec_clock_n_5;
  wire usec_clock_n_6;
  wire usec_clock_n_7;
  wire usec_clock_n_8;
  wire usec_clock_n_9;
  wire [3:3]NLW_humidity1__2_carry__0_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    count_usec_e_i_5
       (.I0(\next_state[5]_i_8_n_0 ),
        .I1(Q[1]),
        .I2(dht11_data_INST_0_i_3_n_0),
        .I3(Q[0]),
        .O(\state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAABABAAA)) 
    count_usec_e_i_6
       (.I0(count_usec_e_i_7_n_0),
        .I1(count_usec_e_i_8_n_0),
        .I2(s00_axi_aresetn),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(count_usec_e10_out));
  LUT6 #(
    .INIT(64'h0000000400040440)) 
    count_usec_e_i_7
       (.I0(count_usec_e_i_9_n_0),
        .I1(s00_axi_aresetn),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(count_usec_e_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    count_usec_e_i_8
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(count_usec_e_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    count_usec_e_i_9
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(count_usec_e_i_9_n_0));
  FDRE count_usec_e_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count_usec_e_reg_1),
        .Q(count_usec_e_reg_0),
        .R(1'b0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[0] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_5),
        .Q(count_usec_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[10] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_11),
        .Q(count_usec_reg[10]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[11] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_10),
        .Q(count_usec_reg[11]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[12] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_17),
        .Q(count_usec_reg[12]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[13] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_16),
        .Q(count_usec_reg[13]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[14] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_15),
        .Q(count_usec_reg[14]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[15] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_14),
        .Q(count_usec_reg[15]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[16] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_21),
        .Q(count_usec_reg[16]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[17] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_20),
        .Q(count_usec_reg[17]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[18] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_19),
        .Q(count_usec_reg[18]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[19] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_18),
        .Q(count_usec_reg[19]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[1] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_4),
        .Q(count_usec_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[20] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_23),
        .Q(count_usec_reg[20]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[21] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_22),
        .Q(count_usec_reg[21]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[2] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_3),
        .Q(count_usec_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[3] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_2),
        .Q(count_usec_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[4] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_9),
        .Q(count_usec_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[5] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_8),
        .Q(count_usec_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[6] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_7),
        .Q(count_usec_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[7] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_6),
        .Q(count_usec_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[8] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_13),
        .Q(count_usec_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \count_usec_reg[9] 
       (.C(s00_axi_aclk),
        .CE(usec_clock_n_1),
        .CLR(SR),
        .D(usec_clock_n_12),
        .Q(count_usec_reg[9]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \data_count[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\data_count[5]_i_1_n_0 ));
  FDCE \data_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_53),
        .Q(\data_count_reg_n_0_[0] ));
  FDCE \data_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_52),
        .Q(\data_count_reg_n_0_[1] ));
  FDCE \data_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_51),
        .Q(\data_count_reg_n_0_[2] ));
  FDCE \data_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_50),
        .Q(\data_count_reg_n_0_[3] ));
  FDCE \data_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_49),
        .Q(\data_count_reg_n_0_[4] ));
  FDCE \data_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\data_count[5]_i_1_n_0 ),
        .CLR(SR),
        .D(ed_n_48),
        .Q(\data_count_reg_n_0_[5] ));
  LUT6 #(
    .INIT(64'hFFFFF8FD00007070)) 
    dht11_data_INST_0_i_2
       (.I0(Q[0]),
        .I1(dht11_data_INST_0_i_3_n_0),
        .I2(dht11_buffer0),
        .I3(\next_state[2]_i_1_n_0 ),
        .I4(dht11_data_INST_0_i_5_n_0),
        .I5(dht11_data_0),
        .O(\state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hA8888888)) 
    dht11_data_INST_0_i_3
       (.I0(count_usec_reg[21]),
        .I1(count_usec_reg[20]),
        .I2(count_usec_reg[19]),
        .I3(count_usec_reg[18]),
        .I4(dht11_data_INST_0_i_6_n_0),
        .O(dht11_data_INST_0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dht11_data_INST_0_i_4
       (.I0(Q[1]),
        .I1(\next_state[5]_i_8_n_0 ),
        .O(dht11_buffer0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    dht11_data_INST_0_i_5
       (.I0(count_usec_e_i_8_n_0),
        .I1(s00_axi_aresetn),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(dht11_data_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hEAAAEAAAEAAAAAAA)) 
    dht11_data_INST_0_i_6
       (.I0(count_usec_reg[17]),
        .I1(count_usec_reg[16]),
        .I2(count_usec_reg[15]),
        .I3(count_usec_reg[14]),
        .I4(dht11_data_INST_0_i_7_n_0),
        .I5(dht11_data_INST_0_i_8_n_0),
        .O(dht11_data_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    dht11_data_INST_0_i_7
       (.I0(count_usec_reg[11]),
        .I1(count_usec_reg[13]),
        .I2(count_usec_reg[12]),
        .O(dht11_data_INST_0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h88808080)) 
    dht11_data_INST_0_i_8
       (.I0(count_usec_reg[10]),
        .I1(count_usec_reg[9]),
        .I2(count_usec_reg[8]),
        .I3(count_usec_reg[6]),
        .I4(count_usec_reg[7]),
        .O(dht11_data_INST_0_i_8_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed
       (.D({ed_n_5,ed_n_6,ed_n_7,ed_n_8,ed_n_9,ed_n_10,ed_n_11}),
        .DI({ed_n_0,ed_n_1,ed_n_2,ed_n_3}),
        .E(ed_n_14),
        .Q({\data_count_reg_n_0_[5] ,\data_count_reg_n_0_[4] ,\data_count_reg_n_0_[3] ,\data_count_reg_n_0_[2] ,\data_count_reg_n_0_[1] ,\data_count_reg_n_0_[0] }),
        .S({ed_n_59,ed_n_60,ed_n_61,ed_n_62}),
        .count_usec_e_reg(\next_state[5]_i_7_n_0 ),
        .count_usec_reg(count_usec_reg[10:6]),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_0),
        .ff_old_reg_0(SR),
        .humidity1(humidity1),
        .\humidity_reg[7] ({\temp_data_reg_n_0_[39] ,\temp_data_reg_n_0_[38] ,\temp_data_reg_n_0_[37] ,\temp_data_reg_n_0_[36] ,\temp_data_reg_n_0_[35] ,\temp_data_reg_n_0_[34] ,\temp_data_reg_n_0_[33] ,\temp_data_reg_n_0_[32] ,\temp_data_reg_n_0_[31] ,\temp_data_reg_n_0_[30] ,\temp_data_reg_n_0_[29] ,\temp_data_reg_n_0_[28] ,\temp_data_reg_n_0_[27] ,\temp_data_reg_n_0_[26] ,\temp_data_reg_n_0_[25] ,\temp_data_reg_n_0_[24] ,\temp_data_reg_n_0_[23] ,\temp_data_reg_n_0_[22] ,\temp_data_reg_n_0_[21] ,\temp_data_reg_n_0_[20] ,\temp_data_reg_n_0_[19] ,\temp_data_reg_n_0_[18] ,\temp_data_reg_n_0_[17] ,\temp_data_reg_n_0_[16] ,\temp_data_reg_n_0_[15] ,\temp_data_reg_n_0_[14] ,\temp_data_reg_n_0_[13] ,\temp_data_reg_n_0_[12] ,\temp_data_reg_n_0_[11] ,\temp_data_reg_n_0_[10] ,\temp_data_reg_n_0_[9] ,\temp_data_reg_n_0_[8] ,\temp_data_reg_n_0_[7] ,\temp_data_reg_n_0_[6] ,\temp_data_reg_n_0_[5] ,\temp_data_reg_n_0_[4] ,\temp_data_reg_n_0_[3] ,\temp_data_reg_n_0_[2] ,\temp_data_reg_n_0_[1] ,\temp_data_reg_n_0_[0] }),
        .\next_state_reg[0] (\next_state_inferred__3/i__n_0 ),
        .\next_state_reg[0]_0 (\next_state[5]_i_3_n_0 ),
        .\next_state_reg[0]_1 (Q[5:2]),
        .\read_state_reg[0] ({ed_n_48,ed_n_49,ed_n_50,ed_n_51,ed_n_52,ed_n_53}),
        .\read_state_reg[1] (ed_n_12),
        .\read_state_reg[1]_0 (ed_n_13),
        .\read_state_reg[1]_1 (\data_count[5]_i_1_n_0 ),
        .\read_state_reg[1]_2 (\read_state_reg_n_0_[1] ),
        .\read_state_reg[1]_3 (\read_state_reg_n_0_[0] ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\state_reg[3] (\state_reg[3]_0 ),
        .\state_reg[4] (\state_reg[4]_0 ),
        .\state_reg[5] (next_state),
        .\state_reg[5]_0 (\state_reg[5]_0 ),
        .\temp_data_reg[0] (\temp_data[0]_i_2_n_0 ),
        .\temp_data_reg[0]_0 (\temp_data[0]_i_4_n_0 ),
        .\temp_data_reg[0]_1 (\next_state[5]_i_10_n_0 ),
        .\temp_data_reg[16] (ed_n_4),
        .\temp_data_reg[34] ({ed_n_64,ed_n_65,ed_n_66,ed_n_67}),
        .\temp_data_reg[36] ({ed_n_56,ed_n_57,ed_n_58}),
        .\temp_data_reg[38] ({p_1_in,p_0_in_0,p_0_in1_in,ed_n_39,ed_n_40,ed_n_41,ed_n_42,ed_n_43,ed_n_44,ed_n_45,ed_n_46}),
        .\temperature_reg[0] (temp_data));
  CARRY4 humidity1__2_carry
       (.CI(1'b0),
        .CO({humidity1__2_carry_n_0,humidity1__2_carry_n_1,humidity1__2_carry_n_2,humidity1__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({ed_n_0,ed_n_1,ed_n_2,ed_n_3}),
        .O(humidity1[3:0]),
        .S({ed_n_64,ed_n_65,ed_n_66,ed_n_67}));
  CARRY4 humidity1__2_carry__0
       (.CI(humidity1__2_carry_n_0),
        .CO({NLW_humidity1__2_carry__0_CO_UNCONNECTED[3],humidity1__2_carry__0_n_1,humidity1__2_carry__0_n_2,humidity1__2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ed_n_56,ed_n_57,ed_n_58}),
        .O(humidity1[7:4]),
        .S({ed_n_59,ed_n_60,ed_n_61,ed_n_62}));
  FDRE \humidity_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[0]),
        .Q(\humidity_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \humidity_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[1]),
        .Q(\humidity_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \humidity_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[2]),
        .Q(\humidity_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \humidity_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[3]),
        .Q(\humidity_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \humidity_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[4]),
        .Q(\humidity_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \humidity_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[5]),
        .Q(\humidity_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \humidity_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[6]),
        .Q(\humidity_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \humidity_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(p_1_in[7]),
        .Q(\humidity_reg[7]_0 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0000)) 
    \next_state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[5]),
        .I5(\next_state[5]_i_7_n_0 ),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[2]_i_1 
       (.I0(Q[1]),
        .I1(\next_state[5]_i_7_n_0 ),
        .O(\next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[3]_i_1 
       (.I0(Q[2]),
        .I1(\next_state[5]_i_7_n_0 ),
        .O(\next_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[4]_i_1 
       (.I0(Q[3]),
        .I1(\next_state[5]_i_7_n_0 ),
        .O(\next_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \next_state[5]_i_10 
       (.I0(count_usec_reg[14]),
        .I1(count_usec_reg[12]),
        .I2(count_usec_reg[13]),
        .I3(count_usec_reg[11]),
        .O(\next_state[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h000057FFFFFFFFFF)) 
    \next_state[5]_i_11 
       (.I0(\next_state[5]_i_13_n_0 ),
        .I1(count_usec_reg[5]),
        .I2(count_usec_reg[6]),
        .I3(count_usec_reg[7]),
        .I4(count_usec_reg[8]),
        .I5(\next_state[5]_i_14_n_0 ),
        .O(\next_state[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \next_state[5]_i_12 
       (.I0(\next_state[5]_i_14_n_0 ),
        .I1(count_usec_reg[11]),
        .I2(count_usec_reg[7]),
        .I3(count_usec_reg[8]),
        .I4(count_usec_reg[5]),
        .I5(count_usec_reg[6]),
        .O(\next_state[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \next_state[5]_i_13 
       (.I0(count_usec_reg[6]),
        .I1(count_usec_reg[4]),
        .I2(count_usec_reg[0]),
        .I3(count_usec_reg[1]),
        .I4(count_usec_reg[2]),
        .I5(count_usec_reg[3]),
        .O(\next_state[5]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \next_state[5]_i_14 
       (.I0(count_usec_reg[9]),
        .I1(count_usec_reg[10]),
        .O(\next_state[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \next_state[5]_i_2 
       (.I0(Q[4]),
        .I1(\next_state[5]_i_7_n_0 ),
        .O(\next_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \next_state[5]_i_3 
       (.I0(dht11_data_INST_0_i_3_n_0),
        .I1(Q[0]),
        .I2(\next_state[5]_i_8_n_0 ),
        .I3(Q[1]),
        .O(\next_state[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hEFAAAAAA)) 
    \next_state[5]_i_7 
       (.I0(\next_state[5]_i_9_n_0 ),
        .I1(\next_state[5]_i_10_n_0 ),
        .I2(\next_state[5]_i_11_n_0 ),
        .I3(count_usec_reg[15]),
        .I4(count_usec_reg[16]),
        .O(\next_state[5]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00045555)) 
    \next_state[5]_i_8 
       (.I0(\temp_data[0]_i_2_n_0 ),
        .I1(\next_state[5]_i_12_n_0 ),
        .I2(count_usec_reg[13]),
        .I3(count_usec_reg[12]),
        .I4(count_usec_reg[14]),
        .O(\next_state[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \next_state[5]_i_9 
       (.I0(count_usec_reg[18]),
        .I1(count_usec_reg[17]),
        .I2(count_usec_reg[20]),
        .I3(count_usec_reg[21]),
        .I4(count_usec_reg[19]),
        .O(\next_state[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010116)) 
    \next_state_inferred__3/i_ 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\next_state_inferred__3/i__n_0 ));
  FDPE \next_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .D(\next_state[0]_i_1_n_0 ),
        .PRE(SR),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE \next_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(SR),
        .D(Q[0]),
        .Q(\next_state_reg_n_0_[1] ));
  FDCE \next_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(SR),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  FDCE \next_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(SR),
        .D(\next_state[3]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[3] ));
  FDCE \next_state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(SR),
        .D(\next_state[4]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[4] ));
  FDCE \next_state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(next_state),
        .CLR(SR),
        .D(\next_state[5]_i_2_n_0 ),
        .Q(\next_state_reg_n_0_[5] ));
  FDPE \read_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(ed_n_13),
        .PRE(SR),
        .Q(\read_state_reg_n_0_[0] ));
  FDCE \read_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ed_n_12),
        .Q(\read_state_reg_n_0_[1] ));
  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[0] ),
        .PRE(SR),
        .Q(Q[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[1] ),
        .Q(Q[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[2] ),
        .Q(Q[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[3] ),
        .Q(Q[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[4] ),
        .Q(Q[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \state_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\next_state_reg_n_0_[5] ),
        .Q(Q[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \temp_data[0]_i_2 
       (.I0(\next_state[5]_i_9_n_0 ),
        .I1(count_usec_reg[16]),
        .I2(count_usec_reg[15]),
        .O(\temp_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \temp_data[0]_i_4 
       (.I0(count_usec_reg[5]),
        .I1(count_usec_reg[3]),
        .I2(count_usec_reg[2]),
        .I3(count_usec_reg[0]),
        .I4(count_usec_reg[1]),
        .I5(count_usec_reg[4]),
        .O(\temp_data[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_data[39]_i_1 
       (.I0(\data_count[5]_i_1_n_0 ),
        .I1(\next_state[5]_i_7_n_0 ),
        .O(temp_data));
  FDCE \temp_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_46),
        .Q(\temp_data_reg_n_0_[0] ));
  FDCE \temp_data_reg[10] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[2]),
        .Q(\temp_data_reg_n_0_[10] ));
  FDCE \temp_data_reg[11] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[3]),
        .Q(\temp_data_reg_n_0_[11] ));
  FDCE \temp_data_reg[12] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[4]),
        .Q(\temp_data_reg_n_0_[12] ));
  FDCE \temp_data_reg[13] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[5]),
        .Q(\temp_data_reg_n_0_[13] ));
  FDCE \temp_data_reg[14] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[6]),
        .Q(\temp_data_reg_n_0_[14] ));
  FDCE \temp_data_reg[15] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[7]),
        .Q(\temp_data_reg_n_0_[15] ));
  FDCE \temp_data_reg[16] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_11),
        .Q(\temp_data_reg_n_0_[16] ));
  FDCE \temp_data_reg[17] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_4),
        .Q(\temp_data_reg_n_0_[17] ));
  FDCE \temp_data_reg[18] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_10),
        .Q(\temp_data_reg_n_0_[18] ));
  FDCE \temp_data_reg[19] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_9),
        .Q(\temp_data_reg_n_0_[19] ));
  FDCE \temp_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_45),
        .Q(\temp_data_reg_n_0_[1] ));
  FDCE \temp_data_reg[20] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_8),
        .Q(\temp_data_reg_n_0_[20] ));
  FDCE \temp_data_reg[21] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_7),
        .Q(\temp_data_reg_n_0_[21] ));
  FDCE \temp_data_reg[22] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_6),
        .Q(\temp_data_reg_n_0_[22] ));
  FDCE \temp_data_reg[23] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_5),
        .Q(\temp_data_reg_n_0_[23] ));
  FDCE \temp_data_reg[24] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[0]),
        .Q(\temp_data_reg_n_0_[24] ));
  FDCE \temp_data_reg[25] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[1]),
        .Q(\temp_data_reg_n_0_[25] ));
  FDCE \temp_data_reg[26] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[2]),
        .Q(\temp_data_reg_n_0_[26] ));
  FDCE \temp_data_reg[27] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[3]),
        .Q(\temp_data_reg_n_0_[27] ));
  FDCE \temp_data_reg[28] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[4]),
        .Q(\temp_data_reg_n_0_[28] ));
  FDCE \temp_data_reg[29] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[5]),
        .Q(\temp_data_reg_n_0_[29] ));
  FDCE \temp_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_44),
        .Q(\temp_data_reg_n_0_[2] ));
  FDCE \temp_data_reg[30] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[6]),
        .Q(\temp_data_reg_n_0_[30] ));
  FDCE \temp_data_reg[31] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in_0[7]),
        .Q(\temp_data_reg_n_0_[31] ));
  FDCE \temp_data_reg[32] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[0]),
        .Q(\temp_data_reg_n_0_[32] ));
  FDCE \temp_data_reg[33] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[1]),
        .Q(\temp_data_reg_n_0_[33] ));
  FDCE \temp_data_reg[34] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[2]),
        .Q(\temp_data_reg_n_0_[34] ));
  FDCE \temp_data_reg[35] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[3]),
        .Q(\temp_data_reg_n_0_[35] ));
  FDCE \temp_data_reg[36] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[4]),
        .Q(\temp_data_reg_n_0_[36] ));
  FDCE \temp_data_reg[37] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[5]),
        .Q(\temp_data_reg_n_0_[37] ));
  FDCE \temp_data_reg[38] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[6]),
        .Q(\temp_data_reg_n_0_[38] ));
  FDCE \temp_data_reg[39] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_1_in[7]),
        .Q(\temp_data_reg_n_0_[39] ));
  FDCE \temp_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_43),
        .Q(\temp_data_reg_n_0_[3] ));
  FDCE \temp_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_42),
        .Q(\temp_data_reg_n_0_[4] ));
  FDCE \temp_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_41),
        .Q(\temp_data_reg_n_0_[5] ));
  FDCE \temp_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_40),
        .Q(\temp_data_reg_n_0_[6] ));
  FDCE \temp_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(ed_n_39),
        .Q(\temp_data_reg_n_0_[7] ));
  FDCE \temp_data_reg[8] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[0]),
        .Q(\temp_data_reg_n_0_[8] ));
  FDCE \temp_data_reg[9] 
       (.C(s00_axi_aclk),
        .CE(temp_data),
        .CLR(SR),
        .D(p_0_in1_in[1]),
        .Q(\temp_data_reg_n_0_[9] ));
  FDRE \temperature_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_11),
        .Q(\temperature_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \temperature_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_4),
        .Q(\temperature_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \temperature_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_10),
        .Q(\temperature_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \temperature_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_9),
        .Q(\temperature_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \temperature_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_8),
        .Q(\temperature_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \temperature_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_7),
        .Q(\temperature_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \temperature_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_6),
        .Q(\temperature_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \temperature_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ed_n_14),
        .D(ed_n_5),
        .Q(\temperature_reg[7]_0 [7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 usec_clock
       (.O({usec_clock_n_2,usec_clock_n_3,usec_clock_n_4,usec_clock_n_5}),
        .count_usec_reg(count_usec_reg),
        .\count_usec_reg[11] ({usec_clock_n_10,usec_clock_n_11,usec_clock_n_12,usec_clock_n_13}),
        .\count_usec_reg[15] ({usec_clock_n_14,usec_clock_n_15,usec_clock_n_16,usec_clock_n_17}),
        .\count_usec_reg[19] ({usec_clock_n_18,usec_clock_n_19,usec_clock_n_20,usec_clock_n_21}),
        .\count_usec_reg[21] ({usec_clock_n_22,usec_clock_n_23}),
        .\count_usec_reg[7] ({usec_clock_n_6,usec_clock_n_7,usec_clock_n_8,usec_clock_n_9}),
        .count_usec_reg_0_sp_1(count_usec_e_reg_0),
        .ff_old_reg(usec_clock_n_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (AR,
    ff_old_reg_0,
    O,
    \count_usec_reg[7] ,
    \count_usec_reg[11] ,
    \count_usec_reg[15] ,
    \count_usec_reg[19] ,
    \count_usec_reg[21] ,
    s00_axi_aclk,
    s00_axi_aresetn,
    count_usec_reg_0_sp_1,
    count_usec_reg,
    Q);
  output [0:0]AR;
  output ff_old_reg_0;
  output [3:0]O;
  output [3:0]\count_usec_reg[7] ;
  output [3:0]\count_usec_reg[11] ;
  output [3:0]\count_usec_reg[15] ;
  output [3:0]\count_usec_reg[19] ;
  output [1:0]\count_usec_reg[21] ;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input count_usec_reg_0_sp_1;
  input [21:0]count_usec_reg;
  input [5:0]Q;

  wire [0:0]AR;
  wire [3:0]O;
  wire [5:0]Q;
  wire count_usec1;
  wire \count_usec[0]_i_4_n_0 ;
  wire \count_usec[0]_i_5_n_0 ;
  wire \count_usec[0]_i_6_n_0 ;
  wire \count_usec[0]_i_7_n_0 ;
  wire \count_usec[12]_i_2_n_0 ;
  wire \count_usec[12]_i_3_n_0 ;
  wire \count_usec[12]_i_4_n_0 ;
  wire \count_usec[12]_i_5_n_0 ;
  wire \count_usec[16]_i_2_n_0 ;
  wire \count_usec[16]_i_3_n_0 ;
  wire \count_usec[16]_i_4_n_0 ;
  wire \count_usec[16]_i_5_n_0 ;
  wire \count_usec[20]_i_2_n_0 ;
  wire \count_usec[20]_i_3_n_0 ;
  wire \count_usec[4]_i_2_n_0 ;
  wire \count_usec[4]_i_3_n_0 ;
  wire \count_usec[4]_i_4_n_0 ;
  wire \count_usec[4]_i_5_n_0 ;
  wire \count_usec[8]_i_2_n_0 ;
  wire \count_usec[8]_i_3_n_0 ;
  wire \count_usec[8]_i_4_n_0 ;
  wire \count_usec[8]_i_5_n_0 ;
  wire [21:0]count_usec_reg;
  wire \count_usec_reg[0]_i_2_n_0 ;
  wire \count_usec_reg[0]_i_2_n_1 ;
  wire \count_usec_reg[0]_i_2_n_2 ;
  wire \count_usec_reg[0]_i_2_n_3 ;
  wire [3:0]\count_usec_reg[11] ;
  wire \count_usec_reg[12]_i_1_n_0 ;
  wire \count_usec_reg[12]_i_1_n_1 ;
  wire \count_usec_reg[12]_i_1_n_2 ;
  wire \count_usec_reg[12]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[15] ;
  wire \count_usec_reg[16]_i_1_n_0 ;
  wire \count_usec_reg[16]_i_1_n_1 ;
  wire \count_usec_reg[16]_i_1_n_2 ;
  wire \count_usec_reg[16]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[19] ;
  wire \count_usec_reg[20]_i_1_n_3 ;
  wire [1:0]\count_usec_reg[21] ;
  wire \count_usec_reg[4]_i_1_n_0 ;
  wire \count_usec_reg[4]_i_1_n_1 ;
  wire \count_usec_reg[4]_i_1_n_2 ;
  wire \count_usec_reg[4]_i_1_n_3 ;
  wire [3:0]\count_usec_reg[7] ;
  wire \count_usec_reg[8]_i_1_n_0 ;
  wire \count_usec_reg[8]_i_1_n_1 ;
  wire \count_usec_reg[8]_i_1_n_2 ;
  wire \count_usec_reg[8]_i_1_n_3 ;
  wire count_usec_reg_0_sn_1;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire p_0_out;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [3:1]\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED ;

  assign count_usec_reg_0_sn_1 = count_usec_reg_0_sp_1;
  LUT3 #(
    .INIT(8'h2F)) 
    \count_usec[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(count_usec_reg_0_sn_1),
        .O(ff_old_reg_0));
  LUT3 #(
    .INIT(8'h40)) 
    \count_usec[0]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(count_usec_reg_0_sn_1),
        .O(count_usec1));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_4 
       (.I0(count_usec_reg[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_5 
       (.I0(count_usec_reg[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[0]_i_6 
       (.I0(count_usec_reg[1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hCC4C)) 
    \count_usec[0]_i_7 
       (.I0(count_usec_reg[0]),
        .I1(count_usec_reg_0_sn_1),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\count_usec[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_2 
       (.I0(count_usec_reg[15]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_3 
       (.I0(count_usec_reg[14]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_4 
       (.I0(count_usec_reg[13]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[12]_i_5 
       (.I0(count_usec_reg[12]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_2 
       (.I0(count_usec_reg[19]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_3 
       (.I0(count_usec_reg[18]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_4 
       (.I0(count_usec_reg[17]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[16]_i_5 
       (.I0(count_usec_reg[16]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[20]_i_2 
       (.I0(count_usec_reg[21]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[20]_i_3 
       (.I0(count_usec_reg[20]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_2 
       (.I0(count_usec_reg[7]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_3 
       (.I0(count_usec_reg[6]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_4 
       (.I0(count_usec_reg[5]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[4]_i_5 
       (.I0(count_usec_reg[4]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_2 
       (.I0(count_usec_reg[11]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_3 
       (.I0(count_usec_reg[10]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_4 
       (.I0(count_usec_reg[9]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEF00)) 
    \count_usec[8]_i_5 
       (.I0(count_usec_reg[8]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_reg_0_sn_1),
        .O(\count_usec[8]_i_5_n_0 ));
  CARRY4 \count_usec_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count_usec_reg[0]_i_2_n_0 ,\count_usec_reg[0]_i_2_n_1 ,\count_usec_reg[0]_i_2_n_2 ,\count_usec_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,count_usec1}),
        .O(O),
        .S({\count_usec[0]_i_4_n_0 ,\count_usec[0]_i_5_n_0 ,\count_usec[0]_i_6_n_0 ,\count_usec[0]_i_7_n_0 }));
  CARRY4 \count_usec_reg[12]_i_1 
       (.CI(\count_usec_reg[8]_i_1_n_0 ),
        .CO({\count_usec_reg[12]_i_1_n_0 ,\count_usec_reg[12]_i_1_n_1 ,\count_usec_reg[12]_i_1_n_2 ,\count_usec_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[15] ),
        .S({\count_usec[12]_i_2_n_0 ,\count_usec[12]_i_3_n_0 ,\count_usec[12]_i_4_n_0 ,\count_usec[12]_i_5_n_0 }));
  CARRY4 \count_usec_reg[16]_i_1 
       (.CI(\count_usec_reg[12]_i_1_n_0 ),
        .CO({\count_usec_reg[16]_i_1_n_0 ,\count_usec_reg[16]_i_1_n_1 ,\count_usec_reg[16]_i_1_n_2 ,\count_usec_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[19] ),
        .S({\count_usec[16]_i_2_n_0 ,\count_usec[16]_i_3_n_0 ,\count_usec[16]_i_4_n_0 ,\count_usec[16]_i_5_n_0 }));
  CARRY4 \count_usec_reg[20]_i_1 
       (.CI(\count_usec_reg[16]_i_1_n_0 ),
        .CO({\NLW_count_usec_reg[20]_i_1_CO_UNCONNECTED [3:1],\count_usec_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_usec_reg[20]_i_1_O_UNCONNECTED [3:2],\count_usec_reg[21] }),
        .S({1'b0,1'b0,\count_usec[20]_i_2_n_0 ,\count_usec[20]_i_3_n_0 }));
  CARRY4 \count_usec_reg[4]_i_1 
       (.CI(\count_usec_reg[0]_i_2_n_0 ),
        .CO({\count_usec_reg[4]_i_1_n_0 ,\count_usec_reg[4]_i_1_n_1 ,\count_usec_reg[4]_i_1_n_2 ,\count_usec_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[7] ),
        .S({\count_usec[4]_i_2_n_0 ,\count_usec[4]_i_3_n_0 ,\count_usec[4]_i_4_n_0 ,\count_usec[4]_i_5_n_0 }));
  CARRY4 \count_usec_reg[8]_i_1 
       (.CI(\count_usec_reg[4]_i_1_n_0 ),
        .CO({\count_usec_reg[8]_i_1_n_0 ,\count_usec_reg[8]_i_1_n_1 ,\count_usec_reg[8]_i_1_n_2 ,\count_usec_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\count_usec_reg[11] ),
        .S({\count_usec[8]_i_2_n_0 ,\count_usec[8]_i_3_n_0 ,\count_usec[8]_i_4_n_0 ,\count_usec[8]_i_5_n_0 }));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAAAAA)) 
    ff_cur_i_1
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_0_out));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_out),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \state[5]_i_1 
       (.I0(s00_axi_aresetn),
        .O(AR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
   (DI,
    \temp_data_reg[16] ,
    D,
    \read_state_reg[1] ,
    \read_state_reg[1]_0 ,
    E,
    \temp_data_reg[38] ,
    \state_reg[5] ,
    \read_state_reg[0] ,
    \state_reg[5]_0 ,
    \state_reg[4] ,
    \temp_data_reg[36] ,
    S,
    \state_reg[3] ,
    \temp_data_reg[34] ,
    dht11_data,
    s00_axi_aclk,
    ff_old_reg_0,
    count_usec_e_reg,
    Q,
    \humidity_reg[7] ,
    dht11_data_0,
    \read_state_reg[1]_1 ,
    \read_state_reg[1]_2 ,
    \read_state_reg[1]_3 ,
    \temperature_reg[0] ,
    humidity1,
    \temp_data_reg[0] ,
    count_usec_reg,
    \temp_data_reg[0]_0 ,
    \temp_data_reg[0]_1 ,
    \next_state_reg[0] ,
    \next_state_reg[0]_0 ,
    \next_state_reg[0]_1 ,
    s00_axi_aresetn);
  output [3:0]DI;
  output \temp_data_reg[16] ;
  output [6:0]D;
  output \read_state_reg[1] ;
  output \read_state_reg[1]_0 ;
  output [0:0]E;
  output [31:0]\temp_data_reg[38] ;
  output [0:0]\state_reg[5] ;
  output [5:0]\read_state_reg[0] ;
  output \state_reg[5]_0 ;
  output \state_reg[4] ;
  output [2:0]\temp_data_reg[36] ;
  output [3:0]S;
  output \state_reg[3] ;
  output [3:0]\temp_data_reg[34] ;
  inout dht11_data;
  input s00_axi_aclk;
  input ff_old_reg_0;
  input count_usec_e_reg;
  input [5:0]Q;
  input [39:0]\humidity_reg[7] ;
  input dht11_data_0;
  input \read_state_reg[1]_1 ;
  input \read_state_reg[1]_2 ;
  input \read_state_reg[1]_3 ;
  input [0:0]\temperature_reg[0] ;
  input [7:0]humidity1;
  input \temp_data_reg[0] ;
  input [4:0]count_usec_reg;
  input \temp_data_reg[0]_0 ;
  input \temp_data_reg[0]_1 ;
  input \next_state_reg[0] ;
  input \next_state_reg[0]_0 ;
  input [3:0]\next_state_reg[0]_1 ;
  input s00_axi_aresetn;

  wire [6:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire [5:0]Q;
  wire [3:0]S;
  wire count_usec_e_reg;
  wire [4:0]count_usec_reg;
  wire \data_count[1]_i_2_n_0 ;
  wire \data_count[3]_i_2_n_0 ;
  wire \data_count[4]_i_2_n_0 ;
  wire \data_count[4]_i_3_n_0 ;
  wire \data_count[5]_i_3_n_0 ;
  wire dht11_data;
  wire dht11_data_0;
  wire ff_old_reg_0;
  wire [7:0]humidity1;
  wire humidity1__2_carry__0_i_10_n_0;
  wire humidity1__2_carry__0_i_11_n_0;
  wire humidity1__2_carry__0_i_12_n_0;
  wire humidity1__2_carry__0_i_13_n_0;
  wire humidity1__2_carry__0_i_14_n_0;
  wire humidity1__2_carry__0_i_15_n_0;
  wire humidity1__2_carry__0_i_8_n_0;
  wire humidity1__2_carry__0_i_9_n_0;
  wire humidity1__2_carry_i_10_n_0;
  wire humidity1__2_carry_i_11_n_0;
  wire humidity1__2_carry_i_12_n_0;
  wire humidity1__2_carry_i_13_n_0;
  wire humidity1__2_carry_i_9_n_0;
  wire \humidity[7]_i_2_n_0 ;
  wire \humidity[7]_i_3_n_0 ;
  wire \humidity[7]_i_4_n_0 ;
  wire \humidity[7]_i_5_n_0 ;
  wire \humidity[7]_i_6_n_0 ;
  wire [39:0]\humidity_reg[7] ;
  wire \next_state[5]_i_4_n_0 ;
  wire \next_state[5]_i_5_n_0 ;
  wire \next_state[5]_i_6_n_0 ;
  wire \next_state_reg[0] ;
  wire \next_state_reg[0]_0 ;
  wire [3:0]\next_state_reg[0]_1 ;
  wire [1:0]p_0_in;
  wire \read_state[1]_i_2_n_0 ;
  wire [5:0]\read_state_reg[0] ;
  wire \read_state_reg[1] ;
  wire \read_state_reg[1]_0 ;
  wire \read_state_reg[1]_1 ;
  wire \read_state_reg[1]_2 ;
  wire \read_state_reg[1]_3 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \state_reg[3] ;
  wire \state_reg[4] ;
  wire [0:0]\state_reg[5] ;
  wire \state_reg[5]_0 ;
  wire \temp_data[0]_i_3_n_0 ;
  wire \temp_data_reg[0] ;
  wire \temp_data_reg[0]_0 ;
  wire \temp_data_reg[0]_1 ;
  wire \temp_data_reg[16] ;
  wire [3:0]\temp_data_reg[34] ;
  wire [2:0]\temp_data_reg[36] ;
  wire [31:0]\temp_data_reg[38] ;
  wire [0:0]\temperature_reg[0] ;

  LUT4 #(
    .INIT(16'h0010)) 
    count_usec_e_i_2
       (.I0(\humidity[7]_i_4_n_0 ),
        .I1(count_usec_e_reg),
        .I2(\next_state_reg[0]_1 [3]),
        .I3(\data_count[1]_i_2_n_0 ),
        .O(\state_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    count_usec_e_i_3
       (.I0(\next_state_reg[0]_1 [1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_e_reg),
        .O(\state_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0000E0EE)) 
    count_usec_e_i_4
       (.I0(\next_state_reg[0]_1 [2]),
        .I1(\next_state_reg[0]_1 [0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(count_usec_e_reg),
        .O(\state_reg[4] ));
  LUT6 #(
    .INIT(64'hAAAA8AAA00002000)) 
    \data_count[0]_i_1 
       (.I0(\next_state[5]_i_6_n_0 ),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(Q[0]),
        .O(\read_state_reg[0] [0]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_count[1]_i_1 
       (.I0(\next_state[5]_i_6_n_0 ),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\read_state_reg[0] [1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \data_count[1]_i_2 
       (.I0(\read_state_reg[1]_3 ),
        .I1(\read_state_reg[1]_2 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\data_count[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAA8A0020)) 
    \data_count[2]_i_1 
       (.I0(\next_state[5]_i_6_n_0 ),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(\data_count[3]_i_2_n_0 ),
        .I4(Q[2]),
        .O(\read_state_reg[0] [2]));
  LUT6 #(
    .INIT(64'hFFBF004000000000)) 
    \data_count[3]_i_1 
       (.I0(\read_state_reg[1]_3 ),
        .I1(\read_state_reg[1]_2 ),
        .I2(Q[2]),
        .I3(\data_count[3]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(\next_state[5]_i_6_n_0 ),
        .O(\read_state_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \data_count[3]_i_2 
       (.I0(Q[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(Q[1]),
        .O(\data_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \data_count[4]_i_1 
       (.I0(Q[3]),
        .I1(\data_count[4]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(\next_state[5]_i_6_n_0 ),
        .O(\read_state_reg[0] [4]));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \data_count[4]_i_2 
       (.I0(\read_state_reg[1]_3 ),
        .I1(\read_state_reg[1]_2 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\data_count[4]_i_3_n_0 ),
        .I5(Q[1]),
        .O(\data_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_count[4]_i_3 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\data_count[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88A82222)) 
    \data_count[5]_i_2 
       (.I0(\next_state[5]_i_6_n_0 ),
        .I1(\data_count[5]_i_3_n_0 ),
        .I2(\read_state_reg[1]_3 ),
        .I3(\read_state_reg[1]_2 ),
        .I4(Q[5]),
        .O(\read_state_reg[0] [5]));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \data_count[5]_i_3 
       (.I0(Q[4]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(Q[2]),
        .I4(\data_count[3]_i_2_n_0 ),
        .I5(Q[3]),
        .O(\data_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    dht11_data_INST_0
       (.I0(1'b0),
        .I1(dht11_data_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(dht11_data));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(ff_old_reg_0),
        .D(dht11_data),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(ff_old_reg_0),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    humidity1__2_carry__0_i_1
       (.I0(humidity1__2_carry__0_i_8_n_0),
        .I1(humidity1__2_carry__0_i_9_n_0),
        .I2(\humidity_reg[7] [36]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [37]),
        .O(\temp_data_reg[36] [2]));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry__0_i_10
       (.I0(\humidity_reg[7] [11]),
        .I1(\humidity_reg[7] [12]),
        .I2(D[3]),
        .I3(\humidity_reg[7] [27]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [28]),
        .O(humidity1__2_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFEEF3E2E2C02200)) 
    humidity1__2_carry__0_i_11
       (.I0(\humidity_reg[7] [11]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [10]),
        .I3(\humidity_reg[7] [27]),
        .I4(\humidity_reg[7] [26]),
        .I5(D[2]),
        .O(humidity1__2_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFEEF3E2E2C02200)) 
    humidity1__2_carry__0_i_12
       (.I0(\humidity_reg[7] [13]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [12]),
        .I3(\humidity_reg[7] [29]),
        .I4(\humidity_reg[7] [28]),
        .I5(D[4]),
        .O(humidity1__2_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hB8748B47478B74B8)) 
    humidity1__2_carry__0_i_13
       (.I0(\humidity_reg[7] [14]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [15]),
        .I3(\humidity_reg[7] [22]),
        .I4(\humidity_reg[7] [23]),
        .I5(humidity1__2_carry__0_i_15_n_0),
        .O(humidity1__2_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry__0_i_14
       (.I0(\humidity_reg[7] [13]),
        .I1(\humidity_reg[7] [14]),
        .I2(D[5]),
        .I3(\humidity_reg[7] [29]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [30]),
        .O(humidity1__2_carry__0_i_14_n_0));
  LUT5 #(
    .INIT(32'h335ACC5A)) 
    humidity1__2_carry__0_i_15
       (.I0(\humidity_reg[7] [39]),
        .I1(\humidity_reg[7] [38]),
        .I2(\humidity_reg[7] [31]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [30]),
        .O(humidity1__2_carry__0_i_15_n_0));
  LUT5 #(
    .INIT(32'hDFD54540)) 
    humidity1__2_carry__0_i_2
       (.I0(humidity1__2_carry__0_i_10_n_0),
        .I1(\humidity_reg[7] [35]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [36]),
        .I4(humidity1__2_carry__0_i_11_n_0),
        .O(\temp_data_reg[36] [1]));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    humidity1__2_carry__0_i_3
       (.I0(humidity1__2_carry_i_12_n_0),
        .I1(humidity1__2_carry_i_13_n_0),
        .I2(\humidity_reg[7] [34]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [35]),
        .O(\temp_data_reg[36] [0]));
  LUT6 #(
    .INIT(64'hE8818117177E7EE8)) 
    humidity1__2_carry__0_i_4
       (.I0(humidity1__2_carry__0_i_12_n_0),
        .I1(\temp_data_reg[38] [30]),
        .I2(\temp_data_reg[38] [14]),
        .I3(\temp_data_reg[38] [22]),
        .I4(D[5]),
        .I5(humidity1__2_carry__0_i_13_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_5
       (.I0(\temp_data_reg[36] [2]),
        .I1(humidity1__2_carry__0_i_12_n_0),
        .I2(\humidity_reg[7] [37]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [38]),
        .I5(humidity1__2_carry__0_i_14_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_6
       (.I0(\temp_data_reg[36] [1]),
        .I1(humidity1__2_carry__0_i_8_n_0),
        .I2(\humidity_reg[7] [36]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [37]),
        .I5(humidity1__2_carry__0_i_9_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry__0_i_7
       (.I0(\temp_data_reg[36] [0]),
        .I1(humidity1__2_carry__0_i_11_n_0),
        .I2(\humidity_reg[7] [35]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [36]),
        .I5(humidity1__2_carry__0_i_10_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hFFEEF3E2E2C02200)) 
    humidity1__2_carry__0_i_8
       (.I0(\humidity_reg[7] [12]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [11]),
        .I3(\humidity_reg[7] [28]),
        .I4(\humidity_reg[7] [27]),
        .I5(D[3]),
        .O(humidity1__2_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry__0_i_9
       (.I0(\humidity_reg[7] [12]),
        .I1(\humidity_reg[7] [13]),
        .I2(D[4]),
        .I3(\humidity_reg[7] [28]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [29]),
        .O(humidity1__2_carry__0_i_9_n_0));
  LUT5 #(
    .INIT(32'hB2BBB222)) 
    humidity1__2_carry_i_1
       (.I0(humidity1__2_carry_i_9_n_0),
        .I1(humidity1__2_carry_i_10_n_0),
        .I2(\humidity_reg[7] [33]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [34]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry_i_10
       (.I0(\humidity_reg[7] [9]),
        .I1(\humidity_reg[7] [10]),
        .I2(D[1]),
        .I3(\humidity_reg[7] [25]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [26]),
        .O(humidity1__2_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry_i_11
       (.I0(\humidity_reg[7] [8]),
        .I1(\humidity_reg[7] [9]),
        .I2(\temp_data_reg[16] ),
        .I3(\humidity_reg[7] [24]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [25]),
        .O(humidity1__2_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFEEF3E2E2C02200)) 
    humidity1__2_carry_i_12
       (.I0(\humidity_reg[7] [10]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [9]),
        .I3(\humidity_reg[7] [26]),
        .I4(\humidity_reg[7] [25]),
        .I5(D[1]),
        .O(humidity1__2_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h5AA53C3C5AA5C3C3)) 
    humidity1__2_carry_i_13
       (.I0(\humidity_reg[7] [10]),
        .I1(\humidity_reg[7] [11]),
        .I2(D[2]),
        .I3(\humidity_reg[7] [26]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [27]),
        .O(humidity1__2_carry_i_13_n_0));
  LUT5 #(
    .INIT(32'h66699969)) 
    humidity1__2_carry_i_2
       (.I0(humidity1__2_carry_i_9_n_0),
        .I1(humidity1__2_carry_i_10_n_0),
        .I2(\humidity_reg[7] [34]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [33]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'hA959)) 
    humidity1__2_carry_i_3
       (.I0(humidity1__2_carry_i_11_n_0),
        .I1(\humidity_reg[7] [33]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [32]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hC33CA5A5C33C5A5A)) 
    humidity1__2_carry_i_4
       (.I0(\humidity_reg[7] [8]),
        .I1(\humidity_reg[7] [7]),
        .I2(D[0]),
        .I3(\humidity_reg[7] [23]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [24]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h9699966669666999)) 
    humidity1__2_carry_i_5
       (.I0(DI[3]),
        .I1(humidity1__2_carry_i_12_n_0),
        .I2(\humidity_reg[7] [34]),
        .I3(\data_count[1]_i_2_n_0 ),
        .I4(\humidity_reg[7] [35]),
        .I5(humidity1__2_carry_i_13_n_0),
        .O(\temp_data_reg[34] [3]));
  LUT6 #(
    .INIT(64'h9666666966696999)) 
    humidity1__2_carry_i_6
       (.I0(\temp_data_reg[38] [26]),
        .I1(humidity1__2_carry_i_10_n_0),
        .I2(\temp_data_reg[38] [9]),
        .I3(\temp_data_reg[16] ),
        .I4(\temp_data_reg[38] [17]),
        .I5(\temp_data_reg[38] [25]),
        .O(\temp_data_reg[34] [2]));
  LUT6 #(
    .INIT(64'h5656566A6A6A566A)) 
    humidity1__2_carry_i_7
       (.I0(DI[1]),
        .I1(D[0]),
        .I2(\temp_data_reg[38] [16]),
        .I3(\humidity_reg[7] [8]),
        .I4(\data_count[1]_i_2_n_0 ),
        .I5(\humidity_reg[7] [7]),
        .O(\temp_data_reg[34] [1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    humidity1__2_carry_i_8
       (.I0(DI[0]),
        .I1(\humidity_reg[7] [32]),
        .I2(\data_count[1]_i_2_n_0 ),
        .I3(\humidity_reg[7] [31]),
        .O(\temp_data_reg[34] [0]));
  LUT6 #(
    .INIT(64'hFFEEF3E2E2C02200)) 
    humidity1__2_carry_i_9
       (.I0(\humidity_reg[7] [9]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [8]),
        .I3(\humidity_reg[7] [25]),
        .I4(\humidity_reg[7] [24]),
        .I5(\temp_data_reg[16] ),
        .O(humidity1__2_carry_i_9_n_0));
  LUT6 #(
    .INIT(64'h0200000200000000)) 
    \humidity[7]_i_1 
       (.I0(\temperature_reg[0] ),
        .I1(\humidity[7]_i_2_n_0 ),
        .I2(\humidity[7]_i_3_n_0 ),
        .I3(\temp_data_reg[38] [0]),
        .I4(humidity1[0]),
        .I5(\humidity[7]_i_4_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF47B8FFFF)) 
    \humidity[7]_i_2 
       (.I0(\humidity_reg[7] [5]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [6]),
        .I3(humidity1[6]),
        .I4(s00_axi_aresetn),
        .I5(\humidity[7]_i_5_n_0 ),
        .O(\humidity[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF47B8)) 
    \humidity[7]_i_3 
       (.I0(\humidity_reg[7] [2]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [3]),
        .I3(humidity1[3]),
        .I4(\humidity[7]_i_6_n_0 ),
        .O(\humidity[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7E00)) 
    \humidity[7]_i_4 
       (.I0(Q[3]),
        .I1(\data_count[4]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\humidity[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h47B8FFFFFFFF47B8)) 
    \humidity[7]_i_5 
       (.I0(\humidity_reg[7] [6]),
        .I1(\data_count[1]_i_2_n_0 ),
        .I2(\humidity_reg[7] [7]),
        .I3(humidity1[7]),
        .I4(\temp_data_reg[38] [2]),
        .I5(humidity1[2]),
        .O(\humidity[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \humidity[7]_i_6 
       (.I0(\temp_data_reg[38] [5]),
        .I1(humidity1[5]),
        .I2(humidity1[4]),
        .I3(\temp_data_reg[38] [4]),
        .I4(humidity1[1]),
        .I5(\temp_data_reg[38] [1]),
        .O(\humidity[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAAAAAA8AAA8)) 
    \next_state[5]_i_1 
       (.I0(\next_state_reg[0] ),
        .I1(\next_state_reg[0]_0 ),
        .I2(\next_state[5]_i_4_n_0 ),
        .I3(\next_state[5]_i_5_n_0 ),
        .I4(\next_state[5]_i_6_n_0 ),
        .I5(\next_state_reg[0]_1 [3]),
        .O(\state_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEEE0E00)) 
    \next_state[5]_i_4 
       (.I0(\next_state_reg[0]_1 [2]),
        .I1(\next_state_reg[0]_1 [0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(count_usec_e_reg),
        .O(\next_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \next_state[5]_i_5 
       (.I0(\next_state_reg[0]_1 [1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(count_usec_e_reg),
        .O(\next_state[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \next_state[5]_i_6 
       (.I0(count_usec_e_reg),
        .I1(\humidity[7]_i_4_n_0 ),
        .O(\next_state[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7407744)) 
    \read_state[0]_i_1 
       (.I0(\read_state[1]_i_2_n_0 ),
        .I1(\read_state_reg[1]_1 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(\read_state_reg[1]_3 ),
        .I4(\next_state[5]_i_6_n_0 ),
        .O(\read_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF8B0B8B8)) 
    \read_state[1]_i_1 
       (.I0(\read_state[1]_i_2_n_0 ),
        .I1(\read_state_reg[1]_1 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(\read_state_reg[1]_3 ),
        .I4(\next_state[5]_i_6_n_0 ),
        .O(\read_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h45445545)) 
    \read_state[1]_i_2 
       (.I0(count_usec_e_reg),
        .I1(\humidity[7]_i_4_n_0 ),
        .I2(\read_state_reg[1]_3 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(\read_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEE0EEE0EEE0)) 
    \temp_data[0]_i_1 
       (.I0(\data_count[1]_i_2_n_0 ),
        .I1(\humidity_reg[7] [0]),
        .I2(\temp_data_reg[0] ),
        .I3(\temp_data[0]_i_3_n_0 ),
        .I4(count_usec_reg[0]),
        .I5(\temp_data_reg[0]_0 ),
        .O(\temp_data_reg[38] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \temp_data[0]_i_3 
       (.I0(\temp_data_reg[0]_1 ),
        .I1(count_usec_reg[2]),
        .I2(count_usec_reg[1]),
        .I3(count_usec_reg[4]),
        .I4(count_usec_reg[3]),
        .I5(\data_count[1]_i_2_n_0 ),
        .O(\temp_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[10]_i_1 
       (.I0(\humidity_reg[7] [10]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [9]),
        .O(\temp_data_reg[38] [10]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[11]_i_1 
       (.I0(\humidity_reg[7] [11]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [10]),
        .O(\temp_data_reg[38] [11]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[12]_i_1 
       (.I0(\humidity_reg[7] [12]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [11]),
        .O(\temp_data_reg[38] [12]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[13]_i_1 
       (.I0(\humidity_reg[7] [13]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [12]),
        .O(\temp_data_reg[38] [13]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[14]_i_1 
       (.I0(\humidity_reg[7] [14]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [13]),
        .O(\temp_data_reg[38] [14]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[15]_i_1 
       (.I0(\humidity_reg[7] [14]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [15]),
        .O(\temp_data_reg[38] [15]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[16]_i_1 
       (.I0(\humidity_reg[7] [15]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [16]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[17]_i_1 
       (.I0(\humidity_reg[7] [16]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [17]),
        .O(\temp_data_reg[16] ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[18]_i_1 
       (.I0(\humidity_reg[7] [17]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [18]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[19]_i_1 
       (.I0(\humidity_reg[7] [18]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [19]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[1]_i_1 
       (.I0(\humidity_reg[7] [0]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [1]),
        .O(\temp_data_reg[38] [1]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[20]_i_1 
       (.I0(\humidity_reg[7] [19]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [20]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[21]_i_1 
       (.I0(\humidity_reg[7] [20]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [21]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[22]_i_1 
       (.I0(\humidity_reg[7] [21]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [22]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[23]_i_1 
       (.I0(\humidity_reg[7] [22]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [23]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[24]_i_1 
       (.I0(\humidity_reg[7] [23]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [24]),
        .O(\temp_data_reg[38] [16]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[25]_i_1 
       (.I0(\humidity_reg[7] [24]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [25]),
        .O(\temp_data_reg[38] [17]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[26]_i_1 
       (.I0(\humidity_reg[7] [25]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [26]),
        .O(\temp_data_reg[38] [18]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[27]_i_1 
       (.I0(\humidity_reg[7] [26]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [27]),
        .O(\temp_data_reg[38] [19]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[28]_i_1 
       (.I0(\humidity_reg[7] [27]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [28]),
        .O(\temp_data_reg[38] [20]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[29]_i_1 
       (.I0(\humidity_reg[7] [28]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [29]),
        .O(\temp_data_reg[38] [21]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[2]_i_1 
       (.I0(\humidity_reg[7] [1]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [2]),
        .O(\temp_data_reg[38] [2]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[30]_i_1 
       (.I0(\humidity_reg[7] [29]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [30]),
        .O(\temp_data_reg[38] [22]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[31]_i_1 
       (.I0(\humidity_reg[7] [30]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [31]),
        .O(\temp_data_reg[38] [23]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[32]_i_1 
       (.I0(\humidity_reg[7] [31]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [32]),
        .O(\temp_data_reg[38] [24]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[33]_i_1 
       (.I0(\humidity_reg[7] [32]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [33]),
        .O(\temp_data_reg[38] [25]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[34]_i_1 
       (.I0(\humidity_reg[7] [34]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [33]),
        .O(\temp_data_reg[38] [26]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[35]_i_1 
       (.I0(\humidity_reg[7] [35]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [34]),
        .O(\temp_data_reg[38] [27]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[36]_i_1 
       (.I0(\humidity_reg[7] [36]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [35]),
        .O(\temp_data_reg[38] [28]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[37]_i_1 
       (.I0(\humidity_reg[7] [37]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [36]),
        .O(\temp_data_reg[38] [29]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[38]_i_1 
       (.I0(\humidity_reg[7] [38]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [37]),
        .O(\temp_data_reg[38] [30]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[39]_i_2 
       (.I0(\humidity_reg[7] [38]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [39]),
        .O(\temp_data_reg[38] [31]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[3]_i_1 
       (.I0(\humidity_reg[7] [2]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [3]),
        .O(\temp_data_reg[38] [3]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[4]_i_1 
       (.I0(\humidity_reg[7] [3]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [4]),
        .O(\temp_data_reg[38] [4]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[5]_i_1 
       (.I0(\humidity_reg[7] [4]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [5]),
        .O(\temp_data_reg[38] [5]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[6]_i_1 
       (.I0(\humidity_reg[7] [5]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [6]),
        .O(\temp_data_reg[38] [6]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[7]_i_1 
       (.I0(\humidity_reg[7] [6]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [7]),
        .O(\temp_data_reg[38] [7]));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \temp_data[8]_i_1 
       (.I0(\humidity_reg[7] [7]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [8]),
        .O(\temp_data_reg[38] [8]));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAA8AAA)) 
    \temp_data[9]_i_1 
       (.I0(\humidity_reg[7] [9]),
        .I1(\read_state_reg[1]_3 ),
        .I2(\read_state_reg[1]_2 ),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(\humidity_reg[7] [8]),
        .O(\temp_data_reg[38] [9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0
   (Q,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    dht11_data,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [5:0]Q;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  inout dht11_data;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [5:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire count_usec_e_i_1_n_0;
  wire \dht11/count_usec_e10_out ;
  wire dht11_data;
  wire dht11_data_INST_0_i_1_n_0;
  wire myip_dht11_v1_0_S00_AXI_inst_n_3;
  wire myip_dht11_v1_0_S00_AXI_inst_n_47;
  wire myip_dht11_v1_0_S00_AXI_inst_n_48;
  wire myip_dht11_v1_0_S00_AXI_inst_n_49;
  wire myip_dht11_v1_0_S00_AXI_inst_n_5;
  wire myip_dht11_v1_0_S00_AXI_inst_n_50;
  wire myip_dht11_v1_0_S00_AXI_inst_n_7;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(myip_dht11_v1_0_S00_AXI_inst_n_5),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    count_usec_e_i_1
       (.I0(myip_dht11_v1_0_S00_AXI_inst_n_48),
        .I1(myip_dht11_v1_0_S00_AXI_inst_n_50),
        .I2(myip_dht11_v1_0_S00_AXI_inst_n_49),
        .I3(myip_dht11_v1_0_S00_AXI_inst_n_47),
        .I4(\dht11/count_usec_e10_out ),
        .I5(myip_dht11_v1_0_S00_AXI_inst_n_3),
        .O(count_usec_e_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    dht11_data_INST_0_i_1
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(myip_dht11_v1_0_S00_AXI_inst_n_7),
        .Q(dht11_data_INST_0_i_1_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI myip_dht11_v1_0_S00_AXI_inst
       (.Q(Q),
        .aw_en_reg_0(myip_dht11_v1_0_S00_AXI_inst_n_5),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .count_usec_e10_out(\dht11/count_usec_e10_out ),
        .count_usec_e_reg(myip_dht11_v1_0_S00_AXI_inst_n_3),
        .count_usec_e_reg_0(count_usec_e_i_1_n_0),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_INST_0_i_1_n_0),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\state_reg[0] (myip_dht11_v1_0_S00_AXI_inst_n_7),
        .\state_reg[1] (myip_dht11_v1_0_S00_AXI_inst_n_47),
        .\state_reg[3] (myip_dht11_v1_0_S00_AXI_inst_n_50),
        .\state_reg[4] (myip_dht11_v1_0_S00_AXI_inst_n_49),
        .\state_reg[5] (myip_dht11_v1_0_S00_AXI_inst_n_48));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_dht11_v1_0_S00_AXI
   (axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    count_usec_e_reg,
    s00_axi_bvalid,
    aw_en_reg_0,
    s00_axi_rvalid,
    \state_reg[0] ,
    Q,
    s00_axi_rdata,
    count_usec_e10_out,
    \state_reg[1] ,
    \state_reg[5] ,
    \state_reg[4] ,
    \state_reg[3] ,
    dht11_data,
    s00_axi_aclk,
    count_usec_e_reg_0,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    dht11_data_0,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn);
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output count_usec_e_reg;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output s00_axi_rvalid;
  output \state_reg[0] ;
  output [5:0]Q;
  output [31:0]s00_axi_rdata;
  output count_usec_e10_out;
  output \state_reg[1] ;
  output \state_reg[5] ;
  output \state_reg[4] ;
  output \state_reg[3] ;
  inout dht11_data;
  input s00_axi_aclk;
  input count_usec_e_reg_0;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input dht11_data_0;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;

  wire [5:0]Q;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire count_usec_e10_out;
  wire count_usec_e_reg;
  wire count_usec_e_reg_0;
  wire dht11_data;
  wire dht11_data_0;
  wire dht11_n_0;
  wire [7:0]humidity;
  wire [2:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire \state_reg[0] ;
  wire \state_reg[1] ;
  wire \state_reg[3] ;
  wire \state_reg[4] ;
  wire \state_reg[5] ;
  wire [7:0]temperature;

  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(dht11_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(dht11_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(dht11_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(dht11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(dht11_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in_0[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in_0[0]),
        .R(dht11_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(dht11_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(dht11_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(dht11_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(dht11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(sel0[1]),
        .I3(temperature[0]),
        .I4(sel0[0]),
        .I5(humidity[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[10]),
        .I4(sel0[0]),
        .I5(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[11]),
        .I4(sel0[0]),
        .I5(slv_reg3[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[12]),
        .I4(sel0[0]),
        .I5(slv_reg3[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[13]),
        .I4(sel0[0]),
        .I5(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[14]),
        .I4(sel0[0]),
        .I5(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[15]),
        .I4(sel0[0]),
        .I5(slv_reg3[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[16]),
        .I4(sel0[0]),
        .I5(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[17]),
        .I4(sel0[0]),
        .I5(slv_reg3[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[18]),
        .I4(sel0[0]),
        .I5(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[19]),
        .I4(sel0[0]),
        .I5(slv_reg3[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(sel0[1]),
        .I3(temperature[1]),
        .I4(sel0[0]),
        .I5(humidity[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[20]),
        .I4(sel0[0]),
        .I5(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[21]),
        .I4(sel0[0]),
        .I5(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[22]),
        .I4(sel0[0]),
        .I5(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[23]),
        .I4(sel0[0]),
        .I5(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[24]),
        .I4(sel0[0]),
        .I5(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[25]),
        .I4(sel0[0]),
        .I5(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[26]),
        .I4(sel0[0]),
        .I5(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[27]),
        .I4(sel0[0]),
        .I5(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[28]),
        .I4(sel0[0]),
        .I5(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[29]),
        .I4(sel0[0]),
        .I5(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(sel0[1]),
        .I3(temperature[2]),
        .I4(sel0[0]),
        .I5(humidity[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[30]),
        .I4(sel0[0]),
        .I5(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[31]),
        .I4(sel0[0]),
        .I5(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(sel0[1]),
        .I3(temperature[3]),
        .I4(sel0[0]),
        .I5(humidity[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(sel0[1]),
        .I3(temperature[4]),
        .I4(sel0[0]),
        .I5(humidity[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(sel0[1]),
        .I3(temperature[5]),
        .I4(sel0[0]),
        .I5(humidity[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(sel0[1]),
        .I3(temperature[6]),
        .I4(sel0[0]),
        .I5(humidity[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(temperature[7]),
        .I4(sel0[0]),
        .I5(humidity[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[8]),
        .I4(sel0[0]),
        .I5(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(slv_reg2[9]),
        .I4(sel0[0]),
        .I5(slv_reg3[9]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(dht11_n_0));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(dht11_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(dht11_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(dht11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(dht11_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dht11_cntr dht11
       (.Q(Q),
        .SR(dht11_n_0),
        .count_usec_e10_out(count_usec_e10_out),
        .count_usec_e_reg_0(count_usec_e_reg),
        .count_usec_e_reg_1(count_usec_e_reg_0),
        .dht11_data(dht11_data),
        .dht11_data_0(dht11_data_0),
        .\humidity_reg[7]_0 (humidity),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\state_reg[0]_0 (\state_reg[0] ),
        .\state_reg[1]_0 (\state_reg[1] ),
        .\state_reg[3]_0 (\state_reg[3] ),
        .\state_reg[4]_0 (\state_reg[4] ),
        .\state_reg[5]_0 (\state_reg[5] ),
        .\temperature_reg[7]_0 (temperature));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[1]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg2[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(dht11_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(dht11_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(dht11_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(dht11_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(dht11_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(dht11_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(dht11_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(dht11_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(dht11_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(dht11_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(dht11_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(dht11_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
