`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//시계만들기 타이머 + 카운터
module watch_top(
            input clk, reset_p,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec));
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000(clk_sec));
            clock_div_60(.clk(clk), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60(clk_min));   
            
            wire [3:0] sec1, sec10, min1, min10;  // 카운터 인스턴스 이용
            counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
            counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));      
            
            //fnd 출력 인스턴스 이용
            wire [15:0] value;
            assign value = { min10, min1, sec10, sec1};
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//시계만들기 타이머 + 카운터 (버튼 3개로 모드바꾸기) 버튼 0누르면 모드바꾸기 (엣지디텍터 필요) set 모드/ watch 모드/ 토클 
//mux 만들기...??// c언어 변수 선언하는 것 처럼 와이어 선언을 한번에 위에 작성하는 것이 좋음 (오류는 안 생기지만 경고 발생)
module watch_top_btn(
            input clk, reset_p,
            input [2:0] btn,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            //체터링 막기 위함
            wire btn_mode;
            wire btn_sec;
            wire btn_min;
            button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_mode));
            button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
            button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                      
//            wire btn_mode;// T18 버튼을 누르면 모드 변경
//            edge_detector_p        ed_btn0( .clk(clk), .reset_p(reset_p), .cp(btn[0]), .n_edge(btn_mode));
            
//            wire btn_sec;       // 버튼1(T17)을 누르면  set 모드에서 1초 증가, 엣지디텍터가 발생하고 그 엣지는 btn_sec
//            edge_detector_p         ed_btn1( .clk(clk), .reset_p(reset_p), .cp(btn[1]), .n_edge(btn_sec));
             
//            wire btn_min;
//            edge_detector_p         ed_btn2( .clk(clk), .reset_p(reset_p), .cp(btn[2]), .n_edge(btn_min));
             
            wire set_watch;   // btn0을 누르면 btn_mode발생 -> btn_mode 발생하면 토글
            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire inc_sec, inc_min;    //초증가, 분증가를 저장할 변수
            assign inc_sec = set_watch ? btn_sec : clk_sec; // set_watch 가 1일때  //mux
            assign inc_min = set_watch ? btn_min : clk_min; //분 증가 //mux
            
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
            clock_div_60(.clk(clk), .reset_p(reset_p), .clk_source(inc_sec), .clk_div_60_nedge(clk_min));   //60초 = 1분 만들기
            
            wire [3:0] sec1, sec10, min1, min10;  // 카운터 인스턴스 이용
            counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(inc_sec), .bcd1(sec1), .bcd10(sec10));
            counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(inc_min), .bcd1(min1), .bcd10(min10));      
            
            //fnd 출력 인스턴스 이용
            wire [15:0] value;
            assign value = { min10, min1, sec10, sec1};
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//loadable counter 인스턴스 만든거 추가
module loadable_watch_top_btn(
            input clk, reset_p,
            input [2:0] btn,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            //체터링 막기 위함
            wire btn_mode, btn_sec, btn_min;
            button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_mode));
            button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
            button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                      
           wire set_watch;   // btn0을 누르면 btn_mode발생 -> btn_mode 발생하면 토글
            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire watch_load_en, set_load_en;
             edge_detector_n        ed_source       (.clk(clk), .reset_p(reset_p), .cp(set_watch),  .n_edge( watch_load_en), .p_edge(set_load_en));
            
            
            wire inc_sec, inc_min;    //초증가, 분증가를 저장할 변수
            assign inc_sec = set_watch ? btn_sec : clk_sec; // set_watch 가 1일때  //mux
            assign inc_min = set_watch ? btn_min : clk_min; //분 증가 //mux
            
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
            clock_div_60(.clk(clk), .reset_p(reset_p), .clk_source(inc_sec), .clk_div_60_nedge(clk_min));   
            
            wire [3:0] watch_sec1, watch_sec10, watch_min1, watch_min10;
            wire [3:0] set_sec1, set_sec10, set_min1, set_min10;
            
             loadable_counter_bcd_60       sec_watch    ( .clk(clk),.reset_p(reset_p), .clk_time(clk_sec), .load_enable(watch_load_en), 
                                                                                         .load_bcd1(set_sec1), .load_bcd10(set_sec10), .bcd1(watch_sec1), .bcd10(watch_sec10));
                                                                   
             loadable_counter_bcd_60       min_watch   ( .clk(clk),.reset_p(reset_p), .clk_time(clk_min), .load_enable(watch_load_en), 
                                                                                          .load_bcd1(set_min1), .load_bcd10(set_min10), .bcd1(watch_min1), .bcd10(watch_min10));
            
                                                                   
             loadable_counter_bcd_60       sec_set          ( .clk(clk),.reset_p(reset_p), .clk_time(btn_sec), .load_enable(set_load_en), 
                                                                                          .load_bcd1(watch_sec1), .load_bcd10(watch_sec10), .bcd1(set_sec1), .bcd10(set_sec10));                                                
            
             loadable_counter_bcd_60       min_set         ( .clk(clk),.reset_p(reset_p), .clk_time(btn_min), .load_enable(set_load_en), 
                                                                                         .load_bcd1(watch_min1), .load_bcd10(watch_min10), .bcd1(set_min1), .bcd10(set_min10)); 
            
            //fnd 출력 인스턴스 이용
            wire [15:0] value, watch_value, set_value;
            assign watch_value = { watch_min10, watch_min1, watch_sec10, watch_sec1};
            assign set_value = {set_min10, set_min1, set_sec10, set_sec1};
            assign value = set_watch ? set_value : watch_value;
                        
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//스탑워치

module stop_watch_top(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop이 1이면 clk(start) , 0이면 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop 이 1일때만 작동하겠다는 뜻
                
                wire btn_start;  //0일때 stop일때 (register는 시작할때 자동으로 0으로 초기화 되기에)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 //button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
                 //button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                 
                 //wire start_stop;
                 T_flip_flop_p               t_start( .clk(clk), .reset_p(reset_p) , .t(btn_start), .q(start_stop));  //start_stop가 0이었으면 1, 1이었으면 0
                 
                 assign led_start = start_stop;  //start_stop이 1이면 led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                wire [15:0] value;
                assign value = { min10, min1, sec10, sec1};
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//스탑워치 + lap 버튼 추가 +clear
// 
module stop_watch_top_lap_clear(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop이 1이면 clk(start) , 0이면 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop 이 1일때만 작동하겠다는 뜻
                
                wire btn_start, btn_clear;  //0일때 stop(register는 시작할때 자동으로 0으로 초기화 되기에)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                 assign reset_start = reset_p | btn_clear;
                 
                 //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop가 0이었으면 1, 1이었으면 0
                 assign led_start = start_stop;  //start_stop이 1이면 led on
                 
                 wire btn_lap, lap;
                 T_flip_flop_p               t_lap      ( .clk(clk), .reset_p(reset_start) , .t(btn_lap), .q(lap));  //start_stop가 0이었으면 1, 1이었으면 0
                  assign led_lap = lap;  //start_stop이 1이면 led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60_clear   counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                reg [15:0] lap_time; //lap 버튼 누른 후 부터의 시간을 저장하기 위한 레지스터
                wire [15:0] cur_time;
                assign cur_time = { min10, min1, sec10, sec1};
                always @(posedge clk or posedge reset_p)begin
                        if(reset_p) lap_time = 0;
                        else if (btn_lap) lap_time =  cur_time;
                        else if(btn_clear) lap_time =0;
                end
                 
                wire [15:0] value;
                assign value = lap ? lap_time : cur_time;
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//스탑워치 + lap 버튼 추가 lap을 다른 방식으로 토글,,,?
// 
module stop_watch_top_lap_clear_1(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop이 1이면 clk(start) , 0이면 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us 만들기
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop 이 1일때만 작동하겠다는 뜻
                
                wire btn_start, btn_clear;  //0일때 stop(register는 시작할때 자동으로 0으로 초기화 되기에)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                
                 
                //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop가 0이었으면 1, 1이었으면 0
                 assign led_start = start_stop;  //start_stop이 1이면 led on
                 
                 wire btn_lap; 
                 reg lap;
                
                 always @(posedge clk or posedge reset_p)begin
                    if(reset_p) lap=0;         //reset이 1이면 출력없음
                    else begin
                            if(btn_lap)  lap=~lap;         //t가 1이면 토글
                            else if (btn_clear) lap =0;
                     end
                 end
                  //assign reset_start = reset_p | btn_clear;와 같은 표현은 t플립플롭 안에서 해결한 것
                  
                  assign led_lap = lap;  //start_stop이 1이면 led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60_clear   counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                reg [15:0] lap_time; //lap 버튼 누른 후 부터의 시간을 저장하기 위한 레지스터
                wire [15:0] cur_time;
                assign cur_time = { min10, min1, sec10, sec1};
                always @(posedge clk or posedge reset_p)begin
                        if(reset_p) lap_time = 0;
                        else if (btn_lap) lap_time =  cur_time;
                        else if(btn_clear) lap_time =0;
                end
                 
                wire [15:0] value;
                assign value = lap ? lap_time : cur_time;
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  분, 초 , centi초 출력되는 스탑워치 만들기(24.07.18)
    module stop_watch_top_sec_csec(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop이 1이면 clk(start) , 0이면 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_csec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_start),.clk_div_100(clk_usec)); //1us 만들기
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
                clock_div_10           csec_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_msec), .clk_div_10_nedge(clk_csec));     //0.01초 만들기
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
               
                

                
                wire btn_start, btn_clear;  //0일때 stop(register는 시작할때 자동으로 0으로 초기화 되기에)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                 assign reset_start = reset_p | btn_clear;
                 
                //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop가 0이었으면 1, 1이었으면 0
                 assign led_start = start_stop;  //start_stop이 1이면 led on
                 
                 wire btn_lap; 
                 reg lap;
                
                 always @(posedge clk or posedge reset_p)begin
                    if(reset_p) lap=0;         //reset이 1이면 출력없음
                    else begin
                            if(btn_lap)  lap=~lap;         //t가 1이면 토글
                            else if (btn_clear) lap =0;
                     end
                 end
                 //assign reset_start = reset_p | btn_clear;와 같은 표현은 t플립플롭 안에서 해결한 것
                 
                  assign led_lap = lap;  //start_stop이 1이면 led on

                 wire [3:0] sec1, sec10, csec1, csec10;
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                counter_bcd_60_clear      counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));  // 60진수 카운터 sec 카운트
                counter_bcd_100_clear    counter_csec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_csec), .bcd1(csec1), .bcd10(csec10));  //100진수 카운터 csec 카운트  
                
                reg [15:0] lap_time; //lap 버튼 누른 후 부터의 시간을 저장하기 위한 레지스터
                wire [15:0] cur_time;
                assign cur_time = { sec10, sec1, csec10, csec1};
                always @(posedge clk or posedge reset_p)begin
                        if(reset_p) lap_time = 0;
                        else if (btn_lap) lap_time =  cur_time;
                        else if(btn_clear) lap_time =0;
                end
                 
                wire [15:0] value;
                assign value = lap ? lap_time : cur_time;
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  (24.07.19)  주방 타이머 만들기 (ex)5:00에서 다운카운터 해서 0으로)
// 업카운터(초기값을 설정할때) 와 다운카운터(카운터를 시작했을 때) 사용해야함
module cook_timer_top(
                input clk, reset_p,
                input [3:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_alarm, led_start, buzz);
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk), .reset_p(reset_p), .clk_div_100(clk_usec)); //1us 만들기
                clock_div_1000      msec_clock     (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms 만들기
                clock_div_1000      sec_clock        (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s 만들기 
                clock_div_60          min_clock       (.clk(clk), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                
                 wire btn_start, btn_sec, btn_min, btn_alarm_off;  
                 button_cntr         btn0       (.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1       (.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
                 button_cntr         btn2       (.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                 button_cntr         btn3       (.clk(clk), .reset_p(reset_p), .btn(btn[3]), .btn_pedge(btn_alarm_off));
                
                //60진 업 카운터 : 시간과 초 세팅
                 wire [3:0] set_sec1, set_sec10, set_min1, set_min10;
                 counter_bcd_60         counter_sec      ( .clk(clk), .reset_p(reset_p), .clk_time(btn_sec), .bcd1(set_sec1) , .bcd10(set_sec10));
                 counter_bcd_60         counter_min     ( .clk(clk), .reset_p(reset_p), .clk_time(btn_min), .bcd1(set_min1) , .bcd10(set_min10));
                
                wire [3:0] cur_sec1, cur_sec10, cur_min1, cur_min10, dec_clk;
                loadable_down_counter_bcd_60        cur_sec     ( .clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .load_enable(btn_start), // start 버튼이 눌리면 로드 시작
                                                                                                .load_bcd1(set_sec1), .load_bcd10(set_sec10), .bcd1(cur_sec1), .bcd10(cur_sec10), .dec_clk(dec_clk)); //초에서 클럭내보내고 분에서 클럭받아서 카운트
                loadable_down_counter_bcd_60        cur_min     ( .clk(clk), .reset_p(reset_p), .clk_time(dec_clk), .load_enable(btn_start),
                                                                                                .load_bcd1(set_min1), .load_bcd10(set_min10), .bcd1(cur_min1), .bcd10(cur_min10));
                                             
               reg start_set, alarm;
               wire [15:0] value, set_time, cur_time;
                always @(posedge clk or posedge reset_p) begin
                            if(reset_p) begin
                                    start_set = 0;
                                    alarm =0;
                            end
                            
                            else begin
                                    if(btn_start) start_set = ~start_set;
                                    else if(cur_time ==0 && start_set) begin
                                            start_set =0;
                                            alarm =1;
                                    end
                                    else if(btn_alarm_off) alarm =0;
                            end
                            
                 end
                
                assign led_alarm = alarm;
                assign buzz =alarm;
                assign led_start =start_set;
                
                assign set_time = {set_min10, set_min1, set_sec10, set_sec1};
                assign cur_time = {cur_min10, cur_min1, cur_sec10, cur_sec1};
                assign value = start_set ? cur_time : set_time;
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
                
                
endmodule
