//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Fri Nov  8 11:30:24 2024
//Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
//Command     : generate_target Remo_cuckoo_wrapper.bd
//Design      : Remo_cuckoo_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Remo_cuckoo_wrapper
   (buzz_tri_o,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    pwm_0,
    reset,
    rx_0,
    sys_clock,
    tx_0,
    usb_uart_rxd,
    usb_uart_txd);
  output [0:0]buzz_tri_o;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output pwm_0;
  input reset;
  input rx_0;
  input sys_clock;
  output tx_0;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]buzz_tri_o;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire pwm_0;
  wire reset;
  wire rx_0;
  wire sys_clock;
  wire tx_0;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  Remo_cuckoo Remo_cuckoo_i
       (.buzz_tri_o(buzz_tri_o),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .pwm_0(pwm_0),
        .reset(reset),
        .rx_0(rx_0),
        .sys_clock(sys_clock),
        .tx_0(tx_0),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF iic_rtl_scl_iobuf
       (.I(iic_rtl_scl_o),
        .IO(iic_rtl_scl_io),
        .O(iic_rtl_scl_i),
        .T(iic_rtl_scl_t));
  IOBUF iic_rtl_sda_iobuf
       (.I(iic_rtl_sda_o),
        .IO(iic_rtl_sda_io),
        .O(iic_rtl_sda_i),
        .T(iic_rtl_sda_t));
endmodule
