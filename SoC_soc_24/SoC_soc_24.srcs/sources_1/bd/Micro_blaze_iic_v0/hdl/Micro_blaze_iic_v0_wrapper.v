//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu Oct 24 17:33:59 2024
//Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
//Command     : generate_target Micro_blaze_iic_v0_wrapper.bd
//Design      : Micro_blaze_iic_v0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Micro_blaze_iic_v0_wrapper
   (iic_rtl_scl_io,
    iic_rtl_sda_io,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout iic_rtl_scl_io;
  inout iic_rtl_sda_io;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire iic_rtl_scl_i;
  wire iic_rtl_scl_io;
  wire iic_rtl_scl_o;
  wire iic_rtl_scl_t;
  wire iic_rtl_sda_i;
  wire iic_rtl_sda_io;
  wire iic_rtl_sda_o;
  wire iic_rtl_sda_t;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  Micro_blaze_iic_v0 Micro_blaze_iic_v0_i
       (.iic_rtl_scl_i(iic_rtl_scl_i),
        .iic_rtl_scl_o(iic_rtl_scl_o),
        .iic_rtl_scl_t(iic_rtl_scl_t),
        .iic_rtl_sda_i(iic_rtl_sda_i),
        .iic_rtl_sda_o(iic_rtl_sda_o),
        .iic_rtl_sda_t(iic_rtl_sda_t),
        .reset(reset),
        .sys_clock(sys_clock),
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
