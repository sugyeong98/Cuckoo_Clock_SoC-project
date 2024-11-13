`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 240723 온습도 센서
module dht11_cntr(
            input clk, reset_p,
            inout dht11_data,           // 데이터 선 하나, 입출력 모두 가능해야함
            output reg [7:0] humidity, temperature,
            output [15:0] led_debug);
            
            parameter S_IDLE                                 = 6'b00_0001;       //상태가 6개이기에 6비트 선언
            parameter S_LOW_18MS                 = 6'b00_0010;
            parameter S_HIGH_20US                 = 6'b00_0100;
            parameter S_LOW_80US                 = 6'b00_1000;
            parameter S_HIGH_80US                 = 6'b01_0000;
            parameter S_READ_DATA               = 6'b10_0000;
            
            parameter S_WAIT_PEDGE          = 2'b01;
            parameter S_WAIT_NEDGE          = 2'b10;
            
            reg [5:0] state, next_state;
            reg [1:0] read_state;
            
            assign led_debug[5:0] =state;
            
            wire clk_usec;      //1ms 마다 원사이클 펄스를 출력
            clock_div_100   usec_clock      (.clk(clk), .reset_p(reset_p), .clk_div_100_nedge(clk_usec));
            
            reg [21:0] count_usec;              //3초 카운트를 위함
            reg count_usec_e;           //enable 1이면 카운트, 0이면 리셋, 1씩 증가하거나, clear 되거나(2가지 상태)
            always @(negedge clk or posedge reset_p) begin
                        if(reset_p) count_usec = 0;
                        else if(clk_usec && count_usec_e)count_usec = count_usec+1;
                        else if(!count_usec_e) count_usec =0;
             end           
            
            
            always @(negedge clk or posedge reset_p) begin              //clk 의 하강엣지 사용
                        if(reset_p) state = S_IDLE;
                        else state = next_state;                                           // 상태 전이는 하강엣지에서 변함
             end
             
             
             reg dht11_buffer;
             assign dht11_data = dht11_buffer;
             
             wire dht_pedge, dht_nedge;
             edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(dht11_data),  .p_edge(dht_pedge),  .n_edge(dht_nedge));
             
             reg [39:0] temp_data;
             reg [5:0] data_count;
             
             always @(posedge clk or posedge reset_p) begin
                    if(reset_p) begin
                                next_state = S_IDLE;
                                read_state = S_WAIT_PEDGE;  // 상태가 이미 바뀌어있는 상태 ..? 상승과 하강의 차이가 있음,,,,
                                temp_data =0;
                                data_count =0;                
                    end
                    else begin
                            case(state)
                                    S_IDLE : begin
                                            if(count_usec < 22'd3_000_000)begin   //300만 전까지 카운트(3초)22'd3_000_000
                                                        count_usec_e = 1;
                                                        dht11_buffer = 'bz;     //임피던스 출력하면 1이 된다 (풀업저항이기에)
                                             end
                                             else begin
                                                        count_usec_e =0;
                                                        next_state = S_LOW_18MS;
                                             end
                                    end
                                    
                                    S_LOW_18MS : begin
                                               if(count_usec < 22'd20_000) begin   //여유있게 20ms까지
                                                            dht11_buffer =0;
                                                            count_usec_e =1;
                                               end
                                               /////////////////////////////////////////////////////////
                                               else  if(count_usec >22'd100_000) begin
                                                             next_state = S_IDLE;
                                                              count_usec_e =0;
                                               end
                                               /////////////////////////////////////////////////////////
                                               else begin
                                                             count_usec_e = 0;
                                                             next_state = S_HIGH_20US;
                                                             dht11_buffer = 'bz;
                                                end
                                    end
                                    
                                    S_HIGH_20US :begin
//                                                 if(count_usec <22'd20) begin
//                                                               count_usec_e =1;
//                                                               dht11_buffer = 'bz;
//                                                  end
//                                                  else if(dht_nedge) begin
//                                                               count_usec_e =0;
//                                                               next_state = S_LOW_80US;
//                                                  end
/////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                      if(dht_nedge) begin
//                                                               count_usec_e =0;
//                                                               next_state = S_LOW_80US;
//                                                      end
/////////////////////////////////////////////////////////////////////////////////////////////////////
// 240724신호가 오래 안들어왔을 때 다시 초기설정으로 돌아가도록 오류 수정
                                                    count_usec_e =1;
                                                     if(count_usec >22'd100_000) begin
                                                                    next_state = S_IDLE;
                                                                    count_usec_e =0;
                                                      end
                                                      else if(dht_nedge) begin
                                                               count_usec_e =0;
                                                               next_state = S_LOW_80US;
                                                      end
 /////////////////////////////////////////////////////////////////////////////////////////////////////                                                
                                    end
                                    
                                   S_LOW_80US :begin        //상승엣지를 기다리자
                                                    ////////////////////////////////////////////////////////
                                                   //240724                                                
                                                count_usec_e =1;
                                                     if(count_usec >22'd100_000) begin
                                                                    next_state = S_IDLE;
                                                                    count_usec_e =0;
                                                      end
                                                      else
                                               ////////////////////////////////////////////////////////                                                              
                                                if(dht_pedge) begin
                                                                next_state = S_HIGH_80US;
                                                                count_usec_e =0;//240724추가
                                                end                                                
                                   end
                                   
                                   S_HIGH_80US :begin
                                        /////////////////////////////////////////////////////////////               
                                        //240724
                                                  count_usec_e =1;
                                                     if(count_usec >22'd100_000) begin
                                                                    next_state = S_IDLE;
                                                                    count_usec_e =0;
                                                      end                                                     
                                                      else
                                   /////////////////////////////////////////////////////////////////                                                   
                                                 if(dht_nedge) begin
                                                                next_state =S_READ_DATA;
                                                                count_usec_e =0; //240724추가
                                                 end
                                   end




 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                                            
//                                   S_READ_DATA :begin       //stat 따로 안 만들고 처리
//                                                  case(read_state)
//                                                                  S_WAIT_PEDGE  : begin //0부터 시작하기에 상승엣지를 기다려야함
//                                                                            if(dht_pedge) read_state = S_WAIT_NEDGE;            // 상승엣지가 들어오면 다음상태로 전이
//                                                                            count_usec_e =0;
//                                                                  end
                                                                  
//                                                                  S_WAIT_NEDGE :begin           //1이 되어있는 상태
//                                                                              if(dht_nedge) begin
//                                                                                          if(count_usec <45) begin                             
//                                                                                                    temp_data = {temp_data[38:0], 1'b0};        //45us 보다 작으면 0저장
//                                                                                          end
//                                                                                          else begin
//                                                                                                    temp_data = {temp_data[38:0], 1'b1};       //45us 보다 길면 1저장
//                                                                                          end
//                                                                                          data_count = data_count+ 1; 
//                                                                                          read_state = S_WAIT_PEDGE;
//                                                                              end
                                                                              
//                                                                              else begin                                                                                            
//                                                                                        count_usec_e =1;        //usec 마다 1씩 증가
//                                                                              end
//                                                                  end       
//                                                  endcase               
//                                                   if(data_count >= 40) begin
//                                                                data_count =0;
//                                                                next_state = S_IDLE;
//                                                                if(temp_data[39:32]+ temp_data[31:24] + temp_data[23:16] + temp_data[15:8] ==temp_data [7:0])begin
//                                                                        humidity = temp_data [39 : 32];
//                                                                        temperature = temp_data [23 : 16];
//                                                                end
//                                                    end
//                                        end                          
//                          endcase
//                   end
//          end
// endmodule                                                  
                                                  
                                                  
                                                    
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                                                                 
  //240724
                                    S_READ_DATA :begin  
                                                 count_usec_e =1;
                                                  if(count_usec >22'd100_000) begin
                                                                    next_state = S_IDLE;
                                                                    count_usec_e =0;
                                                                    data_count =0;
                                                                    read_state = S_WAIT_PEDGE;       
                                                   end                                                     
                                                   else begin
                                                              case(read_state)
                                                                              S_WAIT_PEDGE  : begin //0부터 시작하기에 상승엣지를 기다려야함
                                                                                        if(dht_pedge) read_state = S_WAIT_NEDGE;            // 상승엣지가 들어오면 다음상태로 전이                                                                              
                                                                                         end
                                                                              
                                                                              S_WAIT_NEDGE :begin           //1이 되어있는 상태
                                                                                          if(dht_nedge) begin
                                                                                                      if(count_usec <95) begin                             
                                                                                                                temp_data = {temp_data[38:0], 1'b0};        //45us 보다 작으면 0저장
                                                                                                      end
                                                                                                      else begin
                                                                                                                temp_data = {temp_data[38:0], 1'b1};       //45us 보다 길면 1저장
                                                                                                      end
                                                                                                      data_count = data_count+ 1; 
                                                                                                      read_state = S_WAIT_PEDGE;
                                                                                                      count_usec_e =0;
                                                                                          end
                                                                                          
                                                                                          else begin                                                                                            
                                                                                                    count_usec_e =1;        //usec 마다 1씩 증가
                                                                                          end
                                                                              end       
                                                             endcase                                   
                                                           if(data_count >= 40) begin
                                                                        data_count =0;
                                                                        next_state = S_IDLE;
                                                                        count_usec_e =0;
                                                                        read_state = S_WAIT_NEDGE;       
                                                                                                                                                
                                                                        if(temp_data[39:32]+ temp_data[31:24] + temp_data[23:16] + temp_data[15:8] ==temp_data [7:0])begin
                                                                                humidity = temp_data [39 : 32];
                                                                                temperature = temp_data [23 : 16];
                                                                        end
                                                           end
                                                end    
                                      end                      
                         endcase
                   end
          end
 endmodule
            
