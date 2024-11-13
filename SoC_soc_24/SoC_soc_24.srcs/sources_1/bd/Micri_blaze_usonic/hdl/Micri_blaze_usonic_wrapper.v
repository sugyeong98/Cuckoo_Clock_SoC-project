//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Oct 28 09:55:48 2024
//Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
//Command     : generate_target Micri_blaze_usonic_wrapper.bd
//Design      : Micri_blaze_usonic_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Micri_blaze_usonic_wrapper
   (echo_0,
    iic_rtl_scl_io,
    iic_rtl_sda_io,
    led_debug_0,
    reset,
    sys_clock,
    trig_0,
    usb_uart_rxd,
    usb_uart_txd);
  input echo_0;
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  output [15:0]led_debug_0;
  input reset;
  input sys_clock;
  output trig_0;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire echo_0;
  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire [15:0]led_debug_0;
  wire reset;
  wire sys_clock;
  wire trig_0;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  Micri_blaze_usonic Micri_blaze_usonic_i
       (.echo_0(echo_0),
        .iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .led_debug_0(led_debug_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .trig_0(trig_0),
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
