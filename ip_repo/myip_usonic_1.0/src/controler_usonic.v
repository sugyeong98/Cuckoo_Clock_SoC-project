`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//240724~240725
module controler_usonic(
                    input clk, reset_p,
                    input echo,                    
                    output reg trig,
                    output reg [15:0] echo_buffer,
                    //output reg [15:0] dist,
                    output [15:0] led_debug);

                    parameter S_IDLE                  = 3'b001;
                    parameter S_TRIG                 = 3'b010; 
                    parameter S_ECHO               = 3'b100;
                    
                     reg [2:0] state, next_state;
                    
                    assign led_debug[5:0] =state;
                    
                    wire clk_usec;
                     clock_div_100   usec_clock      (.clk(clk), .reset_p(reset_p), .clk_div_100_nedge(clk_usec));
                     
                     
                     reg cnt_e;
                     wire  [15:0] dist_cm;
                     clock_div_58_sr04(.clk(clk), .reset_p(reset_p),.clk_usec(clk_usec), .cnt_e(cnt_e),.dist_cm(dist_cm));
                     
                     wire echo_nedge, echo_pedge;
                       edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(echo),  .p_edge(echo_pedge),  .n_edge(echo_nedge));
                     
                     reg [22:0] count_usec;
                     reg  count_usec_e;
                     
                     
                     always @(negedge clk or posedge reset_p) begin
                                        if(reset_p) count_usec =0;
                                        else if (clk_usec && count_usec_e) count_usec = count_usec +1;
                                        else if(!count_usec_e) count_usec =0;
                      end
                      
                      
                      always @(negedge clk or posedge reset_p) begin
                                        if(reset_p) state = S_IDLE;
                                        else state = next_state;
                      end
                      
                      always @(posedge clk or posedge reset_p) begin
                                        if(reset_p) begin
                                                    next_state = S_IDLE;
                                                    count_usec_e =0;
                                                    cnt_e =0;
                                         end
                                         
                                        else begin
                                                    case(state) 
                                                            S_IDLE : begin
                                                                        if(count_usec < 22'd3_000_000) begin
                                                                                    count_usec_e =1;
                                                                        end
                                                                        else begin 
                                                                                    count_usec_e =0;
                                                                                    next_state = S_TRIG;                                                                        
                                                                        end
                                                            end
                                                            
                                                            S_TRIG : begin
                                                                        if(count_usec< 22'd10)begin
                                                                                    count_usec_e =1;
                                                                                    trig =1;
                                                                         end
                                                                         else begin
                                                                                    count_usec_e =0;                                                                                    
                                                                                    trig =0;
                                                                                    next_state = S_ECHO;
                                                                         end
                                                            end
                                                            
                                                            S_ECHO :  begin         
                                                                        if(echo_pedge) begin
                                                                                   // count_usec_e =1;
                                                                                    cnt_e =1;
                                                                        end
                                                                        else if (echo_nedge) begin
                                                                                     //echo_buffer <= count_usec;
                                                                                     //echo_buffer <= dist_cm;
                                                                                     echo_buffer <= dist_cm;
                                                                                     //count_usec_e <=0;
                                                                                     cnt_e <=0;
                                                                                     next_state <= S_IDLE;                                                                       
                                                                        end                                                                                                               
                                                            end                                                                                                                         
                                                    endcase                                                                                    
                                        end
                      end
 
//                      always @(posedge clk or posedge reset_p) begin
//                            if(reset_p) dist =0;
//                            else begin
//                                    if(echo_buffer <174) dist =2;
//                                    else if (echo_buffer < 232) dist = 3;
//                                    else if (echo_buffer < 290) dist = 4;
//                                    else if (echo_buffer < 348) dist = 5;
//                                    else if (echo_buffer < 406) dist = 6;
//                                    else if (echo_buffer < 464) dist = 7;
//                                    else if (echo_buffer < 522) dist = 8;
//                                    else if (echo_buffer < 580) dist = 9;
//                                    else if (echo_buffer < 638) dist = 10;
//                                    else if (echo_buffer < 696) dist = 11;
//                                    else if (echo_buffer < 754) dist = 12;
//                                    else if (echo_buffer < 812) dist = 13;
//                                    else if (echo_buffer < 870) dist = 14;
//                                    else if (echo_buffer < 928) dist = 15;
//                                    else if (echo_buffer < 986) dist = 16;                                    
//                            end
//                      end
endmodule


