`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//���� �ν��Ͻ� ����� ���� ����������� �������� �� ��� x
//������ �÷ξ��� �𵨸��̶�, ������ �𵨸� 2���� �� ����
//���ڴ� ������ �𵨸� if��
  module decoder_2x4_b_if(
        input [1:0] code,
        output reg [3:0] signal);
        
        always @(code)begin
                if(code==2'b00) signal = 4'b0001;
                else if(code==2'b01) signal =4'b0010;
                else if(code==2'b10) signal =4'b0100;
                else if(code==2'b11) signal =4'b1000;
        end
 endmodule
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//���� ȸ�θ� case���� ����Ͽ� ����( ��� �Է°�츦 ����������� ���������� default ���)
// �ƹ� ��ȭ�� �Ͼ�� ������ ���� ����� �״�� ����
//���ڴ� ������ �𵨸� case��
    module decoder_2x4_b_case(
        input [1:0] code,
        output reg [3:0] signal);
        
        always @(code)begin
            case(code)
                    2'b00 : signal = 4'b0001;
                    2'b01 : signal = 4'b0010;
                    2'b10 : signal = 4'b0100;
                    2'b11 : signal = 4'b1000;             
                    default : signal = 4'b0001;       
             endcase
        end
 
 endmodule
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // ���ڴ� ������ �÷ξ��� �𵨸�
    module decoder_2x4_data(
        input [1:0] code,
        output  [3:0] signal);
        
        assign signal = (code ==2'b00) ? 4'b0001 : 
                                 ((code ==2'b01) ? 4'b0010 : 
                                 ((code == 2'b10) ? 4'b0100 :
                                 ((code == 2'b11) ? 4'b1000 : 4'b0000)));
     endmodule
 
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // ���ڴ� ������ �𵨸� if��
   
  module encoder_4X2_behavioral_if(
            input [3:0] signal,
            output reg [1:0] code);
            
            always @(signal) begin
                    if(signal == 4'b0001) code = 2'b00;
                    else if(signal == 4'b0010) code = 2'b01;
                    else if(signal == 4'b0100) code = 2'b10;
                    else if(signal == 4'b1000) code = 2'b11;
                    else  code = 2'b00; //������� ����
            end
  endmodule
  
  
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // ���ڴ� ������ �𵨸� case��
   
  module encoder_4X2_behavioral_case(
            input [3:0] signal,
            output reg [1:0] code);
            
            always @(signal) begin
                    case(signal)
                            4'b0001 : code = 2'b00;
                            4'b0010 : code = 2'b01;
                            4'b0100 : code = 2'b10;
                            4'b1000 : code = 2'b11;
                            default   : code = 2'b00;
                      endcase
            end
  endmodule
  
  
     ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // ���ڴ� �������÷ξ��� �𵨸�
   
       module encoder_4X2_data(
                    input [3:0] signal,
                    output  [1:0] code);
                    
                    assign code = (signal ==4'b0001) ? 2'b00 :
                                            ((signal == 4'b0010) ? 2'b01 :
                                            ((signal == 4'b0100) ? 2'b10 :
                                            ((signal == 4'b1000) ? 2'b11 : 2'b00)));
                                           
        endmodule

