// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Nov  5 17:30:01 2024
// Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Remo_cuckoo_myip_clock_timer_0_0_sim_netlist.v
// Design      : Remo_cuckoo_myip_clock_timer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Remo_cuckoo_myip_clock_timer_0_0,myip_clock_timer_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_clock_timer_v1_0,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_awaddr,
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
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p
   (q_reg_0,
    D,
    q_reg_1,
    s00_axi_aclk,
    AR,
    sel0,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[19]_1 ,
    Q,
    \axi_rdata[19]_i_2_0 ,
    \axi_rdata[19]_i_2_1 );
  output q_reg_0;
  output [0:0]D;
  input q_reg_1;
  input s00_axi_aclk;
  input [0:0]AR;
  input [2:0]sel0;
  input \axi_rdata_reg[19] ;
  input [0:0]\axi_rdata_reg[19]_0 ;
  input [0:0]\axi_rdata_reg[19]_1 ;
  input [0:0]Q;
  input \axi_rdata[19]_i_2_0 ;
  input \axi_rdata[19]_i_2_1 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]Q;
  wire \axi_rdata[19]_i_2_0 ;
  wire \axi_rdata[19]_i_2_1 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata_reg[19] ;
  wire [0:0]\axi_rdata_reg[19]_0 ;
  wire [0:0]\axi_rdata_reg[19]_1 ;
  wire \axi_rdata_reg[19]_i_4_n_0 ;
  wire q_reg_0;
  wire q_reg_1;
  wire s00_axi_aclk;
  wire [2:0]sel0;

  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \axi_rdata[19]_i_2 
       (.I0(\axi_rdata_reg[19]_0 ),
        .I1(\axi_rdata_reg[19]_1 ),
        .I2(\axi_rdata_reg[19]_i_4_n_0 ),
        .I3(sel0[0]),
        .I4(Q),
        .I5(sel0[1]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata_reg[19] ),
        .O(D),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_4 
       (.I0(\axi_rdata[19]_i_2_0 ),
        .I1(\axi_rdata[19]_i_2_1 ),
        .O(\axi_rdata_reg[19]_i_4_n_0 ),
        .S(q_reg_0));
  FDCE q_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr
   (p_0_in,
    ff_old_reg,
    s00_axi_aclk,
    AR,
    Q);
  output [1:0]p_0_in;
  output ff_old_reg;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]Q;

  wire [0:0]AR;
  wire [0:0]Q;
  wire \clk_div[0]_i_2_n_0 ;
  wire \clk_div_reg[0]_i_1_n_0 ;
  wire \clk_div_reg[0]_i_1_n_1 ;
  wire \clk_div_reg[0]_i_1_n_2 ;
  wire \clk_div_reg[0]_i_1_n_3 ;
  wire \clk_div_reg[0]_i_1_n_4 ;
  wire \clk_div_reg[0]_i_1_n_5 ;
  wire \clk_div_reg[0]_i_1_n_6 ;
  wire \clk_div_reg[0]_i_1_n_7 ;
  wire \clk_div_reg[12]_i_1_n_0 ;
  wire \clk_div_reg[12]_i_1_n_1 ;
  wire \clk_div_reg[12]_i_1_n_2 ;
  wire \clk_div_reg[12]_i_1_n_3 ;
  wire \clk_div_reg[12]_i_1_n_4 ;
  wire \clk_div_reg[12]_i_1_n_5 ;
  wire \clk_div_reg[12]_i_1_n_6 ;
  wire \clk_div_reg[12]_i_1_n_7 ;
  wire \clk_div_reg[16]_i_1_n_7 ;
  wire \clk_div_reg[4]_i_1_n_0 ;
  wire \clk_div_reg[4]_i_1_n_1 ;
  wire \clk_div_reg[4]_i_1_n_2 ;
  wire \clk_div_reg[4]_i_1_n_3 ;
  wire \clk_div_reg[4]_i_1_n_4 ;
  wire \clk_div_reg[4]_i_1_n_5 ;
  wire \clk_div_reg[4]_i_1_n_6 ;
  wire \clk_div_reg[4]_i_1_n_7 ;
  wire \clk_div_reg[8]_i_1_n_0 ;
  wire \clk_div_reg[8]_i_1_n_1 ;
  wire \clk_div_reg[8]_i_1_n_2 ;
  wire \clk_div_reg[8]_i_1_n_3 ;
  wire \clk_div_reg[8]_i_1_n_4 ;
  wire \clk_div_reg[8]_i_1_n_5 ;
  wire \clk_div_reg[8]_i_1_n_6 ;
  wire \clk_div_reg[8]_i_1_n_7 ;
  wire \clk_div_reg_n_0_[0] ;
  wire \clk_div_reg_n_0_[10] ;
  wire \clk_div_reg_n_0_[11] ;
  wire \clk_div_reg_n_0_[12] ;
  wire \clk_div_reg_n_0_[13] ;
  wire \clk_div_reg_n_0_[14] ;
  wire \clk_div_reg_n_0_[15] ;
  wire \clk_div_reg_n_0_[1] ;
  wire \clk_div_reg_n_0_[2] ;
  wire \clk_div_reg_n_0_[3] ;
  wire \clk_div_reg_n_0_[4] ;
  wire \clk_div_reg_n_0_[5] ;
  wire \clk_div_reg_n_0_[6] ;
  wire \clk_div_reg_n_0_[7] ;
  wire \clk_div_reg_n_0_[8] ;
  wire \clk_div_reg_n_0_[9] ;
  wire cp;
  wire debounced_btn;
  wire ff_old_reg;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire [3:0]\NLW_clk_div_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_clk_div_reg[16]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_2 
       (.I0(\clk_div_reg_n_0_[0] ),
        .O(\clk_div[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clk_div_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_div_reg[0]_i_1_n_0 ,\clk_div_reg[0]_i_1_n_1 ,\clk_div_reg[0]_i_1_n_2 ,\clk_div_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_reg[0]_i_1_n_4 ,\clk_div_reg[0]_i_1_n_5 ,\clk_div_reg[0]_i_1_n_6 ,\clk_div_reg[0]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[3] ,\clk_div_reg_n_0_[2] ,\clk_div_reg_n_0_[1] ,\clk_div[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \clk_div_reg[12]_i_1 
       (.CI(\clk_div_reg[8]_i_1_n_0 ),
        .CO({\clk_div_reg[12]_i_1_n_0 ,\clk_div_reg[12]_i_1_n_1 ,\clk_div_reg[12]_i_1_n_2 ,\clk_div_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[12]_i_1_n_4 ,\clk_div_reg[12]_i_1_n_5 ,\clk_div_reg[12]_i_1_n_6 ,\clk_div_reg[12]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[15] ,\clk_div_reg_n_0_[14] ,\clk_div_reg_n_0_[13] ,\clk_div_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[12]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[16]_i_1_n_7 ),
        .Q(cp),
        .R(1'b0));
  CARRY4 \clk_div_reg[16]_i_1 
       (.CI(\clk_div_reg[12]_i_1_n_0 ),
        .CO(\NLW_clk_div_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_reg[16]_i_1_O_UNCONNECTED [3:1],\clk_div_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,cp}));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[0]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \clk_div_reg[4]_i_1 
       (.CI(\clk_div_reg[0]_i_1_n_0 ),
        .CO({\clk_div_reg[4]_i_1_n_0 ,\clk_div_reg[4]_i_1_n_1 ,\clk_div_reg[4]_i_1_n_2 ,\clk_div_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[4]_i_1_n_4 ,\clk_div_reg[4]_i_1_n_5 ,\clk_div_reg[4]_i_1_n_6 ,\clk_div_reg[4]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[7] ,\clk_div_reg_n_0_[6] ,\clk_div_reg_n_0_[5] ,\clk_div_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_5 ),
        .Q(\clk_div_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[4]_i_1_n_4 ),
        .Q(\clk_div_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_7 ),
        .Q(\clk_div_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \clk_div_reg[8]_i_1 
       (.CI(\clk_div_reg[4]_i_1_n_0 ),
        .CO({\clk_div_reg[8]_i_1_n_0 ,\clk_div_reg[8]_i_1_n_1 ,\clk_div_reg[8]_i_1_n_2 ,\clk_div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_reg[8]_i_1_n_4 ,\clk_div_reg[8]_i_1_n_5 ,\clk_div_reg[8]_i_1_n_6 ,\clk_div_reg[8]_i_1_n_7 }),
        .S({\clk_div_reg_n_0_[11] ,\clk_div_reg_n_0_[10] ,\clk_div_reg_n_0_[9] ,\clk_div_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_reg[8]_i_1_n_6 ),
        .Q(\clk_div_reg_n_0_[9] ),
        .R(1'b0));
  FDCE debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(ff_old_reg),
        .CLR(AR),
        .D(Q),
        .Q(debounced_btn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24 ed
       (.AR(AR),
        .S(cp),
        .ff_old_reg_0(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25 ed1
       (.AR(AR),
        .debounced_btn(debounced_btn),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "button_cntr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0
   (inc_sec,
    btn_sec,
    s00_axi_aclk,
    AR,
    debounced_btn_reg_0,
    Q,
    ff_cur_reg,
    p_0_in);
  output inc_sec;
  output btn_sec;
  input s00_axi_aclk;
  input [0:0]AR;
  input debounced_btn_reg_0;
  input [0:0]Q;
  input ff_cur_reg;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire [0:0]Q;
  wire btn_sec;
  wire debounced_btn_reg_0;
  wire debounced_btn_reg_n_0;
  wire ff_cur_reg;
  wire inc_sec;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(debounced_btn_reg_0),
        .CLR(AR),
        .D(Q),
        .Q(debounced_btn_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23 ed1
       (.AR(AR),
        .btn_sec(btn_sec),
        .ff_cur_reg_0(debounced_btn_reg_n_0),
        .ff_cur_reg_1(ff_cur_reg),
        .inc_sec(inc_sec),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "button_cntr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1
   (inc_min,
    btn_min,
    s00_axi_aclk,
    AR,
    debounced_btn_reg_0,
    Q,
    ff_cur_reg,
    p_0_in);
  output inc_min;
  output btn_min;
  input s00_axi_aclk;
  input [0:0]AR;
  input debounced_btn_reg_0;
  input [0:0]Q;
  input ff_cur_reg;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire [0:0]Q;
  wire btn_min;
  wire debounced_btn_reg_0;
  wire debounced_btn_reg_n_0;
  wire ff_cur_reg;
  wire inc_min;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(debounced_btn_reg_0),
        .CLR(AR),
        .D(Q),
        .Q(debounced_btn_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22 ed1
       (.AR(AR),
        .btn_min(btn_min),
        .ff_cur_reg_0(debounced_btn_reg_n_0),
        .ff_cur_reg_1(ff_cur_reg),
        .inc_min(inc_min),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "button_cntr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2
   (ff_cur_reg,
    s00_axi_aclk,
    AR,
    debounced_btn_reg_0,
    Q);
  output ff_cur_reg;
  input s00_axi_aclk;
  input [0:0]AR;
  input debounced_btn_reg_0;
  input [0:0]Q;

  wire [0:0]AR;
  wire [0:0]Q;
  wire debounced_btn_reg_0;
  wire debounced_btn_reg_n_0;
  wire ff_cur_reg;
  wire s00_axi_aclk;

  FDCE debounced_btn_reg
       (.C(s00_axi_aclk),
        .CE(debounced_btn_reg_0),
        .CLR(AR),
        .D(Q),
        .Q(debounced_btn_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p ed1
       (.AR(AR),
        .ff_cur_reg_0(ff_cur_reg),
        .ff_cur_reg_1(debounced_btn_reg_n_0),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100
   (ff_old_reg,
    s00_axi_aclk,
    AR);
  output [0:0]ff_old_reg;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire \cnt_sysclk[4]_i_2_n_0 ;
  wire \cnt_sysclk[6]_i_2_n_0 ;
  wire [6:0]cnt_sysclk_reg;
  wire [0:0]ff_old_reg;
  wire [6:0]p_0_in__0;
  wire s00_axi_aclk;

  LUT6 #(
    .INIT(64'h000000007777777F)) 
    \cnt_sysclk[0]_i_1 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[6]),
        .I2(cnt_sysclk_reg[4]),
        .I3(cnt_sysclk_reg[3]),
        .I4(cnt_sysclk_reg[2]),
        .I5(cnt_sysclk_reg[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'h0000FF01FF010000)) 
    \cnt_sysclk[1]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[3]),
        .I2(cnt_sysclk_reg[4]),
        .I3(\cnt_sysclk[4]_i_2_n_0 ),
        .I4(cnt_sysclk_reg[0]),
        .I5(cnt_sysclk_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h07777000)) 
    \cnt_sysclk[2]_i_1 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[6]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[0]),
        .I4(cnt_sysclk_reg[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \cnt_sysclk[3]_i_1 
       (.I0(cnt_sysclk_reg[1]),
        .I1(cnt_sysclk_reg[0]),
        .I2(cnt_sysclk_reg[2]),
        .I3(cnt_sysclk_reg[6]),
        .I4(cnt_sysclk_reg[5]),
        .I5(cnt_sysclk_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \cnt_sysclk[4]_i_1 
       (.I0(cnt_sysclk_reg[2]),
        .I1(cnt_sysclk_reg[0]),
        .I2(cnt_sysclk_reg[1]),
        .I3(cnt_sysclk_reg[3]),
        .I4(\cnt_sysclk[4]_i_2_n_0 ),
        .I5(cnt_sysclk_reg[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_sysclk[4]_i_2 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[6]),
        .O(\cnt_sysclk[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h555700001555C000)) 
    \cnt_sysclk[5]_i_1 
       (.I0(cnt_sysclk_reg[6]),
        .I1(cnt_sysclk_reg[2]),
        .I2(cnt_sysclk_reg[3]),
        .I3(cnt_sysclk_reg[4]),
        .I4(cnt_sysclk_reg[5]),
        .I5(\cnt_sysclk[6]_i_2_n_0 ),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'h5557000055558000)) 
    \cnt_sysclk[6]_i_1 
       (.I0(cnt_sysclk_reg[5]),
        .I1(cnt_sysclk_reg[2]),
        .I2(cnt_sysclk_reg[3]),
        .I3(cnt_sysclk_reg[4]),
        .I4(cnt_sysclk_reg[6]),
        .I5(\cnt_sysclk[6]_i_2_n_0 ),
        .O(p_0_in__0[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_sysclk[6]_i_2 
       (.I0(cnt_sysclk_reg[0]),
        .I1(cnt_sysclk_reg[1]),
        .O(\cnt_sysclk[6]_i_2_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(cnt_sysclk_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(cnt_sysclk_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(cnt_sysclk_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(cnt_sysclk_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(cnt_sysclk_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(cnt_sysclk_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_sysclk_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[6]),
        .Q(cnt_sysclk_reg[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9 ed
       (.AR(AR),
        .Q(cnt_sysclk_reg[6:1]),
        .ff_old_reg_0(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000
   (E,
    s00_axi_aclk,
    AR,
    \cnt_clksource_reg[0]_0 );
  output [0:0]E;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]\cnt_clksource_reg[0]_0 ;

  wire [0:0]AR;
  wire [0:0]E;
  wire \cnt_clksource[4]_i_2_n_0 ;
  wire \cnt_clksource[6]_i_2_n_0 ;
  wire \cnt_clksource[6]_i_3_n_0 ;
  wire \cnt_clksource[9]_i_3_n_0 ;
  wire \cnt_clksource[9]_i_4_n_0 ;
  wire [9:0]cnt_clksource_reg;
  wire [0:0]\cnt_clksource_reg[0]_0 ;
  wire ed_n_1;
  wire [9:0]p_0_in__0__0;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \cnt_clksource[0]_i_1 
       (.I0(\cnt_clksource[4]_i_2_n_0 ),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[0]),
        .O(p_0_in__0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00F1F100)) 
    \cnt_clksource[1]_i_1 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[3]),
        .I2(\cnt_clksource[4]_i_2_n_0 ),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[1]),
        .O(p_0_in__0__0[1]));
  LUT6 #(
    .INIT(64'h00F1F1F1F1000000)) 
    \cnt_clksource[2]_i_1 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[3]),
        .I2(\cnt_clksource[4]_i_2_n_0 ),
        .I3(cnt_clksource_reg[1]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[2]),
        .O(p_0_in__0__0[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_clksource[3]_i_1 
       (.I0(\cnt_clksource[4]_i_2_n_0 ),
        .I1(cnt_clksource_reg[2]),
        .I2(cnt_clksource_reg[0]),
        .I3(cnt_clksource_reg[1]),
        .I4(cnt_clksource_reg[3]),
        .O(p_0_in__0__0[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clksource[4]_i_1 
       (.I0(\cnt_clksource[4]_i_2_n_0 ),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[4]),
        .O(p_0_in__0__0[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clksource[4]_i_2 
       (.I0(cnt_clksource_reg[6]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[7]),
        .I3(cnt_clksource_reg[8]),
        .I4(cnt_clksource_reg[9]),
        .O(\cnt_clksource[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF343)) 
    \cnt_clksource[5]_i_1 
       (.I0(cnt_clksource_reg[6]),
        .I1(\cnt_clksource[9]_i_3_n_0 ),
        .I2(cnt_clksource_reg[5]),
        .I3(\cnt_clksource[6]_i_2_n_0 ),
        .O(p_0_in__0__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF252)) 
    \cnt_clksource[6]_i_1 
       (.I0(cnt_clksource_reg[5]),
        .I1(\cnt_clksource[9]_i_3_n_0 ),
        .I2(cnt_clksource_reg[6]),
        .I3(\cnt_clksource[6]_i_2_n_0 ),
        .O(p_0_in__0__0[6]));
  LUT6 #(
    .INIT(64'h7F7F007F7FFF7F7F)) 
    \cnt_clksource[6]_i_2 
       (.I0(cnt_clksource_reg[9]),
        .I1(cnt_clksource_reg[8]),
        .I2(cnt_clksource_reg[7]),
        .I3(cnt_clksource_reg[3]),
        .I4(\cnt_clksource[6]_i_3_n_0 ),
        .I5(cnt_clksource_reg[4]),
        .O(\cnt_clksource[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clksource[6]_i_3 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .O(\cnt_clksource[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000F7070000F)) 
    \cnt_clksource[7]_i_1 
       (.I0(cnt_clksource_reg[8]),
        .I1(cnt_clksource_reg[9]),
        .I2(\cnt_clksource[9]_i_3_n_0 ),
        .I3(ed_n_1),
        .I4(cnt_clksource_reg[7]),
        .I5(\cnt_clksource[9]_i_4_n_0 ),
        .O(p_0_in__0__0[7]));
  LUT6 #(
    .INIT(64'hB0A0B0AFF0F0F0F0)) 
    \cnt_clksource[8]_i_1 
       (.I0(\cnt_clksource[9]_i_4_n_0 ),
        .I1(cnt_clksource_reg[9]),
        .I2(cnt_clksource_reg[8]),
        .I3(\cnt_clksource[9]_i_3_n_0 ),
        .I4(ed_n_1),
        .I5(cnt_clksource_reg[7]),
        .O(p_0_in__0__0[8]));
  LUT6 #(
    .INIT(64'hFFFF000877770008)) 
    \cnt_clksource[9]_i_2 
       (.I0(cnt_clksource_reg[7]),
        .I1(cnt_clksource_reg[8]),
        .I2(ed_n_1),
        .I3(\cnt_clksource[9]_i_3_n_0 ),
        .I4(cnt_clksource_reg[9]),
        .I5(\cnt_clksource[9]_i_4_n_0 ),
        .O(p_0_in__0__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clksource[9]_i_3 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[1]),
        .I2(cnt_clksource_reg[0]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[4]),
        .O(\cnt_clksource[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000007F)) 
    \cnt_clksource[9]_i_4 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .I3(cnt_clksource_reg[3]),
        .I4(cnt_clksource_reg[4]),
        .I5(ed_n_1),
        .O(\cnt_clksource[9]_i_4_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[0]),
        .Q(cnt_clksource_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[1]),
        .Q(cnt_clksource_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[2]),
        .Q(cnt_clksource_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[3]),
        .Q(cnt_clksource_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[4]),
        .Q(cnt_clksource_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[5]),
        .Q(cnt_clksource_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[6]),
        .Q(cnt_clksource_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[7]),
        .Q(cnt_clksource_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[8]),
        .Q(cnt_clksource_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\cnt_clksource_reg[0]_0 ),
        .CLR(AR),
        .D(p_0_in__0__0[9]),
        .Q(cnt_clksource_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13 ed
       (.AR(AR),
        .E(E),
        .Q(cnt_clksource_reg[9:2]),
        .\cnt_clksource_reg[5] (ed_n_1),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "clock_div_1000" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6
   (p_0_in,
    AR,
    clk_sec,
    s00_axi_aclk,
    s00_axi_aresetn,
    E);
  output [1:0]p_0_in;
  output [0:0]AR;
  output clk_sec;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [0:0]E;

  wire [0:0]AR;
  wire [0:0]E;
  wire clk_sec;
  wire \cnt_clksource[4]_i_2__0_n_0 ;
  wire \cnt_clksource[6]_i_2__0_n_0 ;
  wire \cnt_clksource[6]_i_3__0_n_0 ;
  wire \cnt_clksource[9]_i_3__0_n_0 ;
  wire \cnt_clksource[9]_i_4__0_n_0 ;
  wire [9:0]cnt_clksource_reg;
  wire ed_n_4;
  wire [1:0]p_0_in;
  wire [9:0]p_0_in__1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00AB)) 
    \cnt_clksource[0]_i_1__0 
       (.I0(\cnt_clksource[4]_i_2__0_n_0 ),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00F1F100)) 
    \cnt_clksource[1]_i_1__0 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[3]),
        .I2(\cnt_clksource[4]_i_2__0_n_0 ),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[1]),
        .O(p_0_in__1[1]));
  LUT6 #(
    .INIT(64'h00F1F1F1F1000000)) 
    \cnt_clksource[2]_i_1__0 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[3]),
        .I2(\cnt_clksource[4]_i_2__0_n_0 ),
        .I3(cnt_clksource_reg[1]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[2]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cnt_clksource[3]_i_1__0 
       (.I0(\cnt_clksource[4]_i_2__0_n_0 ),
        .I1(cnt_clksource_reg[2]),
        .I2(cnt_clksource_reg[0]),
        .I3(cnt_clksource_reg[1]),
        .I4(cnt_clksource_reg[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_clksource[4]_i_1__0 
       (.I0(\cnt_clksource[4]_i_2__0_n_0 ),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[4]),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clksource[4]_i_2__0 
       (.I0(cnt_clksource_reg[6]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[7]),
        .I3(cnt_clksource_reg[8]),
        .I4(cnt_clksource_reg[9]),
        .O(\cnt_clksource[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF343)) 
    \cnt_clksource[5]_i_1__0 
       (.I0(cnt_clksource_reg[6]),
        .I1(\cnt_clksource[9]_i_3__0_n_0 ),
        .I2(cnt_clksource_reg[5]),
        .I3(\cnt_clksource[6]_i_2__0_n_0 ),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF252)) 
    \cnt_clksource[6]_i_1__0 
       (.I0(cnt_clksource_reg[5]),
        .I1(\cnt_clksource[9]_i_3__0_n_0 ),
        .I2(cnt_clksource_reg[6]),
        .I3(\cnt_clksource[6]_i_2__0_n_0 ),
        .O(p_0_in__1[6]));
  LUT6 #(
    .INIT(64'h7F7F007F7FFF7F7F)) 
    \cnt_clksource[6]_i_2__0 
       (.I0(cnt_clksource_reg[9]),
        .I1(cnt_clksource_reg[8]),
        .I2(cnt_clksource_reg[7]),
        .I3(cnt_clksource_reg[3]),
        .I4(\cnt_clksource[6]_i_3__0_n_0 ),
        .I5(cnt_clksource_reg[4]),
        .O(\cnt_clksource[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_clksource[6]_i_3__0 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .O(\cnt_clksource[6]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000F7070000F)) 
    \cnt_clksource[7]_i_1__0 
       (.I0(cnt_clksource_reg[8]),
        .I1(cnt_clksource_reg[9]),
        .I2(\cnt_clksource[9]_i_3__0_n_0 ),
        .I3(ed_n_4),
        .I4(cnt_clksource_reg[7]),
        .I5(\cnt_clksource[9]_i_4__0_n_0 ),
        .O(p_0_in__1[7]));
  LUT6 #(
    .INIT(64'hB0A0B0AFF0F0F0F0)) 
    \cnt_clksource[8]_i_1__0 
       (.I0(\cnt_clksource[9]_i_4__0_n_0 ),
        .I1(cnt_clksource_reg[9]),
        .I2(cnt_clksource_reg[8]),
        .I3(\cnt_clksource[9]_i_3__0_n_0 ),
        .I4(ed_n_4),
        .I5(cnt_clksource_reg[7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'hFFFF000877770008)) 
    \cnt_clksource[9]_i_2__0 
       (.I0(cnt_clksource_reg[7]),
        .I1(cnt_clksource_reg[8]),
        .I2(ed_n_4),
        .I3(\cnt_clksource[9]_i_3__0_n_0 ),
        .I4(cnt_clksource_reg[9]),
        .I5(\cnt_clksource[9]_i_4__0_n_0 ),
        .O(p_0_in__1[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clksource[9]_i_3__0 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[1]),
        .I2(cnt_clksource_reg[0]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[4]),
        .O(\cnt_clksource[9]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000007F)) 
    \cnt_clksource[9]_i_4__0 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .I3(cnt_clksource_reg[3]),
        .I4(cnt_clksource_reg[4]),
        .I5(ed_n_4),
        .O(\cnt_clksource[9]_i_4__0_n_0 ));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[0]),
        .Q(cnt_clksource_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(cnt_clksource_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(cnt_clksource_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(cnt_clksource_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(cnt_clksource_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(cnt_clksource_reg[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(cnt_clksource_reg[6]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(cnt_clksource_reg[7]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[8]),
        .Q(cnt_clksource_reg[8]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_0_in__1[9]),
        .Q(cnt_clksource_reg[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12 ed
       (.AR(AR),
        .Q(cnt_clksource_reg[9:2]),
        .clk_sec(clk_sec),
        .\cnt_clksource_reg[5] (ed_n_4),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60
   (ff_old_reg,
    inc_min,
    s00_axi_aclk,
    AR);
  output ff_old_reg;
  input inc_min;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire \cnt_clksource[0]_i_1__2_n_0 ;
  wire [5:0]cnt_clksource_reg;
  wire ed_source_n_0;
  wire ff_old_reg;
  wire inc_min;
  wire [5:1]p_0_in__3;
  wire s00_axi_aclk;

  LUT5 #(
    .INIT(32'h00007FFF)) 
    \cnt_clksource[0]_i_1__2 
       (.I0(cnt_clksource_reg[2]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[3]),
        .I4(cnt_clksource_reg[0]),
        .O(\cnt_clksource[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0666666666666666)) 
    \cnt_clksource[1]_i_1__2 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .I3(cnt_clksource_reg[5]),
        .I4(cnt_clksource_reg[4]),
        .I5(cnt_clksource_reg[3]),
        .O(p_0_in__3[1]));
  LUT6 #(
    .INIT(64'h007F7F007F007F00)) 
    \cnt_clksource[2]_i_1__2 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[4]),
        .I2(cnt_clksource_reg[5]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[1]),
        .O(p_0_in__3[2]));
  LUT6 #(
    .INIT(64'h07777FFFF0000000)) 
    \cnt_clksource[3]_i_1__2 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[3]),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'h37777FFFC0000000)) 
    \cnt_clksource[4]_i_1__2 
       (.I0(cnt_clksource_reg[5]),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[4]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h6C4C4CCC4CCC4CCC)) 
    \cnt_clksource[5]_i_2__0 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[1]),
        .O(p_0_in__3[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(\cnt_clksource[0]_i_1__2_n_0 ),
        .Q(cnt_clksource_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__3[1]),
        .Q(cnt_clksource_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__3[2]),
        .Q(cnt_clksource_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__3[3]),
        .Q(cnt_clksource_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__3[4]),
        .Q(cnt_clksource_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__3[5]),
        .Q(cnt_clksource_reg[5]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20 ed
       (.AR(AR),
        .Q(cnt_clksource_reg[5:1]),
        .ff_old_reg_0(ff_old_reg),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21 ed_source
       (.AR(AR),
        .E(ed_source_n_0),
        .inc_min(inc_min),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "clock_div_60" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4
   (p_0_in,
    clk_min,
    inc_sec,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  output clk_min;
  input inc_sec;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire clk_min;
  wire \cnt_clksource[0]_i_1__1_n_0 ;
  wire [5:0]cnt_clksource_reg;
  wire ed_source_n_0;
  wire inc_sec;
  wire [1:0]p_0_in;
  wire [5:1]p_0_in__2;
  wire s00_axi_aclk;

  LUT5 #(
    .INIT(32'h00007FFF)) 
    \cnt_clksource[0]_i_1__1 
       (.I0(cnt_clksource_reg[2]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[3]),
        .I4(cnt_clksource_reg[0]),
        .O(\cnt_clksource[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0666666666666666)) 
    \cnt_clksource[1]_i_1__1 
       (.I0(cnt_clksource_reg[1]),
        .I1(cnt_clksource_reg[0]),
        .I2(cnt_clksource_reg[2]),
        .I3(cnt_clksource_reg[5]),
        .I4(cnt_clksource_reg[4]),
        .I5(cnt_clksource_reg[3]),
        .O(p_0_in__2[1]));
  LUT6 #(
    .INIT(64'h007F7F007F007F00)) 
    \cnt_clksource[2]_i_1__1 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[4]),
        .I2(cnt_clksource_reg[5]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[1]),
        .O(p_0_in__2[2]));
  LUT6 #(
    .INIT(64'h07777FFFF0000000)) 
    \cnt_clksource[3]_i_1__1 
       (.I0(cnt_clksource_reg[4]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[3]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'h37777FFFC0000000)) 
    \cnt_clksource[4]_i_1__1 
       (.I0(cnt_clksource_reg[5]),
        .I1(cnt_clksource_reg[3]),
        .I2(cnt_clksource_reg[1]),
        .I3(cnt_clksource_reg[0]),
        .I4(cnt_clksource_reg[2]),
        .I5(cnt_clksource_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h6C4C4CCC4CCC4CCC)) 
    \cnt_clksource[5]_i_2 
       (.I0(cnt_clksource_reg[3]),
        .I1(cnt_clksource_reg[5]),
        .I2(cnt_clksource_reg[4]),
        .I3(cnt_clksource_reg[2]),
        .I4(cnt_clksource_reg[0]),
        .I5(cnt_clksource_reg[1]),
        .O(p_0_in__2[5]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(\cnt_clksource[0]_i_1__1_n_0 ),
        .Q(cnt_clksource_reg[0]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__2[1]),
        .Q(cnt_clksource_reg[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__2[2]),
        .Q(cnt_clksource_reg[2]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__2[3]),
        .Q(cnt_clksource_reg[3]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__2[4]),
        .Q(cnt_clksource_reg[4]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    \cnt_clksource_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ed_source_n_0),
        .CLR(AR),
        .D(p_0_in__2[5]),
        .Q(cnt_clksource_reg[5]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16 ed
       (.AR(AR),
        .Q(cnt_clksource_reg[5:1]),
        .clk_min(clk_min),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17 ed_source
       (.AR(AR),
        .E(ed_source_n_0),
        .inc_sec(inc_sec),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
   (p_0_in,
    D,
    E,
    ff_cur_reg_0,
    ff_old_reg_0,
    \hour_reg[0] ,
    ff_old_reg_1,
    ff_old_reg_2,
    ff_cur_reg_1,
    ff_cur_reg_2,
    s00_axi_aclk,
    AR,
    Q,
    \hour_reg[0]_0 ,
    \hour_reg[0]_1 ,
    p_0_in_0,
    p_0_in_1,
    \hour_reg[0]_2 ,
    p_0_in_2,
    p_0_in_3);
  output [1:0]p_0_in;
  output [0:0]D;
  output [0:0]E;
  output [0:0]ff_cur_reg_0;
  output ff_old_reg_0;
  output [0:0]\hour_reg[0] ;
  output [0:0]ff_old_reg_1;
  output [0:0]ff_old_reg_2;
  output ff_cur_reg_1;
  input ff_cur_reg_2;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]Q;
  input \hour_reg[0]_0 ;
  input [0:0]\hour_reg[0]_1 ;
  input [1:0]p_0_in_0;
  input [1:0]p_0_in_1;
  input \hour_reg[0]_2 ;
  input [1:0]p_0_in_2;
  input [1:0]p_0_in_3;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire ff_cur_reg_2;
  wire ff_old_reg_0;
  wire [0:0]ff_old_reg_1;
  wire [0:0]ff_old_reg_2;
  wire [0:0]\hour_reg[0] ;
  wire \hour_reg[0]_0 ;
  wire [0:0]\hour_reg[0]_1 ;
  wire \hour_reg[0]_2 ;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [1:0]p_0_in_1;
  wire [1:0]p_0_in_2;
  wire [1:0]p_0_in_3;
  wire s00_axi_aclk;

  LUT4 #(
    .INIT(16'h4F44)) 
    \bcd1[3]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(ff_cur_reg_0));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bcd1[3]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in_3[1]),
        .I3(p_0_in_3[0]),
        .O(ff_old_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bcd1[3]_i_3 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(ff_old_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bcd1[3]_i_3__0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(ff_cur_reg_1));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_2),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \hour[0]_i_1 
       (.I0(Q),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(\hour_reg[0]_0 ),
        .I4(\hour_reg[0]_1 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0808FB08)) 
    \hour[0]_i_1__0 
       (.I0(\hour_reg[0]_1 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\hour_reg[0]_2 ),
        .I4(Q),
        .O(\hour_reg[0] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \hour[4]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in_0[1]),
        .I3(p_0_in_0[0]),
        .O(E));
  LUT4 #(
    .INIT(16'h4F44)) 
    \hour[4]_i_1__0 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in_2[1]),
        .I3(p_0_in_2[0]),
        .O(ff_old_reg_1));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10
   (ff_cur_reg_0,
    E,
    clk_sec,
    s00_axi_aclk,
    AR,
    p_0_in,
    \bcd10_reg[0] );
  output ff_cur_reg_0;
  output [0:0]E;
  input clk_sec;
  input s00_axi_aclk;
  input [0:0]AR;
  input [1:0]p_0_in;
  input \bcd10_reg[0] ;

  wire [0:0]AR;
  wire [0:0]E;
  wire \bcd10_reg[0] ;
  wire clk_sec;
  wire ff_cur_reg_0;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h4444F444)) 
    \bcd10[2]_i_2__0 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(\bcd10_reg[0] ),
        .I3(p_0_in_0[0]),
        .I4(p_0_in_0[1]),
        .O(ff_cur_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \bcd1[3]_i_1__0 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(E));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_sec),
        .Q(p_0_in_0[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11
   (\bcd1_reg[3] ,
    E,
    btn_sec,
    s00_axi_aclk,
    AR,
    Q,
    \bcd10_reg[0] ,
    p_0_in);
  output \bcd1_reg[3] ;
  output [0:0]E;
  input btn_sec;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]Q;
  input \bcd10_reg[0] ;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire \bcd10_reg[0] ;
  wire \bcd1_reg[3] ;
  wire btn_sec;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;

  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    \bcd10[2]_i_2__1 
       (.I0(E),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\bcd10_reg[0] ),
        .O(\bcd1_reg[3] ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \bcd1[3]_i_1__2 
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(E));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_sec),
        .Q(p_0_in_0[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_12
   (p_0_in,
    AR,
    clk_sec,
    \cnt_clksource_reg[5] ,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output [0:0]AR;
  output clk_sec;
  output \cnt_clksource_reg[5] ;
  input s00_axi_aclk;
  input [7:0]Q;
  input s00_axi_aresetn;

  wire [0:0]AR;
  wire [7:0]Q;
  wire clk_sec;
  wire \cnt_clksource_reg[5] ;
  wire ff_cur_i_3__0_n_0;
  wire [1:0]p_0_in;
  wire p_0_out;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(clk_sec));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002220)) 
    ff_cur_i_1__7
       (.I0(Q[2]),
        .I1(\cnt_clksource_reg[5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ff_cur_i_3__0_n_0),
        .I5(Q[7]),
        .O(p_0_out));
  LUT2 #(
    .INIT(4'h7)) 
    ff_cur_i_2__0
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\cnt_clksource_reg[5] ));
  LUT2 #(
    .INIT(4'h7)) 
    ff_cur_i_3__0
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(ff_cur_i_3__0_n_0));
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
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_13
   (E,
    \cnt_clksource_reg[5] ,
    s00_axi_aclk,
    AR,
    Q);
  output [0:0]E;
  output \cnt_clksource_reg[5] ;
  input s00_axi_aclk;
  input [0:0]AR;
  input [7:0]Q;

  wire [0:0]AR;
  wire [0:0]E;
  wire [7:0]Q;
  wire \cnt_clksource_reg[5] ;
  wire ff_cur_i_1__6_n_0;
  wire ff_cur_i_3_n_0;
  wire s00_axi_aclk;
  wire [1:0]\sec_clock/ed_source/p_0_in ;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clksource[9]_i_1__0 
       (.I0(\sec_clock/ed_source/p_0_in [0]),
        .I1(\sec_clock/ed_source/p_0_in [1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF00002220)) 
    ff_cur_i_1__6
       (.I0(Q[2]),
        .I1(\cnt_clksource_reg[5] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ff_cur_i_3_n_0),
        .I5(Q[7]),
        .O(ff_cur_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ff_cur_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\cnt_clksource_reg[5] ));
  LUT2 #(
    .INIT(4'h7)) 
    ff_cur_i_3
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(ff_cur_i_3_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_i_1__6_n_0),
        .Q(\sec_clock/ed_source/p_0_in [1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\sec_clock/ed_source/p_0_in [1]),
        .Q(\sec_clock/ed_source/p_0_in [0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14
   (p_0_in,
    clk_min,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input clk_min;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire clk_min;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_min),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15
   (p_0_in,
    btn_min,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input btn_min;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire btn_min;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(btn_min),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_16
   (p_0_in,
    clk_min,
    s00_axi_aclk,
    AR,
    Q);
  output [1:0]p_0_in;
  output clk_min;
  input s00_axi_aclk;
  input [0:0]AR;
  input [4:0]Q;

  wire [0:0]AR;
  wire [4:0]Q;
  wire clk_min;
  wire ff_cur_i_1__8_n_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__4
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(clk_min));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    ff_cur_i_1__8
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(ff_cur_i_1__8_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_i_1__8_n_0),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_17
   (E,
    inc_sec,
    s00_axi_aclk,
    AR);
  output [0:0]E;
  input inc_sec;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire inc_sec;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clksource[5]_i_1__1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(E));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(inc_sec),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18
   (p_0_in,
    ff_cur_reg_0,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire ff_cur_reg_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19
   (p_0_in,
    ff_cur_reg_0,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire ff_cur_reg_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_20
   (ff_old_reg_0,
    s00_axi_aclk,
    AR,
    Q);
  output ff_old_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input [4:0]Q;

  wire [0:0]AR;
  wire [4:0]Q;
  wire ff_cur_i_1__9_n_0;
  wire ff_old_reg_0;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__11
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(ff_old_reg_0));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    ff_cur_i_1__9
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(ff_cur_i_1__9_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_i_1__9_n_0),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_21
   (E,
    inc_min,
    s00_axi_aclk,
    AR);
  output [0:0]E;
  input inc_min;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire inc_min;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clksource[5]_i_1__2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .O(E));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(inc_min),
        .Q(p_0_in[1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_n" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_9
   (ff_old_reg_0,
    s00_axi_aclk,
    AR,
    Q);
  output [0:0]ff_old_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input [5:0]Q;

  wire [0:0]AR;
  wire [5:0]Q;
  wire ff_cur_i_1__5_n_0;
  wire [0:0]ff_old_reg_0;
  wire [1:0]\msec_clock/ed_source/p_0_in ;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt_clksource[9]_i_1 
       (.I0(\msec_clock/ed_source/p_0_in [0]),
        .I1(\msec_clock/ed_source/p_0_in [1]),
        .O(ff_old_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    ff_cur_i_1__5
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(ff_cur_i_1__5_n_0));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_i_1__5_n_0),
        .Q(\msec_clock/ed_source/p_0_in [1]));
  FDCE #(
    .IS_C_INVERTED(1'b1)) 
    ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\msec_clock/ed_source/p_0_in [1]),
        .Q(\msec_clock/ed_source/p_0_in [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
   (ff_cur_reg_0,
    ff_cur_reg_1,
    s00_axi_aclk,
    AR);
  output ff_cur_reg_0;
  input ff_cur_reg_1;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__10
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(ff_cur_reg_0));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_1),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_22
   (inc_min,
    btn_min,
    ff_cur_reg_0,
    s00_axi_aclk,
    AR,
    ff_cur_reg_1,
    p_0_in);
  output inc_min;
  output btn_min;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input ff_cur_reg_1;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire btn_min;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire inc_min;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    ff_cur_i_1__2
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(ff_cur_reg_1),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(inc_min));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__3
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .O(btn_min));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(p_0_in_0[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_23
   (inc_sec,
    btn_sec,
    ff_cur_reg_0,
    s00_axi_aclk,
    AR,
    ff_cur_reg_1,
    p_0_in);
  output inc_sec;
  output btn_sec;
  input ff_cur_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input ff_cur_reg_1;
  input [1:0]p_0_in;

  wire [0:0]AR;
  wire btn_sec;
  wire ff_cur_reg_0;
  wire ff_cur_reg_1;
  wire inc_sec;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h20202F20)) 
    ff_cur_i_1
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .I2(ff_cur_reg_1),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .O(inc_sec));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ff_cur_i_1__0
       (.I0(p_0_in_0[1]),
        .I1(p_0_in_0[0]),
        .O(btn_sec));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(ff_cur_reg_0),
        .Q(p_0_in_0[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_24
   (ff_old_reg_0,
    S,
    s00_axi_aclk,
    AR);
  output ff_old_reg_0;
  input [0:0]S;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]S;
  wire ff_old_reg_0;
  wire [1:0]\fnd/rc/ed/p_0_in ;
  wire s00_axi_aclk;

  LUT2 #(
    .INIT(4'h2)) 
    debounced_btn_i_1
       (.I0(\fnd/rc/ed/p_0_in [0]),
        .I1(\fnd/rc/ed/p_0_in [1]),
        .O(ff_old_reg_0));
  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(S),
        .Q(\fnd/rc/ed/p_0_in [1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\fnd/rc/ed/p_0_in [1]),
        .Q(\fnd/rc/ed/p_0_in [0]));
endmodule

(* ORIG_REF_NAME = "edge_detector_p" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_25
   (p_0_in,
    debounced_btn,
    s00_axi_aclk,
    AR);
  output [1:0]p_0_in;
  input debounced_btn;
  input s00_axi_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire debounced_btn;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;

  FDCE ff_cur_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(debounced_btn),
        .Q(p_0_in[1]));
  FDCE ff_old_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(p_0_in[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24
   (p_0_in,
    \hour_reg[3]_0 ,
    Q,
    D,
    \hour_reg[4]_0 ,
    ff_cur_reg,
    s00_axi_aclk,
    AR,
    \hour_reg[4]_1 ,
    p_0_in_0,
    \hour_reg[2]_0 ,
    \axi_rdata_reg[21] ,
    sel0,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[21]_1 ,
    \axi_rdata_reg[21]_2 ,
    \axi_rdata_reg[21]_3 ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[17]_1 ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[18]_1 ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[20]_1 ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[16]_0 ,
    \axi_rdata_reg[16]_1 ,
    E,
    \hour_reg[0]_0 );
  output [1:0]p_0_in;
  output \hour_reg[3]_0 ;
  output [4:0]Q;
  output [4:0]D;
  output \hour_reg[4]_0 ;
  input ff_cur_reg;
  input s00_axi_aclk;
  input [0:0]AR;
  input [4:0]\hour_reg[4]_1 ;
  input [1:0]p_0_in_0;
  input \hour_reg[2]_0 ;
  input \axi_rdata_reg[21] ;
  input [2:0]sel0;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[21]_1 ;
  input \axi_rdata_reg[21]_2 ;
  input [4:0]\axi_rdata_reg[21]_3 ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[17]_1 ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[18]_1 ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[20]_1 ;
  input \axi_rdata_reg[16] ;
  input [0:0]\axi_rdata_reg[16]_0 ;
  input [0:0]\axi_rdata_reg[16]_1 ;
  input [0:0]E;
  input [0:0]\hour_reg[0]_0 ;

  wire [0:0]AR;
  wire [4:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata_reg[16] ;
  wire [0:0]\axi_rdata_reg[16]_0 ;
  wire [0:0]\axi_rdata_reg[16]_1 ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[17]_1 ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[18]_1 ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[20]_1 ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[21]_1 ;
  wire \axi_rdata_reg[21]_2 ;
  wire [4:0]\axi_rdata_reg[21]_3 ;
  wire ff_cur_reg;
  wire \hour[1]_i_1__0_n_0 ;
  wire \hour[2]_i_1__0_n_0 ;
  wire \hour[3]_i_1__0_n_0 ;
  wire \hour[4]_i_2__0_n_0 ;
  wire \hour[4]_i_3_n_0 ;
  wire [0:0]\hour_reg[0]_0 ;
  wire \hour_reg[2]_0 ;
  wire \hour_reg[3]_0 ;
  wire \hour_reg[4]_0 ;
  wire [4:0]\hour_reg[4]_1 ;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire [2:0]sel0;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[16]_i_2 
       (.I0(\axi_rdata_reg[16]_0 ),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[16]_1 ),
        .I3(sel0[1]),
        .I4(\axi_rdata[16]_i_4_n_0 ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[16]_i_4 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[21]_1 ),
        .I2(\hour_reg[4]_1 [0]),
        .I3(sel0[0]),
        .I4(\axi_rdata_reg[21]_3 [0]),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hD0D0D0DD)) 
    \axi_rdata[17]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata_reg[17] ),
        .I2(\axi_rdata_reg[17]_0 ),
        .I3(sel0[1]),
        .I4(\axi_rdata[17]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6F6000006F60FFFF)) 
    \axi_rdata[17]_i_4 
       (.I0(Q[1]),
        .I1(\axi_rdata[20]_i_5_n_0 ),
        .I2(\axi_rdata_reg[21]_1 ),
        .I3(\axi_rdata_reg[17]_1 ),
        .I4(sel0[0]),
        .I5(\axi_rdata_reg[21]_3 [1]),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD0DD)) 
    \axi_rdata[18]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata_reg[18] ),
        .I2(\axi_rdata_reg[18]_0 ),
        .I3(\axi_rdata[18]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF470047FF)) 
    \axi_rdata[18]_i_4 
       (.I0(\axi_rdata[18]_i_5_n_0 ),
        .I1(\axi_rdata_reg[21]_1 ),
        .I2(\axi_rdata_reg[18]_1 ),
        .I3(sel0[0]),
        .I4(\axi_rdata_reg[21]_3 [2]),
        .I5(sel0[1]),
        .O(\axi_rdata[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2C34)) 
    \axi_rdata[18]_i_5 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0290)) 
    \axi_rdata[19]_i_6 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\hour_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[20] ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[20]_0 ),
        .I3(sel0[1]),
        .I4(\axi_rdata[20]_i_4_n_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h53FF5300)) 
    \axi_rdata[20]_i_4 
       (.I0(\axi_rdata[20]_i_5_n_0 ),
        .I1(\axi_rdata_reg[20]_1 ),
        .I2(\axi_rdata_reg[21]_1 ),
        .I3(sel0[0]),
        .I4(\axi_rdata_reg[21]_3 [3]),
        .O(\axi_rdata[20]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4DF3)) 
    \axi_rdata[20]_i_5 
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[21] ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[21]_0 ),
        .I3(sel0[1]),
        .I4(\axi_rdata[21]_i_4_n_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h4747FF00)) 
    \axi_rdata[21]_i_4 
       (.I0(\axi_rdata[21]_i_5_n_0 ),
        .I1(\axi_rdata_reg[21]_1 ),
        .I2(\axi_rdata_reg[21]_2 ),
        .I3(\axi_rdata_reg[21]_3 [4]),
        .I4(sel0[0]),
        .O(\axi_rdata[21]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \axi_rdata[21]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata_reg[16] ),
        .O(D[0]),
        .S(sel0[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_19 ed_clk
       (.AR(AR),
        .ff_cur_reg_0(ff_cur_reg),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
  LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
    \hour[1]_i_1__0 
       (.I0(\hour_reg[4]_1 [1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\hour_reg[3]_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\hour[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \hour[2]_i_1__0 
       (.I0(\hour_reg[4]_1 [2]),
        .I1(\hour_reg[2]_0 ),
        .I2(\hour_reg[3]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\hour[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \hour[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\hour_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h080808FB08FB0808)) 
    \hour[3]_i_1__0 
       (.I0(\hour_reg[4]_1 [3]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(Q[4]),
        .I4(\hour[4]_i_3_n_0 ),
        .I5(Q[3]),
        .O(\hour[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h080808FBFB080808)) 
    \hour[4]_i_2__0 
       (.I0(\hour_reg[4]_1 [4]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(\hour[4]_i_3_n_0 ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\hour[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \hour[4]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\hour[4]_i_3_n_0 ));
  FDCE \hour_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\hour_reg[0]_0 ),
        .Q(Q[0]));
  FDCE \hour_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\hour[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \hour_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\hour[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \hour_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\hour[3]_i_1__0_n_0 ),
        .Q(Q[3]));
  FDCE \hour_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\hour[4]_i_2__0_n_0 ),
        .Q(Q[4]));
endmodule

(* ORIG_REF_NAME = "loadable_counter_bcd_24" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3
   (p_0_in,
    \hour_reg[3]_0 ,
    Q,
    \hour_reg[4]_0 ,
    \hour_reg[4]_1 ,
    \hour_reg[1]_0 ,
    \hour_reg[4]_2 ,
    \hour_reg[4]_3 ,
    ff_cur_reg,
    s00_axi_aclk,
    AR,
    D,
    \hour_reg[4]_4 ,
    p_0_in_0,
    \hour_reg[2]_0 ,
    E);
  output [1:0]p_0_in;
  output \hour_reg[3]_0 ;
  output [4:0]Q;
  output \hour_reg[4]_0 ;
  output \hour_reg[4]_1 ;
  output \hour_reg[1]_0 ;
  output \hour_reg[4]_2 ;
  output \hour_reg[4]_3 ;
  input ff_cur_reg;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]D;
  input [3:0]\hour_reg[4]_4 ;
  input [1:0]p_0_in_0;
  input \hour_reg[2]_0 ;
  input [0:0]E;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [4:0]Q;
  wire ff_cur_reg;
  wire \hour[4]_i_3__0_n_0 ;
  wire \hour_reg[1]_0 ;
  wire \hour_reg[2]_0 ;
  wire \hour_reg[3]_0 ;
  wire \hour_reg[4]_0 ;
  wire \hour_reg[4]_1 ;
  wire \hour_reg[4]_2 ;
  wire \hour_reg[4]_3 ;
  wire [3:0]\hour_reg[4]_4 ;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [4:1]p_1_in;
  wire s00_axi_aclk;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD6B5)) 
    \axi_rdata[17]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\hour_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h581A)) 
    \axi_rdata[18]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\hour_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h0290)) 
    \axi_rdata[19]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\hour_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h39BD)) 
    \axi_rdata[20]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\hour_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \axi_rdata[21]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\hour_reg[4]_3 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_18 ed_clk
       (.AR(AR),
        .ff_cur_reg_0(ff_cur_reg),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
  LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
    \hour[1]_i_1 
       (.I0(\hour_reg[4]_4 [0]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\hour_reg[3]_0 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h88B8B8B8B8888888)) 
    \hour[2]_i_1 
       (.I0(\hour_reg[4]_4 [1]),
        .I1(\hour_reg[2]_0 ),
        .I2(\hour_reg[3]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h1555FFFF)) 
    \hour[2]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\hour_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h080808FB08FB0808)) 
    \hour[3]_i_1 
       (.I0(\hour_reg[4]_4 [2]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(Q[4]),
        .I4(\hour[4]_i_3__0_n_0 ),
        .I5(Q[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h080808FBFB080808)) 
    \hour[4]_i_2 
       (.I0(\hour_reg[4]_4 [3]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\hour[4]_i_3__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \hour[4]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\hour[4]_i_3__0_n_0 ));
  FDCE \hour_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE \hour_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE \hour_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDCE \hour_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[3]),
        .Q(Q[3]));
  FDCE \hour_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(p_1_in[4]),
        .Q(Q[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60
   (p_0_in,
    Q,
    D,
    set_min10,
    btn_min,
    s00_axi_aclk,
    AR,
    E,
    \bcd10_reg[2]_0 ,
    \bcd1_reg[3]_0 ,
    p_0_in_0,
    sel0,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[14]_0 ,
    \axi_rdata_reg[14]_1 ,
    \axi_rdata[8]_i_2_0 ,
    \bcd10_reg[2]_1 ,
    \axi_rdata[14]_i_2_0 ,
    \axi_rdata_reg[13] ,
    \bcd10_reg[1]_0 ,
    \axi_rdata_reg[12] ,
    \bcd10_reg[0]_0 ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[8] );
  output [1:0]p_0_in;
  output [3:0]Q;
  output [6:0]D;
  output [2:0]set_min10;
  input btn_min;
  input s00_axi_aclk;
  input [0:0]AR;
  input [0:0]E;
  input \bcd10_reg[2]_0 ;
  input [3:0]\bcd1_reg[3]_0 ;
  input [1:0]p_0_in_0;
  input [2:0]sel0;
  input \axi_rdata_reg[14] ;
  input [6:0]\axi_rdata_reg[14]_0 ;
  input [6:0]\axi_rdata_reg[14]_1 ;
  input \axi_rdata[8]_i_2_0 ;
  input \bcd10_reg[2]_1 ;
  input [6:0]\axi_rdata[14]_i_2_0 ;
  input \axi_rdata_reg[13] ;
  input \bcd10_reg[1]_0 ;
  input \axi_rdata_reg[12] ;
  input \bcd10_reg[0]_0 ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[8] ;

  wire [0:0]AR;
  wire [6:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire [6:0]\axi_rdata[14]_i_2_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[8]_i_2_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire [6:0]\axi_rdata_reg[14]_0 ;
  wire [6:0]\axi_rdata_reg[14]_1 ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire \bcd10[0]_i_1_n_0 ;
  wire \bcd10[1]_i_1_n_0 ;
  wire \bcd10[2]_i_1_n_0 ;
  wire \bcd10[2]_i_2__2_n_0 ;
  wire \bcd10_reg[0]_0 ;
  wire \bcd10_reg[1]_0 ;
  wire \bcd10_reg[2]_0 ;
  wire \bcd10_reg[2]_1 ;
  wire \bcd1[0]_i_1__1_n_0 ;
  wire \bcd1[1]_i_1__0_n_0 ;
  wire \bcd1[2]_i_1__1_n_0 ;
  wire \bcd1[3]_i_2__1_n_0 ;
  wire [3:0]\bcd1_reg[3]_0 ;
  wire btn_min;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire [2:0]sel0;
  wire [2:0]set_min10;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [2]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[10]_i_4 
       (.I0(Q[2]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [2]),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [3]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [3]),
        .I3(sel0[1]),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[11]_i_4 
       (.I0(Q[3]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [3]),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [3]),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [4]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [4]),
        .I3(sel0[1]),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[12]_i_4 
       (.I0(set_min10[0]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd10_reg[0]_0 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [4]),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [5]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [5]),
        .I3(sel0[1]),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[13]_i_4 
       (.I0(set_min10[1]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd10_reg[1]_0 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [5]),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[14]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [6]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [6]),
        .I3(sel0[1]),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[14]_i_4 
       (.I0(set_min10[2]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd10_reg[2]_1 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [6]),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [0]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[8]_i_4 
       (.I0(Q[0]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [0]),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [0]),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[14]_0 [1]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[14]_1 [1]),
        .I3(sel0[1]),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[9]_i_4 
       (.I0(Q[1]),
        .I1(\axi_rdata[8]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [1]),
        .I3(sel0[0]),
        .I4(\axi_rdata[14]_i_2_0 [1]),
        .O(\axi_rdata[9]_i_4_n_0 ));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10] ),
        .O(D[2]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] ),
        .O(D[3]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12] ),
        .O(D[4]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata_reg[13] ),
        .O(D[5]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata_reg[14] ),
        .O(D[6]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8] ),
        .O(D[0]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9] ),
        .O(D[1]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h8888FFFF8BBB0000)) 
    \bcd10[0]_i_1 
       (.I0(\bcd10_reg[0]_0 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_min10[2]),
        .I3(set_min10[1]),
        .I4(\bcd10[2]_i_2__2_n_0 ),
        .I5(set_min10[0]),
        .O(\bcd10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFF8B880000)) 
    \bcd10[1]_i_1 
       (.I0(\bcd10_reg[1]_0 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_min10[2]),
        .I3(set_min10[0]),
        .I4(\bcd10[2]_i_2__2_n_0 ),
        .I5(set_min10[1]),
        .O(\bcd10[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFFB8880000)) 
    \bcd10[2]_i_1 
       (.I0(\bcd10_reg[2]_1 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_min10[0]),
        .I3(set_min10[1]),
        .I4(\bcd10[2]_i_2__2_n_0 ),
        .I5(set_min10[2]),
        .O(\bcd10[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    \bcd10[2]_i_2__2 
       (.I0(E),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\bcd10_reg[2]_0 ),
        .O(\bcd10[2]_i_2__2_n_0 ));
  FDCE \bcd10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[0]_i_1_n_0 ),
        .Q(set_min10[0]));
  FDCE \bcd10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[1]_i_1_n_0 ),
        .Q(set_min10[1]));
  FDCE \bcd10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[2]_i_1_n_0 ),
        .Q(set_min10[2]));
  LUT6 #(
    .INIT(64'h8888888B8888BBBB)) 
    \bcd1[0]_i_1__1 
       (.I0(\bcd1_reg[3]_0 [0]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \bcd1[1]_i_1__0 
       (.I0(\bcd1_reg[3]_0 [1]),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bcd1[2]_i_1__1 
       (.I0(\bcd1_reg[3]_0 [2]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888BB8888888)) 
    \bcd1[3]_i_2__1 
       (.I0(\bcd1_reg[3]_0 [3]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[3]_i_2__1_n_0 ));
  FDCE \bcd1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[0]_i_1__1_n_0 ),
        .Q(Q[0]));
  FDCE \bcd1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \bcd1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[2]_i_1__1_n_0 ),
        .Q(Q[2]));
  FDCE \bcd1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[3]_i_2__1_n_0 ),
        .Q(Q[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_15 ed_clk
       (.AR(AR),
        .btn_min(btn_min),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "loadable_counter_bcd_60" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5
   (p_0_in,
    \bcd1_reg[3]_0 ,
    \bcd10_reg[0]_0 ,
    \bcd10_reg[1]_0 ,
    \bcd10_reg[2]_0 ,
    clk_min,
    s00_axi_aclk,
    AR,
    Q,
    \bcd10_reg[2]_1 ,
    p_0_in_0,
    E,
    set_min10);
  output [1:0]p_0_in;
  output [3:0]\bcd1_reg[3]_0 ;
  output \bcd10_reg[0]_0 ;
  output \bcd10_reg[1]_0 ;
  output \bcd10_reg[2]_0 ;
  input clk_min;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]Q;
  input \bcd10_reg[2]_1 ;
  input [1:0]p_0_in_0;
  input [0:0]E;
  input [2:0]set_min10;

  wire [0:0]AR;
  wire [0:0]E;
  wire [3:0]Q;
  wire \bcd10[0]_i_1_n_0 ;
  wire \bcd10[1]_i_1_n_0 ;
  wire \bcd10[2]_i_1_n_0 ;
  wire \bcd10[2]_i_2_n_0 ;
  wire \bcd10_reg[0]_0 ;
  wire \bcd10_reg[1]_0 ;
  wire \bcd10_reg[2]_0 ;
  wire \bcd10_reg[2]_1 ;
  wire \bcd1[0]_i_1_n_0 ;
  wire \bcd1[1]_i_1_n_0 ;
  wire \bcd1[2]_i_1_n_0 ;
  wire \bcd1[3]_i_2_n_0 ;
  wire [3:0]\bcd1_reg[3]_0 ;
  wire clk_min;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire s00_axi_aclk;
  wire [2:0]set_min10;

  LUT6 #(
    .INIT(64'h8888FFFF8BBB0000)) 
    \bcd10[0]_i_1 
       (.I0(set_min10[0]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[2]_0 ),
        .I3(\bcd10_reg[1]_0 ),
        .I4(\bcd10[2]_i_2_n_0 ),
        .I5(\bcd10_reg[0]_0 ),
        .O(\bcd10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFF8B880000)) 
    \bcd10[1]_i_1 
       (.I0(set_min10[1]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[2]_0 ),
        .I3(\bcd10_reg[0]_0 ),
        .I4(\bcd10[2]_i_2_n_0 ),
        .I5(\bcd10_reg[1]_0 ),
        .O(\bcd10[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFFB8880000)) 
    \bcd10[2]_i_1 
       (.I0(set_min10[2]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[0]_0 ),
        .I3(\bcd10_reg[1]_0 ),
        .I4(\bcd10[2]_i_2_n_0 ),
        .I5(\bcd10_reg[2]_0 ),
        .O(\bcd10[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888880)) 
    \bcd10[2]_i_2 
       (.I0(E),
        .I1(\bcd1_reg[3]_0 [3]),
        .I2(\bcd1_reg[3]_0 [0]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [2]),
        .I5(\bcd10_reg[2]_1 ),
        .O(\bcd10[2]_i_2_n_0 ));
  FDCE \bcd10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[0]_i_1_n_0 ),
        .Q(\bcd10_reg[0]_0 ));
  FDCE \bcd10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[1]_i_1_n_0 ),
        .Q(\bcd10_reg[1]_0 ));
  FDCE \bcd10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[2]_i_1_n_0 ),
        .Q(\bcd10_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8888888B8888BBBB)) 
    \bcd1[0]_i_1 
       (.I0(Q[0]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \bcd1[1]_i_1 
       (.I0(Q[1]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[1]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bcd1[2]_i_1 
       (.I0(Q[2]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888BB8888888)) 
    \bcd1[3]_i_2 
       (.I0(Q[3]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[3]_i_2_n_0 ));
  FDCE \bcd1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[0]_i_1_n_0 ),
        .Q(\bcd1_reg[3]_0 [0]));
  FDCE \bcd1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[1]_i_1_n_0 ),
        .Q(\bcd1_reg[3]_0 [1]));
  FDCE \bcd1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[2]_i_1_n_0 ),
        .Q(\bcd1_reg[3]_0 [2]));
  FDCE \bcd1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(AR),
        .D(\bcd1[3]_i_2_n_0 ),
        .Q(\bcd1_reg[3]_0 [3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_14 ed_clk
       (.AR(AR),
        .clk_min(clk_min),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "loadable_counter_bcd_60" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7
   (Q,
    D,
    set_sec10,
    btn_sec,
    s00_axi_aclk,
    AR,
    \bcd10_reg[2]_0 ,
    \bcd1_reg[3]_0 ,
    p_0_in,
    sel0,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[6]_0 ,
    \axi_rdata_reg[6]_1 ,
    \axi_rdata[0]_i_2_0 ,
    \bcd10_reg[2]_1 ,
    \axi_rdata[6]_i_2_0 ,
    \axi_rdata_reg[5] ,
    \bcd10_reg[1]_0 ,
    \axi_rdata_reg[4] ,
    \bcd10_reg[0]_0 ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[0] );
  output [3:0]Q;
  output [6:0]D;
  output [2:0]set_sec10;
  input btn_sec;
  input s00_axi_aclk;
  input [0:0]AR;
  input \bcd10_reg[2]_0 ;
  input [3:0]\bcd1_reg[3]_0 ;
  input [1:0]p_0_in;
  input [2:0]sel0;
  input \axi_rdata_reg[6] ;
  input [6:0]\axi_rdata_reg[6]_0 ;
  input [6:0]\axi_rdata_reg[6]_1 ;
  input \axi_rdata[0]_i_2_0 ;
  input \bcd10_reg[2]_1 ;
  input [6:0]\axi_rdata[6]_i_2_0 ;
  input \axi_rdata_reg[5] ;
  input \bcd10_reg[1]_0 ;
  input \axi_rdata_reg[4] ;
  input \bcd10_reg[0]_0 ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[0] ;

  wire [0:0]AR;
  wire [6:0]D;
  wire [3:0]Q;
  wire \axi_rdata[0]_i_2_0 ;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire [6:0]\axi_rdata[6]_i_2_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire [6:0]\axi_rdata_reg[6]_0 ;
  wire [6:0]\axi_rdata_reg[6]_1 ;
  wire \bcd10[0]_i_1_n_0 ;
  wire \bcd10[1]_i_1_n_0 ;
  wire \bcd10[2]_i_1_n_0 ;
  wire \bcd10_reg[0]_0 ;
  wire \bcd10_reg[1]_0 ;
  wire \bcd10_reg[2]_0 ;
  wire \bcd10_reg[2]_1 ;
  wire \bcd1[0]_i_1__2_n_0 ;
  wire \bcd1[1]_i_1__1_n_0 ;
  wire \bcd1[2]_i_1__2_n_0 ;
  wire \bcd1[3]_i_2__2_n_0 ;
  wire [3:0]\bcd1_reg[3]_0 ;
  wire btn_sec;
  wire ed_clk_n_0;
  wire ed_clk_n_1;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire [2:0]sel0;
  wire [2:0]set_sec10;

  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [0]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [0]),
        .I3(sel0[1]),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[0]_i_4 
       (.I0(Q[0]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [0]),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [0]),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [1]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [1]),
        .I3(sel0[1]),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[1]_i_4 
       (.I0(Q[1]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [1]),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [1]),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [2]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[2]_i_4 
       (.I0(Q[2]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [2]),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [3]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [3]),
        .I3(sel0[1]),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[3]_i_4 
       (.I0(Q[3]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd1_reg[3]_0 [3]),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [3]),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [4]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [4]),
        .I3(sel0[1]),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[4]_i_4 
       (.I0(set_sec10[0]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd10_reg[0]_0 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [4]),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [5]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [5]),
        .I3(sel0[1]),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[5]_i_4 
       (.I0(set_sec10[1]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd10_reg[1]_0 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [5]),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata_reg[6]_0 [6]),
        .I1(sel0[0]),
        .I2(\axi_rdata_reg[6]_1 [6]),
        .I3(sel0[1]),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \axi_rdata[6]_i_4 
       (.I0(set_sec10[2]),
        .I1(\axi_rdata[0]_i_2_0 ),
        .I2(\bcd10_reg[2]_1 ),
        .I3(sel0[0]),
        .I4(\axi_rdata[6]_i_2_0 [6]),
        .O(\axi_rdata[6]_i_4_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] ),
        .O(D[0]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .O(D[1]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2] ),
        .O(D[2]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3] ),
        .O(D[3]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4] ),
        .O(D[4]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5] ),
        .O(D[5]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6] ),
        .O(D[6]),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h8888FFFF8BBB0000)) 
    \bcd10[0]_i_1 
       (.I0(\bcd10_reg[0]_0 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_sec10[2]),
        .I3(set_sec10[1]),
        .I4(ed_clk_n_0),
        .I5(set_sec10[0]),
        .O(\bcd10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFF8B880000)) 
    \bcd10[1]_i_1 
       (.I0(\bcd10_reg[1]_0 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_sec10[2]),
        .I3(set_sec10[0]),
        .I4(ed_clk_n_0),
        .I5(set_sec10[1]),
        .O(\bcd10[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFFB8880000)) 
    \bcd10[2]_i_1 
       (.I0(\bcd10_reg[2]_1 ),
        .I1(\bcd10_reg[2]_0 ),
        .I2(set_sec10[0]),
        .I3(set_sec10[1]),
        .I4(ed_clk_n_0),
        .I5(set_sec10[2]),
        .O(\bcd10[2]_i_1_n_0 ));
  FDCE \bcd10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[0]_i_1_n_0 ),
        .Q(set_sec10[0]));
  FDCE \bcd10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[1]_i_1_n_0 ),
        .Q(set_sec10[1]));
  FDCE \bcd10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[2]_i_1_n_0 ),
        .Q(set_sec10[2]));
  LUT6 #(
    .INIT(64'h8888888B8888BBBB)) 
    \bcd1[0]_i_1__2 
       (.I0(\bcd1_reg[3]_0 [0]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FBFB08)) 
    \bcd1[1]_i_1__1 
       (.I0(\bcd1_reg[3]_0 [1]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bcd1[2]_i_1__2 
       (.I0(\bcd1_reg[3]_0 [2]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8888888BB8888888)) 
    \bcd1[3]_i_2__2 
       (.I0(\bcd1_reg[3]_0 [3]),
        .I1(\bcd10_reg[2]_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\bcd1[3]_i_2__2_n_0 ));
  FDCE \bcd1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE \bcd1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE \bcd1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[2]_i_1__2_n_0 ),
        .Q(Q[2]));
  FDCE \bcd1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[3]_i_2__2_n_0 ),
        .Q(Q[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_11 ed_clk
       (.AR(AR),
        .E(ed_clk_n_1),
        .Q(Q),
        .\bcd10_reg[0] (\bcd10_reg[2]_0 ),
        .\bcd1_reg[3] (ed_clk_n_0),
        .btn_sec(btn_sec),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "loadable_counter_bcd_60" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8
   (\bcd1_reg[3]_0 ,
    \bcd10_reg[0]_0 ,
    \bcd10_reg[1]_0 ,
    \bcd10_reg[2]_0 ,
    clk_sec,
    s00_axi_aclk,
    AR,
    Q,
    \bcd10_reg[2]_1 ,
    p_0_in,
    set_sec10);
  output [3:0]\bcd1_reg[3]_0 ;
  output \bcd10_reg[0]_0 ;
  output \bcd10_reg[1]_0 ;
  output \bcd10_reg[2]_0 ;
  input clk_sec;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]Q;
  input \bcd10_reg[2]_1 ;
  input [1:0]p_0_in;
  input [2:0]set_sec10;

  wire [0:0]AR;
  wire [3:0]Q;
  wire \bcd10[0]_i_1_n_0 ;
  wire \bcd10[1]_i_1_n_0 ;
  wire \bcd10[2]_i_1_n_0 ;
  wire \bcd10[2]_i_3_n_0 ;
  wire \bcd10_reg[0]_0 ;
  wire \bcd10_reg[1]_0 ;
  wire \bcd10_reg[2]_0 ;
  wire \bcd10_reg[2]_1 ;
  wire \bcd1[0]_i_1__0_n_0 ;
  wire \bcd1[1]_i_1__2_n_0 ;
  wire \bcd1[2]_i_1__0_n_0 ;
  wire \bcd1[3]_i_2__0_n_0 ;
  wire [3:0]\bcd1_reg[3]_0 ;
  wire clk_sec;
  wire ed_clk_n_0;
  wire ed_clk_n_1;
  wire [1:0]p_0_in;
  wire s00_axi_aclk;
  wire [2:0]set_sec10;

  LUT6 #(
    .INIT(64'h8888FFFF8BBB0000)) 
    \bcd10[0]_i_1 
       (.I0(set_sec10[0]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[2]_0 ),
        .I3(\bcd10_reg[1]_0 ),
        .I4(ed_clk_n_0),
        .I5(\bcd10_reg[0]_0 ),
        .O(\bcd10[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFF8B880000)) 
    \bcd10[1]_i_1 
       (.I0(set_sec10[1]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[2]_0 ),
        .I3(\bcd10_reg[0]_0 ),
        .I4(ed_clk_n_0),
        .I5(\bcd10_reg[1]_0 ),
        .O(\bcd10[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888BFFFFB8880000)) 
    \bcd10[2]_i_1 
       (.I0(set_sec10[2]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd10_reg[0]_0 ),
        .I3(\bcd10_reg[1]_0 ),
        .I4(ed_clk_n_0),
        .I5(\bcd10_reg[2]_0 ),
        .O(\bcd10[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \bcd10[2]_i_3 
       (.I0(\bcd1_reg[3]_0 [3]),
        .I1(\bcd1_reg[3]_0 [0]),
        .I2(\bcd1_reg[3]_0 [1]),
        .I3(\bcd1_reg[3]_0 [2]),
        .O(\bcd10[2]_i_3_n_0 ));
  FDCE \bcd10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[0]_i_1_n_0 ),
        .Q(\bcd10_reg[0]_0 ));
  FDCE \bcd10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[1]_i_1_n_0 ),
        .Q(\bcd10_reg[1]_0 ));
  FDCE \bcd10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(\bcd10[2]_i_1_n_0 ),
        .Q(\bcd10_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h8888888B8888BBBB)) 
    \bcd1[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h888B8B88)) 
    \bcd1[1]_i_1__2 
       (.I0(Q[1]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [3]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .O(\bcd1[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888BB8B8B8)) 
    \bcd1[2]_i_1__0 
       (.I0(Q[2]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888BB8888888)) 
    \bcd1[3]_i_2__0 
       (.I0(Q[3]),
        .I1(\bcd10_reg[2]_1 ),
        .I2(\bcd1_reg[3]_0 [2]),
        .I3(\bcd1_reg[3]_0 [1]),
        .I4(\bcd1_reg[3]_0 [0]),
        .I5(\bcd1_reg[3]_0 [3]),
        .O(\bcd1[3]_i_2__0_n_0 ));
  FDCE \bcd1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[0]_i_1__0_n_0 ),
        .Q(\bcd1_reg[3]_0 [0]));
  FDCE \bcd1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[1]_i_1__2_n_0 ),
        .Q(\bcd1_reg[3]_0 [1]));
  FDCE \bcd1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[2]_i_1__0_n_0 ),
        .Q(\bcd1_reg[3]_0 [2]));
  FDCE \bcd1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ed_clk_n_1),
        .CLR(AR),
        .D(\bcd1[3]_i_2__0_n_0 ),
        .Q(\bcd1_reg[3]_0 [3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n_10 ed_clk
       (.AR(AR),
        .E(ed_clk_n_1),
        .\bcd10_reg[0] (\bcd10[2]_i_3_n_0 ),
        .clk_sec(clk_sec),
        .ff_cur_reg_0(ed_clk_n_0),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
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
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
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

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire myip_clock_timer_v1_0_S00_AXI_inst_n_7;
  wire [1:0]\nolabel_line446/btn0/ed1/p_0_in ;
  wire \nolabel_line446/set_watch ;
  wire q_i_1_n_0;
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
        .I1(myip_clock_timer_v1_0_S00_AXI_inst_n_7),
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI myip_clock_timer_v1_0_S00_AXI_inst
       (.aw_en_reg_0(myip_clock_timer_v1_0_S00_AXI_inst_n_7),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .p_0_in(\nolabel_line446/btn0/ed1/p_0_in ),
        .q_reg(q_i_1_n_0),
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
        .set_watch(\nolabel_line446/set_watch ));
  LUT3 #(
    .INIT(8'hB4)) 
    q_i_1
       (.I0(\nolabel_line446/btn0/ed1/p_0_in [0]),
        .I1(\nolabel_line446/btn0/ed1/p_0_in [1]),
        .I2(\nolabel_line446/set_watch ),
        .O(q_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_clock_timer_v1_0_S00_AXI
   (p_0_in,
    set_watch,
    axi_wready_reg_0,
    axi_awready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    aw_en_reg_0,
    s00_axi_rvalid,
    s00_axi_rdata,
    s00_axi_aclk,
    q_reg,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn);
  output [1:0]p_0_in;
  output set_watch;
  output axi_wready_reg_0;
  output axi_awready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output aw_en_reg_0;
  output s00_axi_rvalid;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input q_reg;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;

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
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire nolabel_line446_n_0;
  wire [1:0]p_0_in;
  wire [2:0]p_0_in_0;
  wire [31:7]p_1_in;
  wire q_reg;
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
  wire set_watch;
  wire [3:0]slv_reg0;
  wire [31:4]slv_reg0__0;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
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

  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(nolabel_line446_n_0));
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
        .R(nolabel_line446_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(nolabel_line446_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(nolabel_line446_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
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
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in_0[1]),
        .R(nolabel_line446_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in_0[2]),
        .R(nolabel_line446_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
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
        .R(nolabel_line446_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(nolabel_line446_n_0));
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
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[15]_i_2 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[15]),
        .I4(sel0[0]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
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
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \axi_rdata[17]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(slv_reg3[17]),
        .I3(sel0[0]),
        .I4(slv_reg2[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
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
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \axi_rdata[18]_i_3 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(slv_reg3[18]),
        .I3(sel0[0]),
        .I4(slv_reg2[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
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
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg3[20]),
        .I1(sel0[0]),
        .I2(slv_reg2[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg3[21]),
        .I1(sel0[0]),
        .I2(slv_reg2[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \axi_rdata[22]_i_1 
       (.I0(sel0[2]),
        .I1(\axi_rdata[22]_i_2_n_0 ),
        .I2(\axi_rdata[22]_i_3_n_0 ),
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
    .INIT(64'h0000000003F3F5F5)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg0__0[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[0]),
        .I3(slv_reg3[22]),
        .I4(sel0[1]),
        .I5(sel0[2]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[23]_i_2 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[23]),
        .I4(sel0[0]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[24]_i_2 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[24]),
        .I4(sel0[0]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[25]_i_2 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[25]),
        .I4(sel0[0]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[26]_i_2 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[26]),
        .I4(sel0[0]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[27]_i_2 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[27]),
        .I4(sel0[0]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[28]_i_2 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[28]),
        .I4(sel0[0]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[29]_i_2 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[29]),
        .I4(sel0[0]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
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
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[30]_i_2 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[30]),
        .I4(sel0[0]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[31]),
        .I4(sel0[0]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
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
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_2 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(sel0[1]),
        .I3(slv_reg0__0[7]),
        .I4(sel0[0]),
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
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(nolabel_line446_n_0));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(nolabel_line446_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s00_axi_rvalid),
        .R(nolabel_line446_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
        .R(nolabel_line446_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set nolabel_line446
       (.D({reg_data_out[21:16],reg_data_out[14:8],reg_data_out[6:0]}),
        .Q({slv_reg0__0[21:16],slv_reg0__0[14:8],slv_reg0__0[6:4],slv_reg0}),
        .\axi_rdata_reg[0] (\axi_rdata[0]_i_3_n_0 ),
        .\axi_rdata_reg[10] (\axi_rdata[10]_i_3_n_0 ),
        .\axi_rdata_reg[11] (\axi_rdata[11]_i_3_n_0 ),
        .\axi_rdata_reg[12] (\axi_rdata[12]_i_3_n_0 ),
        .\axi_rdata_reg[13] (\axi_rdata[13]_i_3_n_0 ),
        .\axi_rdata_reg[14] (\axi_rdata[14]_i_3_n_0 ),
        .\axi_rdata_reg[16] (\axi_rdata[16]_i_3_n_0 ),
        .\axi_rdata_reg[17] (\axi_rdata[17]_i_2_n_0 ),
        .\axi_rdata_reg[17]_0 (\axi_rdata[17]_i_3_n_0 ),
        .\axi_rdata_reg[18] (\axi_rdata[18]_i_2_n_0 ),
        .\axi_rdata_reg[18]_0 (\axi_rdata[18]_i_3_n_0 ),
        .\axi_rdata_reg[19] (\axi_rdata[19]_i_3_n_0 ),
        .\axi_rdata_reg[19]_0 ({slv_reg3[19],slv_reg3[16],slv_reg3[14:8],slv_reg3[6:0]}),
        .\axi_rdata_reg[19]_1 ({slv_reg2[19],slv_reg2[16],slv_reg2[14:8],slv_reg2[6:0]}),
        .\axi_rdata_reg[1] (\axi_rdata[1]_i_3_n_0 ),
        .\axi_rdata_reg[20] (\axi_rdata[20]_i_2_n_0 ),
        .\axi_rdata_reg[20]_0 (\axi_rdata[20]_i_3_n_0 ),
        .\axi_rdata_reg[21] (\axi_rdata[21]_i_2_n_0 ),
        .\axi_rdata_reg[21]_0 (\axi_rdata[21]_i_3_n_0 ),
        .\axi_rdata_reg[2] (\axi_rdata[2]_i_3_n_0 ),
        .\axi_rdata_reg[3] (\axi_rdata[3]_i_3_n_0 ),
        .\axi_rdata_reg[4] (\axi_rdata[4]_i_3_n_0 ),
        .\axi_rdata_reg[5] (\axi_rdata[5]_i_3_n_0 ),
        .\axi_rdata_reg[6] (\axi_rdata[6]_i_3_n_0 ),
        .\axi_rdata_reg[8] (\axi_rdata[8]_i_3_n_0 ),
        .\axi_rdata_reg[9] (\axi_rdata[9]_i_3_n_0 ),
        .p_0_in(p_0_in),
        .q_reg(set_watch),
        .q_reg_0(q_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(nolabel_line446_n_0),
        .sel0(sel0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[1]),
        .I2(p_0_in_0[0]),
        .I3(p_0_in_0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0[0]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0__0[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0__0[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0__0[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0__0[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0__0[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0__0[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0__0[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0__0[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0__0[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0__0[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0__0[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0__0[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0__0[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0__0[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0__0[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0__0[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0__0[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0__0[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0__0[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0__0[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0__0[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0__0[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0__0[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0__0[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0__0[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0__0[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0__0[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0__0[9]),
        .R(nolabel_line446_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in_0[2]),
        .I2(p_0_in_0[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in_0[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(nolabel_line446_n_0));
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
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(nolabel_line446_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(nolabel_line446_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_watch_set
   (s00_axi_aresetn_0,
    p_0_in,
    q_reg,
    D,
    s00_axi_aclk,
    Q,
    q_reg_0,
    \axi_rdata_reg[21] ,
    sel0,
    \axi_rdata_reg[21]_0 ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[19]_0 ,
    \axi_rdata_reg[19]_1 ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[17]_0 ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[18]_0 ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[20]_0 ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[0] ,
    s00_axi_aresetn);
  output s00_axi_aresetn_0;
  output [1:0]p_0_in;
  output q_reg;
  output [19:0]D;
  input s00_axi_aclk;
  input [19:0]Q;
  input q_reg_0;
  input \axi_rdata_reg[21] ;
  input [2:0]sel0;
  input \axi_rdata_reg[21]_0 ;
  input \axi_rdata_reg[19] ;
  input [15:0]\axi_rdata_reg[19]_0 ;
  input [15:0]\axi_rdata_reg[19]_1 ;
  input \axi_rdata_reg[17] ;
  input \axi_rdata_reg[17]_0 ;
  input \axi_rdata_reg[18] ;
  input \axi_rdata_reg[18]_0 ;
  input \axi_rdata_reg[20] ;
  input \axi_rdata_reg[20]_0 ;
  input \axi_rdata_reg[16] ;
  input \axi_rdata_reg[14] ;
  input \axi_rdata_reg[13] ;
  input \axi_rdata_reg[12] ;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[1] ;
  input \axi_rdata_reg[0] ;
  input s00_axi_aresetn;

  wire [19:0]D;
  wire [19:0]Q;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[17]_0 ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[18]_0 ;
  wire \axi_rdata_reg[19] ;
  wire [15:0]\axi_rdata_reg[19]_0 ;
  wire [15:0]\axi_rdata_reg[19]_1 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[20]_0 ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[21]_0 ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire btn0_n_2;
  wire btn3_n_0;
  wire btn_min;
  wire btn_sec;
  wire clk_min;
  wire clk_sec;
  wire [1:0]\ed/p_0_in ;
  wire [1:0]\ed/p_0_in_4 ;
  wire [1:0]\ed_clk/p_0_in ;
  wire [1:0]\ed_clk/p_0_in_1 ;
  wire [1:0]\ed_clk/p_0_in_2 ;
  wire [1:0]\ed_clk/p_0_in_3 ;
  wire ed_source_n_3;
  wire ed_source_n_4;
  wire ed_source_n_5;
  wire ed_source_n_6;
  wire ed_source_n_7;
  wire ed_source_n_8;
  wire ed_source_n_9;
  wire hour_clock_n_0;
  wire hour_set_n_13;
  wire hour_set_n_2;
  wire hour_set_n_3;
  wire hour_set_n_4;
  wire hour_set_n_5;
  wire hour_set_n_6;
  wire hour_set_n_7;
  wire hout_watch_n_10;
  wire hout_watch_n_11;
  wire hout_watch_n_12;
  wire hout_watch_n_2;
  wire hout_watch_n_3;
  wire hout_watch_n_4;
  wire hout_watch_n_5;
  wire hout_watch_n_6;
  wire hout_watch_n_7;
  wire hout_watch_n_8;
  wire hout_watch_n_9;
  wire inc_min;
  wire inc_sec;
  wire min_watch_n_2;
  wire min_watch_n_3;
  wire min_watch_n_4;
  wire min_watch_n_5;
  wire min_watch_n_6;
  wire min_watch_n_7;
  wire min_watch_n_8;
  wire msec_clock_n_0;
  wire [1:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire [0:0]p_1_in;
  wire q_reg;
  wire q_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire sec_watch_n_0;
  wire sec_watch_n_1;
  wire sec_watch_n_2;
  wire sec_watch_n_3;
  wire sec_watch_n_4;
  wire sec_watch_n_5;
  wire sec_watch_n_6;
  wire [2:0]sel0;
  wire [3:0]set_min1;
  wire [2:0]set_min10;
  wire [3:0]set_sec1;
  wire [2:0]set_sec10;
  wire usec_clock_n_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr btn0
       (.AR(s00_axi_aresetn_0),
        .Q(Q[0]),
        .ff_old_reg(btn0_n_2),
        .p_0_in(p_0_in),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_0 btn1
       (.AR(s00_axi_aresetn_0),
        .Q(Q[1]),
        .btn_sec(btn_sec),
        .debounced_btn_reg_0(btn0_n_2),
        .ff_cur_reg(q_reg),
        .inc_sec(inc_sec),
        .p_0_in(\ed/p_0_in_4 ),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_1 btn2
       (.AR(s00_axi_aresetn_0),
        .Q(Q[2]),
        .btn_min(btn_min),
        .debounced_btn_reg_0(btn0_n_2),
        .ff_cur_reg(q_reg),
        .inc_min(inc_min),
        .p_0_in(\ed/p_0_in ),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_button_cntr_2 btn3
       (.AR(s00_axi_aresetn_0),
        .Q(Q[3]),
        .debounced_btn_reg_0(btn0_n_2),
        .ff_cur_reg(btn3_n_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n ed_source
       (.AR(s00_axi_aresetn_0),
        .D(p_1_in),
        .E(ed_source_n_3),
        .Q(hour_set_n_7),
        .ff_cur_reg_0(ed_source_n_4),
        .ff_cur_reg_1(ed_source_n_9),
        .ff_cur_reg_2(q_reg),
        .ff_old_reg_0(ed_source_n_5),
        .ff_old_reg_1(ed_source_n_7),
        .ff_old_reg_2(ed_source_n_8),
        .\hour_reg[0] (ed_source_n_6),
        .\hour_reg[0]_0 (hout_watch_n_2),
        .\hour_reg[0]_1 (hout_watch_n_7),
        .\hour_reg[0]_2 (hour_set_n_2),
        .p_0_in(p_0_in_0),
        .p_0_in_0(\ed_clk/p_0_in_1 ),
        .p_0_in_1(\ed_clk/p_0_in_3 ),
        .p_0_in_2(\ed_clk/p_0_in ),
        .p_0_in_3(\ed_clk/p_0_in_2 ),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60 hour_clock
       (.AR(s00_axi_aresetn_0),
        .ff_old_reg(hour_clock_n_0),
        .inc_min(inc_min),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24 hour_set
       (.AR(s00_axi_aresetn_0),
        .D({D[19:18],D[16:14]}),
        .E(ed_source_n_7),
        .Q({hour_set_n_3,hour_set_n_4,hour_set_n_5,hour_set_n_6,hour_set_n_7}),
        .\axi_rdata_reg[16] (\axi_rdata_reg[16] ),
        .\axi_rdata_reg[16]_0 (\axi_rdata_reg[19]_0 [14]),
        .\axi_rdata_reg[16]_1 (\axi_rdata_reg[19]_1 [14]),
        .\axi_rdata_reg[17] (\axi_rdata_reg[17] ),
        .\axi_rdata_reg[17]_0 (\axi_rdata_reg[17]_0 ),
        .\axi_rdata_reg[17]_1 (hout_watch_n_10),
        .\axi_rdata_reg[18] (\axi_rdata_reg[18] ),
        .\axi_rdata_reg[18]_0 (\axi_rdata_reg[18]_0 ),
        .\axi_rdata_reg[18]_1 (hout_watch_n_8),
        .\axi_rdata_reg[20] (\axi_rdata_reg[20] ),
        .\axi_rdata_reg[20]_0 (\axi_rdata_reg[20]_0 ),
        .\axi_rdata_reg[20]_1 (hout_watch_n_11),
        .\axi_rdata_reg[21] (\axi_rdata_reg[21] ),
        .\axi_rdata_reg[21]_0 (\axi_rdata_reg[21]_0 ),
        .\axi_rdata_reg[21]_1 (q_reg),
        .\axi_rdata_reg[21]_2 (hout_watch_n_12),
        .\axi_rdata_reg[21]_3 ({Q[19:18],Q[16:14]}),
        .ff_cur_reg(btn3_n_0),
        .\hour_reg[0]_0 (ed_source_n_6),
        .\hour_reg[2]_0 (ed_source_n_9),
        .\hour_reg[3]_0 (hour_set_n_2),
        .\hour_reg[4]_0 (hour_set_n_13),
        .\hour_reg[4]_1 ({hout_watch_n_3,hout_watch_n_4,hout_watch_n_5,hout_watch_n_6,hout_watch_n_7}),
        .p_0_in(\ed_clk/p_0_in ),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sel0(sel0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_24_3 hout_watch
       (.AR(s00_axi_aresetn_0),
        .D(p_1_in),
        .E(ed_source_n_3),
        .Q({hout_watch_n_3,hout_watch_n_4,hout_watch_n_5,hout_watch_n_6,hout_watch_n_7}),
        .ff_cur_reg(hour_clock_n_0),
        .\hour_reg[1]_0 (hout_watch_n_10),
        .\hour_reg[2]_0 (ed_source_n_5),
        .\hour_reg[3]_0 (hout_watch_n_2),
        .\hour_reg[4]_0 (hout_watch_n_8),
        .\hour_reg[4]_1 (hout_watch_n_9),
        .\hour_reg[4]_2 (hout_watch_n_11),
        .\hour_reg[4]_3 (hout_watch_n_12),
        .\hour_reg[4]_4 ({hour_set_n_3,hour_set_n_4,hour_set_n_5,hour_set_n_6}),
        .p_0_in(\ed_clk/p_0_in_1 ),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_60_4 min_clock
       (.AR(s00_axi_aresetn_0),
        .clk_min(clk_min),
        .inc_sec(inc_sec),
        .p_0_in(\ed/p_0_in ),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60 min_set
       (.AR(s00_axi_aresetn_0),
        .D(D[13:7]),
        .E(ed_source_n_8),
        .Q(set_min1),
        .\axi_rdata[14]_i_2_0 (Q[13:7]),
        .\axi_rdata[8]_i_2_0 (q_reg),
        .\axi_rdata_reg[10] (\axi_rdata_reg[10] ),
        .\axi_rdata_reg[11] (\axi_rdata_reg[11] ),
        .\axi_rdata_reg[12] (\axi_rdata_reg[12] ),
        .\axi_rdata_reg[13] (\axi_rdata_reg[13] ),
        .\axi_rdata_reg[14] (\axi_rdata_reg[14] ),
        .\axi_rdata_reg[14]_0 (\axi_rdata_reg[19]_0 [13:7]),
        .\axi_rdata_reg[14]_1 (\axi_rdata_reg[19]_1 [13:7]),
        .\axi_rdata_reg[8] (\axi_rdata_reg[8] ),
        .\axi_rdata_reg[9] (\axi_rdata_reg[9] ),
        .\bcd10_reg[0]_0 (min_watch_n_6),
        .\bcd10_reg[1]_0 (min_watch_n_7),
        .\bcd10_reg[2]_0 (ed_source_n_9),
        .\bcd10_reg[2]_1 (min_watch_n_8),
        .\bcd1_reg[3]_0 ({min_watch_n_2,min_watch_n_3,min_watch_n_4,min_watch_n_5}),
        .btn_min(btn_min),
        .p_0_in(\ed_clk/p_0_in_2 ),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sel0(sel0),
        .set_min10(set_min10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_5 min_watch
       (.AR(s00_axi_aresetn_0),
        .E(ed_source_n_4),
        .Q(set_min1),
        .\bcd10_reg[0]_0 (min_watch_n_6),
        .\bcd10_reg[1]_0 (min_watch_n_7),
        .\bcd10_reg[2]_0 (min_watch_n_8),
        .\bcd10_reg[2]_1 (ed_source_n_5),
        .\bcd1_reg[3]_0 ({min_watch_n_2,min_watch_n_3,min_watch_n_4,min_watch_n_5}),
        .clk_min(clk_min),
        .p_0_in(\ed_clk/p_0_in_3 ),
        .p_0_in_0(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .set_min10(set_min10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000 msec_clock
       (.AR(s00_axi_aresetn_0),
        .E(msec_clock_n_0),
        .\cnt_clksource_reg[0]_0 (usec_clock_n_0),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_1000_6 sec_clock
       (.AR(s00_axi_aresetn_0),
        .E(msec_clock_n_0),
        .clk_sec(clk_sec),
        .p_0_in(\ed/p_0_in_4 ),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_7 sec_set
       (.AR(s00_axi_aresetn_0),
        .D(D[6:0]),
        .Q(set_sec1),
        .\axi_rdata[0]_i_2_0 (q_reg),
        .\axi_rdata[6]_i_2_0 (Q[6:0]),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .\axi_rdata_reg[2] (\axi_rdata_reg[2] ),
        .\axi_rdata_reg[3] (\axi_rdata_reg[3] ),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4] ),
        .\axi_rdata_reg[5] (\axi_rdata_reg[5] ),
        .\axi_rdata_reg[6] (\axi_rdata_reg[6] ),
        .\axi_rdata_reg[6]_0 (\axi_rdata_reg[19]_0 [6:0]),
        .\axi_rdata_reg[6]_1 (\axi_rdata_reg[19]_1 [6:0]),
        .\bcd10_reg[0]_0 (sec_watch_n_4),
        .\bcd10_reg[1]_0 (sec_watch_n_5),
        .\bcd10_reg[2]_0 (ed_source_n_9),
        .\bcd10_reg[2]_1 (sec_watch_n_6),
        .\bcd1_reg[3]_0 ({sec_watch_n_0,sec_watch_n_1,sec_watch_n_2,sec_watch_n_3}),
        .btn_sec(btn_sec),
        .p_0_in(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sel0(sel0),
        .set_sec10(set_sec10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_loadable_counter_bcd_60_8 sec_watch
       (.AR(s00_axi_aresetn_0),
        .Q(set_sec1),
        .\bcd10_reg[0]_0 (sec_watch_n_4),
        .\bcd10_reg[1]_0 (sec_watch_n_5),
        .\bcd10_reg[2]_0 (sec_watch_n_6),
        .\bcd10_reg[2]_1 (ed_source_n_5),
        .\bcd1_reg[3]_0 ({sec_watch_n_0,sec_watch_n_1,sec_watch_n_2,sec_watch_n_3}),
        .clk_sec(clk_sec),
        .p_0_in(p_0_in_0),
        .s00_axi_aclk(s00_axi_aclk),
        .set_sec10(set_sec10));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_T_flip_flop_p t_mode
       (.AR(s00_axi_aresetn_0),
        .D(D[17]),
        .Q(Q[17]),
        .\axi_rdata[19]_i_2_0 (hout_watch_n_9),
        .\axi_rdata[19]_i_2_1 (hour_set_n_13),
        .\axi_rdata_reg[19] (\axi_rdata_reg[19] ),
        .\axi_rdata_reg[19]_0 (\axi_rdata_reg[19]_0 [15]),
        .\axi_rdata_reg[19]_1 (\axi_rdata_reg[19]_1 [15]),
        .q_reg_0(q_reg),
        .q_reg_1(q_reg_0),
        .s00_axi_aclk(s00_axi_aclk),
        .sel0(sel0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_div_100 usec_clock
       (.AR(s00_axi_aresetn_0),
        .ff_old_reg(usec_clock_n_0),
        .s00_axi_aclk(s00_axi_aclk));
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
