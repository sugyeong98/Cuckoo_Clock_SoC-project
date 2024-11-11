//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Oct 28 14:37:46 2024
//Host        : LAPTOP-LNPLF8TI running 64-bit major release  (build 9200)
//Command     : generate_target Micro_blaze_pwm_keypad_wrapper.bd
//Design      : Micro_blaze_pwm_keypad_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Micro_blaze_pwm_keypad_wrapper
   (col_0,
    key_valid_0,
    pwm_0,
    reset,
    row_0,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]col_0;
  output key_valid_0;
  output pwm_0;
  input reset;
  input [3:0]row_0;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]col_0;
  wire key_valid_0;
  wire pwm_0;
  wire reset;
  wire [3:0]row_0;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  Micro_blaze_pwm_keypad Micro_blaze_pwm_keypad_i
       (.col_0(col_0),
        .key_valid_0(key_valid_0),
        .pwm_0(pwm_0),
        .reset(reset),
        .row_0(row_0),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
