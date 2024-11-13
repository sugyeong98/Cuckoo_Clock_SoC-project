`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd
module fnd_test_top(
            input [15:0] switch,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7);  //세그먼트
            
            assign com = switch[3:0];   // 0~3 스위치는 에노드를 onoff
            assign seg_7 = switch[15:8]; //8~15 스위치는 세그먼트 onoff
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 세그먼트 16진수 할당
module decoder_7seg(
           input [3:0] hex_value,
           output reg [7:0] seg_7);
           
           always @(hex_value)begin
                    case(hex_value)   //abcd_efgp
                           0 : seg_7 = 8'b0000_0011; //fnd에 0 표시
                           1 : seg_7 = 8'b1001_1111; //fnd에 1 표시
                           2 : seg_7 = 8'b0010_0101; //fnd에 2 표시
                           3 : seg_7 = 8'b0000_1101; //fnd에 3 표시
                           4 : seg_7 = 8'b1001_1001;
                           5 : seg_7 = 8'b0100_1001;
                           6 : seg_7 = 8'b0100_0001;
                           7 : seg_7 = 8'b0001_1011;
                           8 : seg_7 = 8'b0000_0001;
                           9 : seg_7 = 8'b0000_1001;
                           10 : seg_7 = 8'b0001_0001;  //A
                           11 : seg_7 = 8'b1100_0001;  //b
                           12 : seg_7 = 8'b0110_0011; //C
                           13 : seg_7 = 8'b1000_0101; //d
                           14 : seg_7 = 8'b0110_0001; //E
                           15 : seg_7 = 8'b0111_0001; //F
                   endcase  
           end
endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd 인스턴스 만들어서 실행
module fnd_test_top_hex(
            input [15:0] switch,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7);  //세그먼트
            
            decoder_7seg(.hex_value(switch[15:12]),.seg_7(seg_7)); //4비트 2진수로 헥사값 표현
            assign com = switch[3:0];   // 0~3 스위치는 에노드를 onoff
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// FPGA 실습 (f커먼 에노드 링 카운터)
module ring_counter_fnd(    
        input clk, reset_p,
        output reg [3:0] com);
        
        reg [20:0] clk_div =0; //회로상으로는 구현이 안되지만 시뮬레이션 할때만 사용
        always @(posedge clk) clk_div = clk_div +1;
        
        wire clk_div_nedge;
        edge_detector_p ed( .clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .n_edge(clk_div_nedge));  //약 1ms로 분주하기
        //1ms 동안 시프트된다, 우리 눈에는 깜빡이는게 보이지는 않는다.
        
        always @(posedge clk or posedge reset_p) begin
                if(reset_p) com = 4'b1110;
                else if(clk_div_nedge)begin
                        if(com == 4'b0111)  com = 4'b1110;
                        else  com[3:0] = {com[2:0], 1'b1};
                end
        end
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd 커먼에노드  인스턴스 만들어서 실행+ hex => 스위치의 값에 따라서 각각의 자리값이 변화함
module fnd_test_top_anode(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7);  //세그먼트
            
            ring_counter_fnd( clk, reset_p,com);
            
            reg [3:0] hex_value;
            always @(posedge clk)begin
                    case(com)
                            4'b1110: hex_value = switch[3:0];
                            4'b1101: hex_value = switch[7:4];
                            4'b1011: hex_value = switch[11:8];
                            4'b0111: hex_value = switch[15:12];
                     endcase 
              end
                     
            decoder_7seg(.hex_value(hex_value),.seg_7(seg_7)); //4비트 2진수로 헥사값 표현
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd 커먼에노드 + hex + LED => 스위치의 값에 따라서 각각의 자리값이 변화함
module fnd_test_top_anode_led(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7,
            output [15:0] led);  //세그먼트
            
            ring_counter_fnd( clk, reset_p,com);
            
            reg [3:0] hex_value;
            always @(posedge clk)begin
                    case(com)
                            4'b1110: hex_value = switch[3:0];
                            4'b1101: hex_value = switch[7:4];
                            4'b1011: hex_value = switch[11:8];
                            4'b0111: hex_value = switch[15:12];
                     endcase 
              end
                     
            decoder_7seg(.hex_value(hex_value),.seg_7(seg_7)); //4비트 2진수로 헥사값 표현           
            board_led_switch_test_top(switch, led); 
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//fnd_cntr라는 모듈을 만들어서 fnd를 컨트롤할 수 있는 인스턴스를 만들었음
// 해당 인스턴스 활용하여 코드 간소화
module fnd_test_top_cntr(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7);  //세그먼트
           
            fnd_cntr(.clk(clk), .reset_p(reset_p), .value(switch),.com(com),  .seg_7(seg_7));

endmodule
