`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//sysclk 100분주
//시간을 다루다,,, 실습보드는 클락이 10ns 주파수는 100메가
// 100개로 분주하면 1us 클락을 만들 수 있음. (카운터로 타이머 만들기~)
module clock_div_100(
            input clk, reset_p,
            output clk_div_100,
            output clk_div_100_nedge);
            
            reg [6:0] cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=99)  cnt_sysclk = 0;
                            else cnt_sysclk = cnt_sysclk +1;  //1씩 증가하는 카운터
                    end
             end
             
             assign clk_div_100 = (cnt_sysclk <50) ? 0:1;   // 1us 동안 1주기가 발생하는 clk_dic_100 설정
             // 50번동안 0, 50번동안 1, 총 100번 주기, 1회는 10ns 100번 반복하면 1000ns = 1us
             // 1us 마다 언사이클펄스 만들기(엣지디텍터)
             
             edge_detector_n ed( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_100),
                   .n_edge(clk_div_100_nedge));   
                  
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//1000분주기 -> 마이크로세트 클락을 입력으로 받아야함
module clock_div_1000(
            input clk, reset_p,
            input clk_source, //1us
            output clk_div_1000,
            output clk_div_1000_nedge);
            
            reg [9:0] cnt_clksource;   //1000분주를 하기 위함
            
            wire clk_source_nedge;
            
             edge_detector_n ed_source( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(clk_source),
                   .n_edge(clk_source_nedge));   //1us 마다 엣지디텍터 발생
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin // 엣지티텍터가 발생할때 마다 if문이 실행 즉 1us 마다 cnt_clksource증가
                            if(cnt_clksource>=999)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1씩 증가하는 카운터
                    end
             end  // 즉 , 1us 마다 1000개를 카운트 하기에 1000us = 1ms
             
             assign clk_div_1000 = (cnt_clksource <500) ? 0:1;   // 1ms 동안 1주기가 발생하는 clk_div_100 설정
             // 50번동안 0, 50번동안 1, 총 100번 주기, 1회는 1us 1000번 반복하면 1000us = 1ms
             // 1ms 마다 언사이클펄스 만들기(엣지디텍터)
             
             edge_detector_n ed( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_1000),
                   .n_edge(clk_div_1000_nedge));                    
endmodule 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//60 분주기 인스턴스 만들기
module clock_div_60(
            input clk, reset_p,
            input up_clk_source, down_clk_source, //1분 카운트하기 위해서는 1초를 소스로 줘야함
            output clk_div_60,
            output clk_div_60_nedge);
            
            reg [9:0] cnt_clksource;   //1000분주를 하기 위함
            //integer cnt_clksource;   //위와 동일
             
            wire up_clk_source_nedge, down_clk_source_nedge;
            
             edge_detector_n up_source( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(up_clk_source),
                   .n_edge(up_clk_source_nedge));   //1us 마다 엣지디텍터 발생
                   
             edge_detector_n down_source( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(down_clk_source),
                   .n_edge(down_clk_source_nedge));   //1us 마다 엣지디텍터 발생
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(up_clk_source_nedge)begin
                            if(cnt_clksource>=59)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1씩 증가하는 카운터
                    end
                    else if(down_clk_source_nedge)begin
                            if(cnt_clksource==0)  cnt_clksource = 59;
                            else cnt_clksource = cnt_clksource - 1;  //1씩 감소하는 카운터
                    end                    
             end
             
             assign clk_div_60 = (cnt_clksource <30) ? 0:1;
             
             edge_detector_n ed(
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_60),
                   .n_edge(clk_div_60_nedge));                    
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module clock_div_24(
            input clk, reset_p,
            input clk_source, //1분 카운트하기 위해서는 1초를 소스로 줘야함
            output clk_div_24,
            output clk_div_24_nedge);
            
            reg [9:0] cnt_clksource;   //1000분주를 하기 위함
            //integer cnt_clksource;   //위와 동일
             
            wire clk_source_nedge;
            
             edge_detector_n ed_source( //엣지디텍터 인스턴스 가져오기
                    .clk(clk), .reset_p(reset_p), . cp(clk_source),
                   .n_edge(clk_source_nedge));   //1us 마다 엣지디텍터 발생
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin
                            if(cnt_clksource>=23)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1씩 증가하는 카운터
                    end
             end
             
             assign clk_div_24 = (cnt_clksource <12) ? 0:1;
             
             edge_detector_n ed(
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_24),
                   .n_edge(clk_div_24_nedge));                    
endmodule  
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//시계만들기 카운터 인스턴스 만들기 reset우선
module counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            output reg [3:0] bcd1, bcd10); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n(.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        bcd1 =0;
                        bcd10 =0;
                     end
            
            else if(clk_time_nedge) begin
                    if(bcd1>=9) begin
                           bcd1 =0;
                           if(bcd10>=5) bcd10 =0;
                           else bcd10 = bcd10 +1;
                    end
                    else bcd1 = bcd1 + 1;
             end
       end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ㅣloadable counter,,,, 동기 맞추기,,? 로드 가 가능   //reset우선과 반대개념
module loadable_counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n        ed_clk      (.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        bcd1 =0;
                        bcd10 =0;
                     end
            
            else begin
                if(load_enable)begin
                        bcd1 = load_bcd1;
                        bcd10 = load_bcd10;
                end
                
                else if(clk_time_nedge) begin
                    if(bcd1>=9) begin
                           bcd1 =0;
                           if(bcd10>=5) bcd10 =0;
                           else bcd10 = bcd10 +1;
                    end
                    else bcd1 = bcd1 + 1;
                end
             end
       end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ㅣloadable counter,,,, 동기 맞추기,,? 로드 가 가능   //reset우선과 반대개념
module loadable_counter_bcd_24(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [7:0] load_hour,
            output reg [7:0] hour); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n        ed_clk      (.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        hour=0;
                     end
            
            else begin
                if(load_enable)begin
                        hour = load_hour;
                end
                
                else if(clk_time_nedge) begin
                    if(hour>=23) begin
                           hour =0;
                    end
                    else hour = hour + 1;
                end
             end
       end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//타이머를 클리어하기 위한 클리어 60진 카운터
module counter_bcd_60_clear(
            input clk, reset_p,
            input clk_time,
            input clear,
            output reg [3:0] bcd1, bcd10); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n(.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        bcd1 =0;
                        bcd10 =0;
                     end
                     
            else begin
                    if(clear) begin
                            bcd1 =0;
                            bcd10 =0;
                     end
                     
                    else if(clk_time_nedge) begin
                            if(bcd1>=9) begin
                                   bcd1 =0;
                                   if(bcd10>=5) bcd10 =0;
                                   else bcd10 = bcd10 +1;
                            end
                            else bcd1 = bcd1 + 1;
                     end
              end
       end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//10 분주기 인스턴스 만들기
module clock_div_10(
            input clk, reset_p,
            input clk_source, 
            output clk_div_10,
            output clk_div_10_nedge);
            
            reg [3:0] cnt_clksource;   //10분주를 하기 위함
            //integer cnt_clksource;   //위와 동일
             
            wire clk_source_nedge;
            
             edge_detector_n    ed_source( .clk(clk), .reset_p(reset_p), . cp(clk_source), .n_edge(clk_source_nedge));   //1us 마다 엣지디텍터 발생
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin
                            if(cnt_clksource>=9)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1씩 증가하는 카운터
                    end
             end
             
             assign clk_div_10 = (cnt_clksource <5) ? 0:1;
             
             edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(clk_div_10), .n_edge(clk_div_10_nedge));                    
endmodule  

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//bcd 100진 카운터
module counter_bcd_100_clear(
            input clk, reset_p,
            input clk_time,
            input clear,
            output reg [3:0] bcd1, bcd10); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n(.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin   //reset_p 누르면 리셋된다
                        bcd1 =0;
                        bcd10 =0;
                     end
            
            else begin
                    if(clear) begin     // clear 누르면 리셋된다.
                            bcd1 =0;
                            bcd10 =0;
                     end
                     
                    else if(clk_time_nedge) begin     // 클럭타임의 엣지에서 동작
                            if(bcd1>=9) begin
                                   bcd1 =0;
                                   if(bcd10>=9) bcd10 =0;
                                   else bcd10 = bcd10 +1;     //10의 자리수 출력
                            end
                            else bcd1 = bcd1 + 1;     //1의 자리수 출력
                    end
            end
       end
 endmodule
 
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ㅣloadable counter down(240719)
module loadable_down_counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10,
             output reg dec_clk); //십의 자리와 일의 자리를 따로 출력
            
             wire clk_time_nedge;
             edge_detector_n        ed_clk      (.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        bcd1 =0;
                        bcd10 =0;
                        dec_clk =1;
                     end
            
            else begin
                if(load_enable)begin
                        bcd1 = load_bcd1;
                        bcd10 = load_bcd10;
                end
                
                else if(clk_time_nedge) begin
                    if(bcd1==0) begin
                           bcd1 =9;
                           if(bcd10==0) begin
                                    bcd10 =5;
                                    dec_clk =1;
                           end
                           else bcd10 = bcd10 - 1;
                    end
                    else bcd1 = bcd1 - 1;
                end
                else dec_clk =0;  // 여기다가 놓으면 엣지디텍더 없어도 원사이클 펄스가 된다.
             end
       end
endmodule
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//240725 58 분주기 인스턴스 만들기 - 초음파 거리 센서 용
module clock_div_58_sr04(
            input clk, reset_p,
            input clk_usec, cnt_e, 
            output reg [15:0] dist_cm);
            
            reg [9:0] cnt;               
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) begin       
                             cnt = 0;
                             dist_cm =0;
                    end
                    else if(clk_usec)begin
                            if(cnt_e) begin
                                    if(cnt>=57)  begin
                                            cnt = 0;
                                            dist_cm = dist_cm +1;                                            
                                    end
                                    else cnt = cnt +1;  
                            end
                    end
                    else if (!cnt_e)begin
                             cnt =0;
                             dist_cm =0;
                    end
             end                               
endmodule  


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//ㅣloadable counter,,,, 동기 맞추기,,? 로드 가 가능   //reset우선과 반대개념
module loadable_updown_counter_bcd_60(
            input clk, reset_p,
            input up_clk,down_clk,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10); //십의 자리와 일의 자리를 따로 출력
            
             wire up_clk_nedge, down_clk_nedge;
             edge_detector_n        up             (.clk(clk), .reset_p(reset_p), .cp(up_clk),  .n_edge(up_clk_nedge));
             edge_detector_n        down      (.clk(clk), .reset_p(reset_p), .cp(down_clk),  .n_edge(down_clk_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        bcd1 =0;
                        bcd10 =0;
                     end
            
            else begin
                if(load_enable)begin
                        bcd1 = load_bcd1;
                        bcd10 = load_bcd10;
                end
                
                else if(up_clk_nedge) begin
                    if(bcd1>=9) begin
                           bcd1 =0;
                           if(bcd10>=5) bcd10 =0;
                           else bcd10 = bcd10 +1;
                    end
                    else bcd1 = bcd1 + 1;
                end
                
                else if(down_clk_nedge) begin
                    if(bcd1==0) begin
                           bcd1 =9;
                           if(bcd10==0) begin
                                    bcd10 =5;
                           end
                           else bcd10 = bcd10 - 1;
                    end
                    else bcd1 = bcd1 - 1;
                end
                
             end
       end
endmodule





////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
module loadable_updown_counter_bcd_24(
            input clk, reset_p,
            input up_clk,down_clk,
            input load_enable,
            input  [7:0] load_hour,
            output reg [7:0] hour); //십의 자리와 일의 자리를 따로 출력
            
             wire up_clk_nedge, down_clk_nedge;
             edge_detector_n        up             (.clk(clk), .reset_p(reset_p), .cp(up_clk),  .n_edge(up_clk_nedge));
             edge_detector_n        down      (.clk(clk), .reset_p(reset_p), .cp(down_clk),  .n_edge(down_clk_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin
                        hour = 0;
                     end
            
            else begin
                if(load_enable)begin
                        hour = load_hour;
                end
                
                else if(up_clk_nedge) begin
                    if(hour>=23) begin
                           hour =0;
                    end
                    else hour = hour + 1;
                end
                
                else if(down_clk_nedge) begin
                    if(hour==0) begin
                           hour = 23;
                    end
                    else hour = hour - 1;
                end
                
             end
       end
endmodule





