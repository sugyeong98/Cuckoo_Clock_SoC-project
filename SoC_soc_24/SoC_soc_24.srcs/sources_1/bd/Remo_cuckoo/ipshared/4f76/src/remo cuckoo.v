`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module remo_cuckoo(
    input clk, reset_p,
    input [3:0] btn,
    output sda, scl,
    output [3:0] com,      
    output [7:0] seg_7);

wire [23:0] value;
watch_set                   (.clk(clk), .reset_p(reset_p),.btn(btn),.value(value),.com(com),.seg_7(seg_7));
i2c_textlcd_clock_data      (.clk(clk), .reset_p(reset_p), .value(value), .sda(sda), .scl(scl));


endmodule

//////////////////////////////////////////////////////////////////////////////////
module watch_set(
            input clk, reset_p,
            input set_watch,
            input [6:0] btn,
            output [23:0] value,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            wire btn_mode, btn_sec_up, btn_min_up, btn_hour_up, btn_sec_down, btn_min_down, btn_hour_down;
            //assign btn_mode = btn[0];
            assign btn_sec_up = btn[1];
            assign btn_min_up = btn[2];
            assign btn_hour_up = btn[3];
            assign btn_sec_down = btn[4];
            assign btn_min_down = btn[5];
            assign btn_hour_down = btn[6];

                      
//           wire set_watch;   // btn0을 누르면 btn_mode발생 -> btn_mode 발생하면 토글
//            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire watch_load_en, set_load_en;
             edge_detector_n        ed_source       (.clk(clk), .reset_p(reset_p), .cp(set_watch),  .n_edge(watch_load_en), .p_edge(set_load_en));
            
            
            
            
            wire clk_usec, clk_msec, clk_sec, clk_min, clk_hour;
            clock_div_100   usec_clock  (.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
            clock_div_1000  msec_clock  (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
            clock_div_1000  sec_clock   (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
            clock_div_60    min_clock   (.clk(clk), .reset_p(reset_p), .up_clk_source(inc_sec), .down_clk_source(btn_sec_down), .clk_div_60_nedge(clk_min));   
            clock_div_60    hour_clock  (.clk(clk), .reset_p(reset_p), .up_clk_source(inc_min), .down_clk_source(btn_min_down), .clk_div_60_nedge(clk_hour));   
            
            wire [3:0] watch_sec1, watch_sec10, watch_min1, watch_min10;
            wire [7:0] watch_hour, set_hour;
            wire [3:0] set_sec1, set_sec10, set_min1, set_min10;
            
             loadable_counter_bcd_60       sec_watch    ( .clk(clk),.reset_p(reset_p), .clk_time(clk_sec), .load_enable(watch_load_en), 
                                                                                         .load_bcd1(set_sec1), .load_bcd10(set_sec10), .bcd1(watch_sec1), .bcd10(watch_sec10));    
                                                                   
             loadable_counter_bcd_60       min_watch   ( .clk(clk),.reset_p(reset_p), .clk_time(clk_min), .load_enable(watch_load_en), 
                                                                                          .load_bcd1(set_min1), .load_bcd10(set_min10), .bcd1(watch_min1), .bcd10(watch_min10));
                                                                            
             loadable_counter_bcd_24        hout_watch          (.clk(clk), .reset_p(reset_p), .clk_time(clk_hour), .load_enable(watch_load_en),
                                                                                         .load_hour(set_hour),.hour(watch_hour));             
                                              
                                              
                                                                   
//             loadable_counter_bcd_60       sec_set           (.clk(clk),.reset_p(reset_p), .clk_time(btn_sec), .load_enable(set_load_en), 
//                                                                                          .load_bcd1(watch_sec1), .load_bcd10(watch_sec10), .bcd1(set_sec1), .bcd10(set_sec10));
                                                                                          
             loadable_updown_counter_bcd_60  sec_updown_set  (.clk(clk), .reset_p(reset_p), .up_clk(btn_sec_up), .down_clk(btn_sec_down), .load_enable(set_load_en),
                                                                                          .load_bcd1(watch_sec1), .load_bcd10(watch_sec10), .bcd1(set_sec1), .bcd10(set_sec10));
                                                                                         
//             loadable_counter_bcd_60       min_set           (.clk(clk),.reset_p(reset_p), .clk_time(btn_min), .load_enable(set_load_en), w
//                                                                                         .load_bcd1(watch_min1), .load_bcd10(watch_min10), .bcd1(set_min1), .bcd10(set_min10)); 
            
             loadable_updown_counter_bcd_60  min_updown_set  (.clk(clk), .reset_p(reset_p), .up_clk(btn_min_up), .down_clk(btn_min_down), .load_enable(set_load_en),
                                                                                         .load_bcd1(watch_min1), .load_bcd10(watch_min10), .bcd1(set_min1), .bcd10(set_min10));
            
            
//             loadable_counter_bcd_24        hour_set         (.clk(clk), .reset_p(reset_p), .clk_time(btn_hour), .load_enable(set_load_en),
//                                                                                         .load_hour(watch_hour),.hour(set_hour));
            
             loadable_updown_counter_bcd_24   hour_updown_set (.clk(clk), .reset_p(reset_p), .up_clk(btn_hour_up), .down_clk(btn_hour_down), .load_enable(set_load_en),
                                                                                         .load_hour(watch_hour),.hour(set_hour)); 
            
            
             
            wire inc_sec, inc_min, inc_hour;    //초증가, 분증가를 저장할 변수
            assign inc_sec = set_watch ? btn_sec_up : clk_sec; // set_watch 가 1일때  //mux
            assign inc_min = set_watch ? btn_min_up: clk_min; //분 증가 //mux
//            assign inc_hour = set_watch ? (btn_hour_up || btn_hour_down) : clk_hour; //분 증가 //mux
            
            
            wire [15:0] watch_hour_bcd, set_hour_bcd;
            bin_to_dec watchhour (.bin({4'b0, watch_hour}),  .bcd(watch_hour_bcd));
            bin_to_dec sethour   (.bin({4'b0, set_hour}),  .bcd(set_hour_bcd));
            
            //fnd 출력 인스턴스 이용
            wire [23:0] watch_value, set_value;
            assign watch_value = {watch_hour_bcd[7:0], watch_min10, watch_min1, watch_sec10, watch_sec1};
            assign set_value = {set_hour_bcd[7:0], set_min10, set_min1, set_sec10, set_sec1};
            assign value = set_watch ? set_value : watch_value;
                        
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule
//////////////////////////////////////////////////////////////////////////////////
module i2c_textlcd_clock_data(
        input clk, reset_p,
        input [23:0] value,
        output sda, scl
);

        parameter IDLE = 6'b00_0001;
        parameter INIT = 6'b00_0010;  //초기화하는 과정, 처음에 한번만 초기화하면 됨
        parameter SEND_DATA = 6'b00_0100;
        parameter SEND_COMMAND = 6'b00_1000; //0823
        parameter SEND_STRING = 6'b01_0000;

        wire clk_usec;
        clock_div_100    usec_clock  (.clk(clk), .reset_p(reset_p), .clk_div_100_nedge(clk_usec)); 
        
        reg [21:0] count_usec;  
        reg count_usec_e;           //enable 1이면 카운트, 0이면 리셋, 1씩 증가하거나, clear 되거나(2가지 상태)
            always @(negedge clk or posedge reset_p) begin
                        if(reset_p) count_usec = 0;
                        else if(clk_usec && count_usec_e)count_usec = count_usec+1;
                        else if(!count_usec_e) count_usec =0;
             end         

        
        reg [7:0] send_buffer;
        reg rs, send;        
        wire busy;
        i2c_lcd_send_byte( .clk(clk), .reset_p(reset_p), .addr(7'h27),.send_buffer(send_buffer), .rs(rs), .send(send) ,.scl(scl), .sda(sda),.busy(busy), .led(led_debug)); 
        
        reg [5:0] state, next_state;
        always @(negedge clk or posedge reset_p) begin
                if(reset_p) state = IDLE;
                else state = next_state;                
        end
        
        reg init_flag;
        reg [4:0] cnt_data;
        reg [8*5-1:0] hello;
        reg [4:0] cnt_string;
        always @(posedge clk or posedge reset_p) begin
                if(reset_p) begin
                        next_state = IDLE;
                        cnt_data = 0;
                        count_usec_e =0;
                        init_flag =0;
                        rs =0;
                        send =0;
                        hello = "HELLO";
                        cnt_string = 0;
                        
                end
                else begin
                        case(state)
                                IDLE : begin
                                        if(init_flag) begin
                                            if(count_usec < 22'd1000) begin
                                               count_usec_e = 1;
                                            end
                                            else begin
                                                count_usec_e = 0;
                                                next_state = SEND_STRING;         
                                            end
                                        end
                                        else begin
                                                if(count_usec <= 22'd80_000)begin //15_000만 기다려도된다고 데이터시트에는 나와있음
                                                        count_usec_e =1;
                                                end
                                                else begin  
                                                        next_state = INIT;
                                                        count_usec_e =0;
                                                end
                                        end
                                end
                                
                                INIT : begin
                                        if(busy) begin
                                                 send =0;
                                                 if(cnt_data >= 6)begin
                                                        next_state = IDLE;
                                                        init_flag =1;
                                                        cnt_data =0;
                                                        rs =0;
                                                 end
                                        end
                                        else if (!send)begin
                                                case(cnt_data)
                                                        0 :  send_buffer = 8'h33;
                                                        1 :  send_buffer = 8'h32;   //여기까지가 초기화,,?
                                                        2 :  send_buffer = 8'h28;
                                                        3 :  send_buffer = 8'h0f;
                                                        4 :  send_buffer = 8'h01;
                                                        5 :  send_buffer = 8'h06;
                                                endcase
                                                rs =0;
                                                send =1; // 엣지를 감지하기에 
                                                cnt_data = cnt_data + 1;
                                        end
                                end
                                
                                SEND_DATA: begin
                                        if(busy) begin
                                                next_state = IDLE;
                                                send =0;
                                                if(cnt_data >=9)cnt_data =0;
                                                else cnt_data = cnt_data+1;
                                        end
                                        else begin
                                                send_buffer = "0" + cnt_data; 
                                                rs =1; //데이터를 보낼 경우에는 rs 1
                                                send =1;
                                        end                              
                                end
                                
                                SEND_COMMAND : begin
                                         if(busy) begin
                                                next_state = IDLE;
                                                send =0;
                                        end
                                        else begin
                                                send_buffer = 8'hc0;    // 보낼 명령어 입력  8'h18 일경우 -> 화면을 왼쪽으로 shift
                                                rs =0;  // 명령어 보낼 경우에는 rs 0
                                                send =1;
                                        end   
                                end
                                
                                SEND_STRING: begin
                                         if(busy) begin
                                                 send =0;
                                                 if(cnt_string >= 9)begin
                                                        next_state = IDLE;
                                                        cnt_string =0;
                                                        rs =1;
                                                 end
                                        end
                                        else if (!send)begin
                                                case(cnt_string)
                                                        0 : begin send_buffer = 8'hc0;  rs =0; end
                                                        1 : begin send_buffer = "0" + value[23:20]; rs =1; end
                                                        2 : begin send_buffer = "0" + value[19:16]; rs =1; end
                                                        3 : begin send_buffer = " "; rs =1; end
                                                        4 : begin send_buffer = "0" + value[15:12]; rs =1; end
                                                        5 : begin send_buffer = "0" + value[11:8]; rs =1; end 
                                                        6 : begin send_buffer = " "; rs =1; end
                                                        7 : begin send_buffer = "0" + value[7:4]; rs =1; end
                                                        8 : begin send_buffer = "0" + value[3:0]; rs =1; end
                                                endcase
                                                send =1; // 엣지를 감지하기에 
                                                cnt_string = cnt_string + 1;
                                        end
                                end
                                
                        endcase
                end
        end
endmodule
