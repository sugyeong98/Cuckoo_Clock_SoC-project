`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//240723
module test_top_dht11(
                input clk,reset_p,
                inout dht11_data,
                output [3:0] com,
                output [7:0] seg_7,
                output [2:0] led_state);
                
                wire[7:0] humidity, temperature;
                dht11_cntr          dht11        (.clk(clk),.reset_p(reset_p) ,.dht11_data(dht11_data) , .humidity(humidity), .temperature(temperature), .led_debug(led_state));
                 
                 wire [15:0]humidity_bcd, temperature_bcd;
                 bin_to_dec         bcd_humi        (.bin({4'b0, humidity}), .bcd(humidity_bcd));   //bin�� 12��Ʈ humidity�� 8��Ʈ���� �տ� 4��Ʈ�� 0�� �־���
                 bin_to_dec         bcd_tmpr        (.bin({4'b0, temperature}), .bcd(temperature_bcd));
                 
                wire [15:0] value;
                assign value ={humidity_bcd[7:0], temperature_bcd[7:0]};          //õ, �� �ڸ��� ���� 16������, ��,�� �ڸ��� �µ� 16������ ���
                                
                 fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));   //seg_7�� 4�ڸ� �� 1�ڸ��� ���� ����
                
endmodule
