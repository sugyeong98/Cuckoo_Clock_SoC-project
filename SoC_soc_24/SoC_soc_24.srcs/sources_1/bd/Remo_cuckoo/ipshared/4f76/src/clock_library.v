`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//sysclk 100����
//�ð��� �ٷ��,,, �ǽ������ Ŭ���� 10ns ���ļ��� 100�ް�
// 100���� �����ϸ� 1us Ŭ���� ���� �� ����. (ī���ͷ� Ÿ�̸� �����~)
module clock_div_100(
            input clk, reset_p,
            output clk_div_100,
            output clk_div_100_nedge);
            
            reg [6:0] cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=99)  cnt_sysclk = 0;
                            else cnt_sysclk = cnt_sysclk +1;  //1�� �����ϴ� ī����
                    end
             end
             
             assign clk_div_100 = (cnt_sysclk <50) ? 0:1;   // 1us ���� 1�ֱⰡ �߻��ϴ� clk_dic_100 ����
             // 50������ 0, 50������ 1, �� 100�� �ֱ�, 1ȸ�� 10ns 100�� �ݺ��ϸ� 1000ns = 1us
             // 1us ���� �����Ŭ�޽� �����(����������)
             
             edge_detector_n ed( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_100),
                   .n_edge(clk_div_100_nedge));   
                  
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//1000���ֱ� -> ����ũ�μ�Ʈ Ŭ���� �Է����� �޾ƾ���
module clock_div_1000(
            input clk, reset_p,
            input clk_source, //1us
            output clk_div_1000,
            output clk_div_1000_nedge);
            
            reg [9:0] cnt_clksource;   //1000���ָ� �ϱ� ����
            
            wire clk_source_nedge;
            
             edge_detector_n ed_source( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(clk_source),
                   .n_edge(clk_source_nedge));   //1us ���� ���������� �߻�
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin // ����Ƽ���Ͱ� �߻��Ҷ� ���� if���� ���� �� 1us ���� cnt_clksource����
                            if(cnt_clksource>=999)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1�� �����ϴ� ī����
                    end
             end  // �� , 1us ���� 1000���� ī��Ʈ �ϱ⿡ 1000us = 1ms
             
             assign clk_div_1000 = (cnt_clksource <500) ? 0:1;   // 1ms ���� 1�ֱⰡ �߻��ϴ� clk_div_100 ����
             // 50������ 0, 50������ 1, �� 100�� �ֱ�, 1ȸ�� 1us 1000�� �ݺ��ϸ� 1000us = 1ms
             // 1ms ���� �����Ŭ�޽� �����(����������)
             
             edge_detector_n ed( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_1000),
                   .n_edge(clk_div_1000_nedge));                    
endmodule 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//60 ���ֱ� �ν��Ͻ� �����
module clock_div_60(
            input clk, reset_p,
            input up_clk_source, down_clk_source, //1�� ī��Ʈ�ϱ� ���ؼ��� 1�ʸ� �ҽ��� �����
            output clk_div_60,
            output clk_div_60_nedge);
            
            reg [9:0] cnt_clksource;   //1000���ָ� �ϱ� ����
            //integer cnt_clksource;   //���� ����
             
            wire up_clk_source_nedge, down_clk_source_nedge;
            
             edge_detector_n up_source( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(up_clk_source),
                   .n_edge(up_clk_source_nedge));   //1us ���� ���������� �߻�
                   
             edge_detector_n down_source( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(down_clk_source),
                   .n_edge(down_clk_source_nedge));   //1us ���� ���������� �߻�
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(up_clk_source_nedge)begin
                            if(cnt_clksource>=59)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1�� �����ϴ� ī����
                    end
                    else if(down_clk_source_nedge)begin
                            if(cnt_clksource==0)  cnt_clksource = 59;
                            else cnt_clksource = cnt_clksource - 1;  //1�� �����ϴ� ī����
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
            input clk_source, //1�� ī��Ʈ�ϱ� ���ؼ��� 1�ʸ� �ҽ��� �����
            output clk_div_24,
            output clk_div_24_nedge);
            
            reg [9:0] cnt_clksource;   //1000���ָ� �ϱ� ����
            //integer cnt_clksource;   //���� ����
             
            wire clk_source_nedge;
            
             edge_detector_n ed_source( //���������� �ν��Ͻ� ��������
                    .clk(clk), .reset_p(reset_p), . cp(clk_source),
                   .n_edge(clk_source_nedge));   //1us ���� ���������� �߻�
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin
                            if(cnt_clksource>=23)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1�� �����ϴ� ī����
                    end
             end
             
             assign clk_div_24 = (cnt_clksource <12) ? 0:1;
             
             edge_detector_n ed(
                    .clk(clk), .reset_p(reset_p), . cp(clk_div_24),
                   .n_edge(clk_div_24_nedge));                    
endmodule  
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�ð踸��� ī���� �ν��Ͻ� ����� reset�켱
module counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            output reg [3:0] bcd1, bcd10); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
//��loadable counter,,,, ���� ���߱�,,? �ε� �� ����   //reset�켱�� �ݴ밳��
module loadable_counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
//��loadable counter,,,, ���� ���߱�,,? �ε� �� ����   //reset�켱�� �ݴ밳��
module loadable_counter_bcd_24(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [7:0] load_hour,
            output reg [7:0] hour); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
//Ÿ�̸Ӹ� Ŭ�����ϱ� ���� Ŭ���� 60�� ī����
module counter_bcd_60_clear(
            input clk, reset_p,
            input clk_time,
            input clear,
            output reg [3:0] bcd1, bcd10); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
//10 ���ֱ� �ν��Ͻ� �����
module clock_div_10(
            input clk, reset_p,
            input clk_source, 
            output clk_div_10,
            output clk_div_10_nedge);
            
            reg [3:0] cnt_clksource;   //10���ָ� �ϱ� ����
            //integer cnt_clksource;   //���� ����
             
            wire clk_source_nedge;
            
             edge_detector_n    ed_source( .clk(clk), .reset_p(reset_p), . cp(clk_source), .n_edge(clk_source_nedge));   //1us ���� ���������� �߻�
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_clksource = 0;
                    else if(clk_source_nedge)begin
                            if(cnt_clksource>=9)  cnt_clksource = 0;
                            else cnt_clksource = cnt_clksource +1;  //1�� �����ϴ� ī����
                    end
             end
             
             assign clk_div_10 = (cnt_clksource <5) ? 0:1;
             
             edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(clk_div_10), .n_edge(clk_div_10_nedge));                    
endmodule  

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//bcd 100�� ī����
module counter_bcd_100_clear(
            input clk, reset_p,
            input clk_time,
            input clear,
            output reg [3:0] bcd1, bcd10); //���� �ڸ��� ���� �ڸ��� ���� ���
            
             wire clk_time_nedge;
             edge_detector_n(.clk(clk), .reset_p(reset_p), .cp(clk_time),  .n_edge(clk_time_nedge));
            
    always @(posedge clk or posedge reset_p)begin
                    if(reset_p)begin   //reset_p ������ ���µȴ�
                        bcd1 =0;
                        bcd10 =0;
                     end
            
            else begin
                    if(clear) begin     // clear ������ ���µȴ�.
                            bcd1 =0;
                            bcd10 =0;
                     end
                     
                    else if(clk_time_nedge) begin     // Ŭ��Ÿ���� �������� ����
                            if(bcd1>=9) begin
                                   bcd1 =0;
                                   if(bcd10>=9) bcd10 =0;
                                   else bcd10 = bcd10 +1;     //10�� �ڸ��� ���
                            end
                            else bcd1 = bcd1 + 1;     //1�� �ڸ��� ���
                    end
            end
       end
 endmodule
 
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//��loadable counter down(240719)
module loadable_down_counter_bcd_60(
            input clk, reset_p,
            input clk_time,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10,
             output reg dec_clk); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
                else dec_clk =0;  // ����ٰ� ������ �������ش� ��� ������Ŭ �޽��� �ȴ�.
             end
       end
endmodule
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//240725 58 ���ֱ� �ν��Ͻ� ����� - ������ �Ÿ� ���� ��
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
//��loadable counter,,,, ���� ���߱�,,? �ε� �� ����   //reset�켱�� �ݴ밳��
module loadable_updown_counter_bcd_60(
            input clk, reset_p,
            input up_clk,down_clk,
            input load_enable,
            input  [3:0] load_bcd1, load_bcd10,
            output reg [3:0] bcd1, bcd10); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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
            output reg [7:0] hour); //���� �ڸ��� ���� �ڸ��� ���� ���
            
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





