`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module led_pwm_top(
            input clk, reset_p,
            input [6:0] duty,
            output pwm);
            
            pwm_128step     pwm_inst        (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(pwm));
    
endmodule


//////////////////////////////////////////////////////////////////////////////////
//240731
module led_pwm_top_clkdiv(
            input clk, reset_p,
            input [6:0] duty,
            output pwm);
            
            
            reg [31 :0] clk_div;
            always @(posedge clk) clk_div = clk_div + 1;
            
            pwm_128step     pwm_inst        (.clk(clk), .reset_p(reset_p),  .duty(clk_div[27:21]), .pwm(pwm)); // 천천히 duty비가 증가하는 7비트
    
endmodule

//////////////////////////////////////////////////////////////////////////////////
//240801
module led_pwm_top_rgb(
            input clk, reset_p,
            output pwm, led_r, led_g, led_b);
            
            
            reg [31 :0] clk_div;
            always @(posedge clk) clk_div = clk_div + 1;
            
//            pwm_100step     pwm_inst        (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(pwm));
            
//            pwm_100step     pwm_r               (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(led_r));
//            pwm_100step     pwm_g              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(led_g));
//            pwm_100step     pwm_b              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(led_b));
 
 
//            pwm_100step     pwm_inst        (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(pwm));
            
//            pwm_Nstep_freq      pwm_r               (.clk(clk), .reset_p(reset_p),  .duty(clk_div[28:22]), .pwm(led_r));
//            pwm_Nstep_freq      pwm_g              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[27:21]), .pwm(led_g));
//            pwm_Nstep_freq      pwm_b              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[26:20]), .pwm(led_b));
            
           pwm_100step     pwm_inst        (.clk(clk), .reset_p(reset_p),  .duty(clk_div[25:19]), .pwm(pwm));
            
            pwm_Nstep_freq     #(.duty_step(77))           pwm_r               (.clk(clk), .reset_p(reset_p),  .duty(clk_div[28:22]), .pwm(led_r));
            pwm_Nstep_freq     #(.duty_step(93))          pwm_g              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[27:21]), .pwm(led_g));
            pwm_Nstep_freq     #(.duty_step(103))       pwm_b              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[26:20]), .pwm(led_b));
    
endmodule

//////////////////////////////////////////////////////////////////////////////////
//240801
module dc_moter_pwm_top(
        input clk, reset_p,
        output motor_pwm);
        
          reg [31 :0] clk_div;
          always @(posedge clk) clk_div = clk_div + 1;
          
          pwm_Nstep_freq     #(.duty_step(4), .pwm_freq(100))       
                                                      pwm_motor              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[31:30]), .pwm(motor_pwm));
            
endmodule


//////////////////////////////////////////////////////////////////////////////////
//240801 fnd에  표시
module dc_moter_pwm_top_fnd(
        input clk, reset_p,
        output motor_pwm,
        output [3:0] com, 
        output [7:0] seg_7);
        
          reg [31 :0] clk_div;
          always @(posedge clk) clk_div = clk_div + 1;
          
          pwm_Nstep_freq     #(.duty_step(4), .pwm_freq(100))       
                                                      pwm_motor              (.clk(clk), .reset_p(reset_p),  .duty(clk_div[31:30]), .pwm(motor_pwm));
           
          wire [15:0]duty_bcd;
           bin_to_dec         bcd_duty        (.bin({10'b0, clk_div[31:30]}), .bcd(duty_bcd));
           
           fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(duty_bcd), .com(com),  .seg_7(seg_7));
            
endmodule

//////////////////////////////////////////////////////////////////////////////////
//240801 리셋추가
module dc_moter_pwm_top_fnd_reset(
        input clk, reset_p,
        output motor_pwm,
        output [3:0] com, 
        output [7:0] seg_7);
        
          reg [31 :0] clk_div;
          always @(posedge clk or posedge reset_p) begin
                        if(reset_p) clk_div =0;
                        else clk_div = clk_div + 1;
          end    
                    
          wire clk_div_26_nedge;
          edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(clk_div[26]), .n_edge(clk_div_26_nedge));  
          
          reg [5:0] duty;
          always @(posedge clk or posedge reset_p) begin
                        if(reset_p) duty =20;
                        else if(clk_div_26_nedge)begin 
                                   if(duty >=99 )duty =20;
                                   else duty = duty+1;
                        end
          end    
          
          pwm_Nstep_freq     #(.duty_step(100), .pwm_freq(100))       
                                                      pwm_motor              (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(motor_pwm));
           
          wire [15:0]duty_bcd;
           bin_to_dec         bcd_duty        (.bin({10'b0, duty}), .bcd(duty_bcd));
           
           fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(duty_bcd), .com(com),  .seg_7(seg_7));
            
endmodule


//////////////////////////////////////////////////////////////////////////////////
//240801 서보모터
module servo_moter_pwm_top(
        input clk, reset_p,
        input [2:0] btn,
        output motor_pwm,
        output [3:0] com, 
        output [7:0] seg_7);
        
//          wire clk_usec, clk_msec, clk_sec, clk_min;
//          clock_div_100    usec_clock         (.clk(clk), .reset_p(reset_p), .clk_div_100(clk_usec));
//          clock_div_1000   msec_clock         (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));   
//          clock_div_1000   sec_clock          (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));      
          
          wire btn_15sec, btn_left, btn_right;
           button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_15sec));
           button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_left));
           button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_right));
          
         reg [6:0] duty;
//          always @(posedge clk or posedge reset_p) begin
//                        if(reset_p) duty =0;
//                        else if(clk_sec)begin 
//                                   if(duty >=99 )duty =0;
//                                   else duty = duty+1;
//                        end
//          end  
           always @(posedge clk or posedge reset_p) begin
                        if(reset_p) duty =15;
                        else if(btn_15sec)begin
                                if(duty>=75) duty =15;
                                else begin
                                         duty = duty+15;
                                end
                        end
                        else if(btn_left)begin
                                if(duty>=75) duty =15;
                                else duty = duty+1;
                        end
                        else if(btn_right)begin
                                if(duty>=75) duty =15;
                                else if(duty<=15) duty =15;
                                else duty = duty-1;
                        end
          end    
          
          pwm_Nstep_freq     #(.duty_step(600), .pwm_freq(50))       
                                                      pwm_motor              (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(motor_pwm));
         
//          pwm_Nstep_freq     #(.duty_step(200), .pwm_freq(50))       
//                                                      pwm_motor_check              (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(motor_pwm));                                             
                                                      
           
          wire [15:0]duty_bcd;
           bin_to_dec         bcd_duty        (.bin({10'b0, duty}), .bcd(duty_bcd));
           
           fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(duty_bcd), .com(com),  .seg_7(seg_7));

endmodule

//////////////////////////////////////////////////////////////////////////////////
//2408012 서보모터
module servo_moter_pwm_top_auto(
        input clk, reset_p,
        input [2:0] btn,
        output motor_pwm,
        output [3:0] com, 
        output [7:0] seg_7);
        
          wire clk_usec, clk_msec, clk_sec, clk_csec;
          clock_div_100    usec_clock         (.clk(clk), .reset_p(reset_p), .clk_div_100(clk_usec));
          clock_div_1000   msec_clock         (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));   
           clock_div_10         csec_clock      (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_10_nedge(clk_csec));
          clock_div_1000   sec_clock          (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));      
          
          wire btn_downup, btn_left, btn_right;
           button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_downup));
           button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_left));
           button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_right));
          
         reg [6:0] duty;
         reg [6:0] duty_min, duty_max;
         reg down_up;

           always @(posedge clk or posedge reset_p) begin
                        if(reset_p) begin 
                                    duty =15;
                                    duty_min = 15;
                                    duty_max = 75;
                                    down_up =0;
                        end
                        
                        else if(clk_csec)begin
                                if(!down_up) begin
                                    if(duty<=duty_max) duty =duty +1;
                                    else down_up =1;
                                end
                                else if(down_up) begin
                                      if(duty>=duty_min) duty =duty -1;
                                      else down_up =0;
                                end

                        end
                        
                        else if(btn_downup)down_up = ~down_up;
//                        else if(btn_left) duty_max =60;
//                        else if(btn_right) duty_max = 30;
          end    
          
          pwm_Nstep_freq     #(.duty_step(600), .pwm_freq(50))       
                                                      pwm_motor              (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(motor_pwm));
         
//          pwm_Nstep_freq     #(.duty_step(200), .pwm_freq(50))       
//                                                      pwm_motor_check              (.clk(clk), .reset_p(reset_p),  .duty(duty), .pwm(motor_pwm));                                             
                                                      
           
          wire [15:0]duty_bcd;
           bin_to_dec         bcd_duty        (.bin({10'b0, duty}), .bcd(duty_bcd));
           
           fnd_cntr               fnd              (.clk(clk), .reset_p(reset_p), .value(duty_bcd), .com(com),  .seg_7(seg_7));

endmodule