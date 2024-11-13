`timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//모듈로 인스턴스 만드는 것은 사용할테지만 구조적은 잘 사용 x
//데이터 플로어형 모델링이랑, 동작적 모델링 2개만 할 것임
//디코더 동작적 모델링 if문
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
//같은 회로를 case문을 사용하여 구현( 모든 입력경우를 지정해줘야함 습관적으로 default 사용)
// 아무 변화도 일어나지 않으면 이전 출력이 그대로 유지
//디코더 동작적 모델링 case문
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
   // 디코더 데이터 플로어형 모델링
    module decoder_2x4_data(
        input [1:0] code,
        output  [3:0] signal);
        
        assign signal = (code ==2'b00) ? 4'b0001 : 
                                 ((code ==2'b01) ? 4'b0010 : 
                                 ((code == 2'b10) ? 4'b0100 :
                                 ((code == 2'b11) ? 4'b1000 : 4'b0000)));
     endmodule
 
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // 인코더 동작적 모델링 if문
   
  module encoder_4X2_behavioral_if(
            input [3:0] signal,
            output reg [1:0] code);
            
            always @(signal) begin
                    if(signal == 4'b0001) code = 2'b00;
                    else if(signal == 4'b0010) code = 2'b01;
                    else if(signal == 4'b0100) code = 2'b10;
                    else if(signal == 4'b1000) code = 2'b11;
                    else  code = 2'b00; //기존출력 유지
            end
  endmodule
  
  
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   // 인코더 동작적 모델링 case문
   
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
   // 인코더 데이터플로어형 모델링
   
       module encoder_4X2_data(
                    input [3:0] signal,
                    output  [1:0] code);
                    
                    assign code = (signal ==4'b0001) ? 2'b00 :
                                            ((signal == 4'b0010) ? 2'b01 :
                                            ((signal == 4'b0100) ? 2'b10 :
                                            ((signal == 4'b1000) ? 2'b11 : 2'b00)));
                                           
        endmodule

