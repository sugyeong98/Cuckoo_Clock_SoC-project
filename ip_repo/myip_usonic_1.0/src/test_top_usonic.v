`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//240724~240725
module test_top_usonic(
                   input clk, reset_p,
                   input echo,
                   output trig,
                   //output [3:0]com,
                   //output [7:0] seg_7,
                   output [15:0] led_debug,
                   output [15:0] dist_bcd
                   );
                   
                   wire [15:0] dist;
                   wire [15:0] echo_buffer;
                   controler_usonic        usonic          (.clk(clk), .reset_p(reset_p),.echo(echo), .trig(trig), .echo_buffer(echo_buffer),  .led_debug(led_debug));
                   
//                   wire [15:0] dist_cm;
//                   assign dist_cm = echo_buffer / 58;
                   
//                   wire [15:0] dist_bcd;
//                   bin_to_dec         bcd_humi        (.bin(dist_cm), .bcd(dist_bcd));
                   
                  
                   bin_to_dec         bcd_humi        (.bin(echo_buffer), .bcd(dist_bcd));
                    
                   fnd_cntr                            fnd                 (.clk(clk), .reset_p(reset_p), .value(dist_bcd), .com(com),  .seg_7(seg_7));
                   
endmodule
