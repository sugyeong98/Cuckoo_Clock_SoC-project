`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//240731
module pwm_100step_pratice(
            input clk, reset_p,
            input [6:0] duty,
            output pwm);
            
              reg [6:0] cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=99)  cnt_sysclk = 0;
                            else cnt_sysclk = cnt_sysclk +1;  
                    end
             end
             
             assign clk_div_100 = (cnt_sysclk <50) ?  1 : 0;   //sysclk 100���� = 1usec
             
            edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(clk_div_100), .n_edge(clk_div_100_nedge));    
            
            
            reg [6:0] cnt;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt = 0;
                    else if(clk_div_100_nedge) begin  // 1usec 100���� -> 100usec
                            if(cnt>=99)  cnt = 0;
                            else cnt = cnt +1;  
                    end
             end
             
             assign pwm = (cnt < duty) ?  1 : 0; //duty 
             
endmodule

//////////////////////////////////////////////////////////////////////////////////
//240731
module pwm_128step(  // �� �ֱⰡ 128�ܰ���
            input clk, reset_p,
            input [6:0] duty,
            output pwm);
            
            parameter sys_clk_freq = 100_000_000;  //10nsec
            parameter pwm_freq = 10_000;    //100usec
            parameter duty_step =128;
            parameter temp = sys_clk_freq / duty_step / pwm_freq;
            parameter temp_half = temp/2; //�Ķ���Ϳ� ������ ���� ������ ȸ�ΰ� ��������� ���� �ƴ϶� ���� ���� ȸ�ο� ���ԵǴ� ����
            
            
              //reg [6:0] cnt_sysclk;
              integer cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=temp-1)  cnt_sysclk = 0;  // 128���ָ� �ҰŸ�  100usec�� 128�� �������
                            else cnt_sysclk = cnt_sysclk +1;  
                    end
             end
             
             assign clk_div_100 = (cnt_sysclk <temp_half) ?  1 : 0;   //sysclk 100���� = 1usec
             
            edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(clk_div_100), .n_edge(clk_div_100_nedge));    
            
            
            reg [6:0] cnt;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt = 0;
                    else if(clk_div_100_nedge) begin  // 127 �������� 0�� �� �Ǳ� ������  ���ǹ� ����
                            cnt = cnt +1;  
                    end
             end
             
             assign pwm = (cnt < duty) ?  1 : 0; //duty 
             
endmodule
//////////////////////////////////////////////////////////////////////////////////
//240801
module pwm_100step(  // �� �ֱⰡ 100�ܰ���
            input clk, reset_p,
            input [6:0] duty,
            output pwm);
            
            parameter sys_clk_freq = 100_000_000;  //10nsec
            parameter pwm_freq = 10_000;    //100usec
            parameter duty_step =100;
            parameter temp = sys_clk_freq / duty_step / pwm_freq;
            parameter temp_half = temp/2; //�Ķ���Ϳ� ������ ���� ������ ȸ�ΰ� ��������� ���� �ƴ϶� ���� ���� ȸ�ο� ���ԵǴ� ����
            
            
              //reg [6:0] cnt_sysclk;
              integer cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=temp-1)  cnt_sysclk = 0;  // 128���ָ� �ҰŸ�  100usec�� 128�� �������
                            else cnt_sysclk = cnt_sysclk +1;  
                    end
             end
             
             wire pwm_freq_100, pwm_freq_100_nedge;
             assign pwm_freq_100 = (cnt_sysclk <temp_half) ?  1 : 0;   //sysclk 100���� = 1usec
             
            edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(pwm_freq_100), .n_edge(pwm_freq_100_nedge));    
            
            
            reg [6:0] cnt_duty;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_duty = 0;
                    else if(pwm_freq_100_nedge) begin  // 127 �������� 0�� �� �Ǳ� ������  ���ǹ� ����
                            if(cnt_duty>=99)cnt_duty = 0;  
                            else cnt_duty = cnt_duty +1;  
                    end
             end
             
             assign pwm = (cnt_duty < duty) ?  1 : 0; //duty 
             
endmodule

//////////////////////////////////////////////////////////////////////////////////
//240801
module pwm_Nstep_freq 
 #(       
            parameter sys_clk_freq = 100_000_000,
            parameter pwm_freq = 10_000,
            parameter duty_step =100,
            parameter temp = sys_clk_freq / duty_step / pwm_freq,
            parameter temp_half = temp/2 )
  (
            input clk, reset_p,
            input [31:0] duty,
            output pwm);
            
            integer cnt_sysclk;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_sysclk = 0;
                    else begin
                            if(cnt_sysclk>=temp-1)  cnt_sysclk = 0;  // 128���ָ� �ҰŸ�  100usec�� 128�� �������
                            else cnt_sysclk = cnt_sysclk +1;  
                    end
             end
             
             wire pwm_freq_step, pwm_freq_step_nedge;
             assign pwm_freq_step = (cnt_sysclk <temp_half) ?  1 : 0;   //sysclk 100���� = 1usec
             
            edge_detector_n ed( .clk(clk), .reset_p(reset_p), . cp(pwm_freq_step), .n_edge(pwm_freq_step_nedge));    
            
            
            reg [6:0] cnt_duty;
            
            always @(negedge clk or posedge reset_p) begin
                    if(reset_p) cnt_duty = 0;
                    else if(pwm_freq_step_nedge) begin  // 127 �������� 0�� �� �Ǳ� ������  ���ǹ� ����
                            if(cnt_duty>=(duty_step-1))cnt_duty = 0;  
                            else cnt_duty = cnt_duty +1;  
                    end
             end
             
             assign pwm = (cnt_duty < duty) ?  1 : 0; //duty 10�� �� �ѹ� ,  cnt_duty 1�ʿ� 100�� -> duty 1(25%��Ƽ��)�� �޽��� 100�� �ݺ�
             
endmodule

        
