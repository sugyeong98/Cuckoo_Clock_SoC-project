`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//KEYPAD 240722
module test_top_keypad(
            input clk, reset_p,
            input [3:0] row,
            output [3:0] col,
            output [3:0] com,
            output [7:0] seg_7,
            output led_key_valid
    );
    
    wire [3:0] key_value;
    key_pad_cntr      keypad        (.clk(clk), .reset_p(reset_p), .row(row), .col(col), .key_value(key_value), .key_valid(led_key_valid));
    
    fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value({12'b0, key_value}), .com(com),  .seg_7(seg_7));   //seg_7의 4자리 중 1자리만 쓰기 위해
    
endmodule


//////////////////////////////////////////////////////////////////////////////////
//KEYPAD 240722 fsm
module test_top_keypad_fsm(
            input clk, reset_p,
            input [3:0] row,
            output [3:0] col,
            output [3:0] com,
            output [7:0] seg_7,
            output led_key_valid
    );
    
    wire [3:0] key_value;
    keypad_cntr_FSM      keypad        (.clk(clk), .reset_p(reset_p), .row(row), .col(col), .key_value(key_value), .key_valid(led_key_valid));
    
    fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value({12'b0, key_value}), .com(com),  .seg_7(seg_7));   //seg_7의 4자리 중 1자리만 쓰기 위해
    
endmodule


//////////////////////////////////////////////////////////////////////////////////
//KEYPAD 240722 fsm 업다운
module test_top_keypad_fsm_up_down(
            input clk, reset_p,
            input [3:0] row,
            output [3:0] col,
            output [3:0] com,
            output [7:0] seg_7,
            output led_key_valid
    );
    
    wire [3:0] key_value;
    wire key_valid;
    keypad_cntr_FSM      keypad        (.clk(clk), .reset_p(reset_p), .row(row), .col(col), .key_value(key_value), .key_valid(key_valid));
    assign led_key_valid  =  key_valid;
    
    wire key_valid_p;
    edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(key_valid),  .p_edge(key_valid_p));
    
    reg [15:0] key_count;
    always @(posedge clk or posedge reset_p) begin
            if(reset_p) key_count =0;
            else if(key_valid_p)begin
                        //key_count = key_count+1;
                        if(key_value ==1) key_count = key_count +1;
                        else if(key_value ==2) key_count = key_count -1;
                        else if(key_value ==3) key_count = key_count +2;
            end
    end
    
    fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(key_count), .com(com),  .seg_7(seg_7));   //seg_7의 4자리 중 1자리만 쓰기 위해
    
endmodule