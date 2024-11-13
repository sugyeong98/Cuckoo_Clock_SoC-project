`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 240723 �½��� ����
module dht11_cntr(
            input clk, reset_p,
            inout dht11_data,           // ������ �� �ϳ�, ����� ��� �����ؾ���
            output reg [7:0] humidity, temperature,
            output [15:0] led_debug);
            
            parameter S_IDLE                                 = 6'b00_0001;       //���°� 6���̱⿡ 6��Ʈ ����
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
            
            wire clk_usec;      //1ms ���� ������Ŭ �޽��� ���
            clock_div_100   usec_clock      (.clk(clk), .reset_p(reset_p), .clk_div_100_nedge(clk_usec));
            
            reg [21:0] count_usec;              //3�� ī��Ʈ�� ����
            reg count_usec_e;           //enable 1�̸� ī��Ʈ, 0�̸� ����, 1�� �����ϰų�, clear �ǰų�(2���� ����)
            always @(negedge clk or posedge reset_p) begin
                        if(reset_p) count_usec = 0;
                        else if(clk_usec && count_usec_e)count_usec = count_usec+1;
                        else if(!count_usec_e) count_usec =0;
             end           
            
            
            always @(negedge clk or posedge reset_p) begin              //clk �� �ϰ����� ���
                        if(reset_p) state = S_IDLE;
                        else state = next_state;                                           // ���� ���̴� �ϰ��������� ����
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
                                read_state = S_WAIT_PEDGE;  // ���°� �̹� �ٲ���ִ� ���� ..? ��°� �ϰ��� ���̰� ����,,,,
                                temp_data =0;
                                data_count =0;                
                    end
                    else begin
                            case(state)
                                    S_IDLE : begin
                                            if(count_usec < 22'd3_000_000)begin   //300�� ������ ī��Ʈ(3��)22'd3_000_000
                                                        count_usec_e = 1;
                                                        dht11_buffer = 'bz;     //���Ǵ��� ����ϸ� 1�� �ȴ� (Ǯ�������̱⿡)
                                             end
                                             else begin
                                                        count_usec_e =0;
                                                        next_state = S_LOW_18MS;
                                             end
                                    end
                                    
                                    S_LOW_18MS : begin
                                               if(count_usec < 22'd20_000) begin   //�����ְ� 20ms����
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
// 240724��ȣ�� ���� �ȵ����� �� �ٽ� �ʱ⼳������ ���ư����� ���� ����
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
                                    
                                   S_LOW_80US :begin        //��¿����� ��ٸ���
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
                                                                count_usec_e =0;//240724�߰�
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
                                                                count_usec_e =0; //240724�߰�
                                                 end
                                   end




 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                                            
//                                   S_READ_DATA :begin       //stat ���� �� ����� ó��
//                                                  case(read_state)
//                                                                  S_WAIT_PEDGE  : begin //0���� �����ϱ⿡ ��¿����� ��ٷ�����
//                                                                            if(dht_pedge) read_state = S_WAIT_NEDGE;            // ��¿����� ������ �������·� ����
//                                                                            count_usec_e =0;
//                                                                  end
                                                                  
//                                                                  S_WAIT_NEDGE :begin           //1�� �Ǿ��ִ� ����
//                                                                              if(dht_nedge) begin
//                                                                                          if(count_usec <45) begin                             
//                                                                                                    temp_data = {temp_data[38:0], 1'b0};        //45us ���� ������ 0����
//                                                                                          end
//                                                                                          else begin
//                                                                                                    temp_data = {temp_data[38:0], 1'b1};       //45us ���� ��� 1����
//                                                                                          end
//                                                                                          data_count = data_count+ 1; 
//                                                                                          read_state = S_WAIT_PEDGE;
//                                                                              end
                                                                              
//                                                                              else begin                                                                                            
//                                                                                        count_usec_e =1;        //usec ���� 1�� ����
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
                                                                              S_WAIT_PEDGE  : begin //0���� �����ϱ⿡ ��¿����� ��ٷ�����
                                                                                        if(dht_pedge) read_state = S_WAIT_NEDGE;            // ��¿����� ������ �������·� ����                                                                              
                                                                                         end
                                                                              
                                                                              S_WAIT_NEDGE :begin           //1�� �Ǿ��ִ� ����
                                                                                          if(dht_nedge) begin
                                                                                                      if(count_usec <95) begin                             
                                                                                                                temp_data = {temp_data[38:0], 1'b0};        //45us ���� ������ 0����
                                                                                                      end
                                                                                                      else begin
                                                                                                                temp_data = {temp_data[38:0], 1'b1};       //45us ���� ��� 1����
                                                                                                      end
                                                                                                      data_count = data_count+ 1; 
                                                                                                      read_state = S_WAIT_PEDGE;
                                                                                                      count_usec_e =0;
                                                                                          end
                                                                                          
                                                                                          else begin                                                                                            
                                                                                                    count_usec_e =1;        //usec ���� 1�� ����
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
            
