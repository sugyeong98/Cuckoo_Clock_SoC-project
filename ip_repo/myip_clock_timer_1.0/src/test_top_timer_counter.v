`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�ð踸��� Ÿ�̸� + ī����
module watch_top(
            input clk, reset_p,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec));
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000(clk_sec));
            clock_div_60(.clk(clk), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60(clk_min));   
            
            wire [3:0] sec1, sec10, min1, min10;  // ī���� �ν��Ͻ� �̿�
            counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
            counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));      
            
            //fnd ��� �ν��Ͻ� �̿�
            wire [15:0] value;
            assign value = { min10, min1, sec10, sec1};
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�ð踸��� Ÿ�̸� + ī���� (��ư 3���� ���ٲٱ�) ��ư 0������ ���ٲٱ� (���������� �ʿ�) set ���/ watch ���/ ��Ŭ 
//mux �����...??// c��� ���� �����ϴ� �� ó�� ���̾� ������ �ѹ��� ���� �ۼ��ϴ� ���� ���� (������ �� �������� ��� �߻�)
module watch_top_btn(
            input clk, reset_p,
            input [2:0] btn,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            //ü�͸� ���� ����
            wire btn_mode;
            wire btn_sec;
            wire btn_min;
            button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_mode));
            button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
            button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                      
//            wire btn_mode;// T18 ��ư�� ������ ��� ����
//            edge_detector_p        ed_btn0( .clk(clk), .reset_p(reset_p), .cp(btn[0]), .n_edge(btn_mode));
            
//            wire btn_sec;       // ��ư1(T17)�� ������  set ��忡�� 1�� ����, ���������Ͱ� �߻��ϰ� �� ������ btn_sec
//            edge_detector_p         ed_btn1( .clk(clk), .reset_p(reset_p), .cp(btn[1]), .n_edge(btn_sec));
             
//            wire btn_min;
//            edge_detector_p         ed_btn2( .clk(clk), .reset_p(reset_p), .cp(btn[2]), .n_edge(btn_min));
             
            wire set_watch;   // btn0�� ������ btn_mode�߻� -> btn_mode �߻��ϸ� ���
            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire inc_sec, inc_min;    //������, �������� ������ ����
            assign inc_sec = set_watch ? btn_sec : clk_sec; // set_watch �� 1�϶�  //mux
            assign inc_min = set_watch ? btn_min : clk_min; //�� ���� //mux
            
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
            clock_div_60(.clk(clk), .reset_p(reset_p), .clk_source(inc_sec), .clk_div_60_nedge(clk_min));   //60�� = 1�� �����
            
            wire [3:0] sec1, sec10, min1, min10;  // ī���� �ν��Ͻ� �̿�
            counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(inc_sec), .bcd1(sec1), .bcd10(sec10));
            counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(inc_min), .bcd1(min1), .bcd10(min10));      
            
            //fnd ��� �ν��Ͻ� �̿�
            wire [15:0] value;
            assign value = { min10, min1, sec10, sec1};
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//loadable counter �ν��Ͻ� ����� �߰�
module loadable_watch_top_btn(
            input clk, reset_p,
            input [2:0] btn,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            //ü�͸� ���� ����
            wire btn_mode, btn_sec, btn_min;
            button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_mode));
            button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
            button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                      
           wire set_watch;   // btn0�� ������ btn_mode�߻� -> btn_mode �߻��ϸ� ���
            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire watch_load_en, set_load_en;
             edge_detector_n        ed_source       (.clk(clk), .reset_p(reset_p), .cp(set_watch),  .n_edge( watch_load_en), .p_edge(set_load_en));
            
            
            wire inc_sec, inc_min;    //������, �������� ������ ����
            assign inc_sec = set_watch ? btn_sec : clk_sec; // set_watch �� 1�϶�  //mux
            assign inc_min = set_watch ? btn_min : clk_min; //�� ���� //mux
            
            
            wire clk_usec, clk_msec, clk_sec, clk_min;
            clock_div_100   usec_clock(.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
            clock_div_1000 msec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
            clock_div_1000 sec_clock(.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
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
            
            //fnd ��� �ν��Ͻ� �̿�
            wire [15:0] value, watch_value, set_value;
            assign watch_value = { watch_min10, watch_min1, watch_sec10, watch_sec1};
            assign set_value = {set_min10, set_min1, set_sec10, set_sec1};
            assign value = set_watch ? set_value : watch_value;
                        
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//��ž��ġ

module stop_watch_top(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop�� 1�̸� clk(start) , 0�̸� 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop �� 1�϶��� �۵��ϰڴٴ� ��
                
                wire btn_start;  //0�϶� stop�϶� (register�� �����Ҷ� �ڵ����� 0���� �ʱ�ȭ �Ǳ⿡)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 //button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
                 //button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                 
                 //wire start_stop;
                 T_flip_flop_p               t_start( .clk(clk), .reset_p(reset_p) , .t(btn_start), .q(start_stop));  //start_stop�� 0�̾����� 1, 1�̾����� 0
                 
                 assign led_start = start_stop;  //start_stop�� 1�̸� led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60   counter_sec(.clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60   counter_min(.clk(clk), .reset_p(reset_p), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                wire [15:0] value;
                assign value = { min10, min1, sec10, sec1};
                fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));       
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//��ž��ġ + lap ��ư �߰� +clear
// 
module stop_watch_top_lap_clear(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop�� 1�̸� clk(start) , 0�̸� 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop �� 1�϶��� �۵��ϰڴٴ� ��
                
                wire btn_start, btn_clear;  //0�϶� stop(register�� �����Ҷ� �ڵ����� 0���� �ʱ�ȭ �Ǳ⿡)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                 assign reset_start = reset_p | btn_clear;
                 
                 //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop�� 0�̾����� 1, 1�̾����� 0
                 assign led_start = start_stop;  //start_stop�� 1�̸� led on
                 
                 wire btn_lap, lap;
                 T_flip_flop_p               t_lap      ( .clk(clk), .reset_p(reset_start) , .t(btn_lap), .q(lap));  //start_stop�� 0�̾����� 1, 1�̾����� 0
                  assign led_lap = lap;  //start_stop�� 1�̸� led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60_clear   counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                reg [15:0] lap_time; //lap ��ư ���� �� ������ �ð��� �����ϱ� ���� ��������
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
//��ž��ġ + lap ��ư �߰� lap�� �ٸ� ������� ���,,,?
// 
module stop_watch_top_lap_clear_1(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop�� 1�̸� clk(start) , 0�̸� 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                // start_stop �� 1�϶��� �۵��ϰڴٴ� ��
                
                wire btn_start, btn_clear;  //0�϶� stop(register�� �����Ҷ� �ڵ����� 0���� �ʱ�ȭ �Ǳ⿡)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                
                 
                //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop�� 0�̾����� 1, 1�̾����� 0
                 assign led_start = start_stop;  //start_stop�� 1�̸� led on
                 
                 wire btn_lap; 
                 reg lap;
                
                 always @(posedge clk or posedge reset_p)begin
                    if(reset_p) lap=0;         //reset�� 1�̸� ��¾���
                    else begin
                            if(btn_lap)  lap=~lap;         //t�� 1�̸� ���
                            else if (btn_clear) lap =0;
                     end
                 end
                  //assign reset_start = reset_p | btn_clear;�� ���� ǥ���� t�ø��÷� �ȿ��� �ذ��� ��
                  
                  assign led_lap = lap;  //start_stop�� 1�̸� led on

                 wire [3:0] sec1, sec10, min1, min10;
                counter_bcd_60_clear   counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                
                reg [15:0] lap_time; //lap ��ư ���� �� ������ �ð��� �����ϱ� ���� ��������
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
//  ��, �� , centi�� ��µǴ� ��ž��ġ �����(24.07.18)
    module stop_watch_top_sec_csec(
                input clk, reset_p,
                input [2:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_start, led_lap);
                
                wire clk_start,  start_stop;
                assign clk_start = start_stop ? clk :0;  //start_stop�� 1�̸� clk(start) , 0�̸� 0(stop)
                
                wire clk_usec, clk_msec, clk_sec, clk_csec, clk_min;
                clock_div_100        usec_clock      (.clk(clk_start), .reset_p(reset_start),.clk_div_100(clk_usec)); //1us �����
                clock_div_1000      msec_clock    (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
                clock_div_10           csec_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_msec), .clk_div_10_nedge(clk_csec));     //0.01�� �����
                clock_div_1000      sec_clock        (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
                clock_div_60           min_clock      (.clk(clk_start), .reset_p(reset_start), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
               
                

                
                wire btn_start, btn_clear;  //0�϶� stop(register�� �����Ҷ� �ڵ����� 0���� �ʱ�ȭ �Ǳ⿡)
                 button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_lap));
                 button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_clear));
                 
                 wire reset_start;
                 assign reset_start = reset_p | btn_clear;
                 
                //wire start_stop;
                 T_flip_flop_p               t_start    ( .clk(clk), .reset_p(reset_start) , .t(btn_start), .q(start_stop));  //start_stop�� 0�̾����� 1, 1�̾����� 0
                 assign led_start = start_stop;  //start_stop�� 1�̸� led on
                 
                 wire btn_lap; 
                 reg lap;
                
                 always @(posedge clk or posedge reset_p)begin
                    if(reset_p) lap=0;         //reset�� 1�̸� ��¾���
                    else begin
                            if(btn_lap)  lap=~lap;         //t�� 1�̸� ���
                            else if (btn_clear) lap =0;
                     end
                 end
                 //assign reset_start = reset_p | btn_clear;�� ���� ǥ���� t�ø��÷� �ȿ��� �ذ��� ��
                 
                  assign led_lap = lap;  //start_stop�� 1�̸� led on

                 wire [3:0] sec1, sec10, csec1, csec10;
                counter_bcd_60_clear   counter_min     (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_min), .bcd1(min1), .bcd10(min10));    
                counter_bcd_60_clear      counter_sec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_sec), .bcd1(sec1), .bcd10(sec10));  // 60���� ī���� sec ī��Ʈ
                counter_bcd_100_clear    counter_csec      (.clk(clk), .reset_p(reset_p), .clear(btn_clear), .clk_time(clk_csec), .bcd1(csec1), .bcd10(csec10));  //100���� ī���� csec ī��Ʈ  
                
                reg [15:0] lap_time; //lap ��ư ���� �� ������ �ð��� �����ϱ� ���� ��������
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
//  (24.07.19)  �ֹ� Ÿ�̸� ����� (ex)5:00���� �ٿ�ī���� �ؼ� 0����)
// ��ī����(�ʱⰪ�� �����Ҷ�) �� �ٿ�ī����(ī���͸� �������� ��) ����ؾ���
module cook_timer_top(
                input clk, reset_p,
                input [3:0] btn,
                output [3:0] com,
                output [7:0] seg_7,
                output led_alarm, led_start, buzz);
                
                wire clk_usec, clk_msec, clk_sec, clk_min;
                clock_div_100        usec_clock      (.clk(clk), .reset_p(reset_p), .clk_div_100(clk_usec)); //1us �����
                clock_div_1000      msec_clock     (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
                clock_div_1000      sec_clock        (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
                clock_div_60          min_clock       (.clk(clk), .reset_p(reset_p), .clk_source(clk_sec), .clk_div_60_nedge(clk_min));   
                
                 wire btn_start, btn_sec, btn_min, btn_alarm_off;  
                 button_cntr         btn0       (.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_start));
                 button_cntr         btn1       (.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
                 button_cntr         btn2       (.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
                 button_cntr         btn3       (.clk(clk), .reset_p(reset_p), .btn(btn[3]), .btn_pedge(btn_alarm_off));
                
                //60�� �� ī���� : �ð��� �� ����
                 wire [3:0] set_sec1, set_sec10, set_min1, set_min10;
                 counter_bcd_60         counter_sec      ( .clk(clk), .reset_p(reset_p), .clk_time(btn_sec), .bcd1(set_sec1) , .bcd10(set_sec10));
                 counter_bcd_60         counter_min     ( .clk(clk), .reset_p(reset_p), .clk_time(btn_min), .bcd1(set_min1) , .bcd10(set_min10));
                
                wire [3:0] cur_sec1, cur_sec10, cur_min1, cur_min10, dec_clk;
                loadable_down_counter_bcd_60        cur_sec     ( .clk(clk), .reset_p(reset_p), .clk_time(clk_sec), .load_enable(btn_start), // start ��ư�� ������ �ε� ����
                                                                                                .load_bcd1(set_sec1), .load_bcd10(set_sec10), .bcd1(cur_sec1), .bcd10(cur_sec10), .dec_clk(dec_clk)); //�ʿ��� Ŭ���������� �п��� Ŭ���޾Ƽ� ī��Ʈ
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
