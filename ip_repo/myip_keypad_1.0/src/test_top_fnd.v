`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd
module fnd_test_top(
            input [15:0] switch,
            output [3:0] com,       //���뿡���
            output [7:0] seg_7);  //���׸�Ʈ
            
            assign com = switch[3:0];   // 0~3 ����ġ�� ����带 onoff
            assign seg_7 = switch[15:8]; //8~15 ����ġ�� ���׸�Ʈ onoff
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ���׸�Ʈ 16���� �Ҵ�
module decoder_7seg(
           input [3:0] hex_value,
           output reg [7:0] seg_7);
           
           always @(hex_value)begin
                    case(hex_value)   //abcd_efgp
                           0 : seg_7 = 8'b0000_0011; //fnd�� 0 ǥ��
                           1 : seg_7 = 8'b1001_1111; //fnd�� 1 ǥ��
                           2 : seg_7 = 8'b0010_0101; //fnd�� 2 ǥ��
                           3 : seg_7 = 8'b0000_1101; //fnd�� 3 ǥ��
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
// fnd �ν��Ͻ� ���� ����
module fnd_test_top_hex(
            input [15:0] switch,
            output [3:0] com,       //���뿡���
            output [7:0] seg_7);  //���׸�Ʈ
            
            decoder_7seg(.hex_value(switch[15:12]),.seg_7(seg_7)); //4��Ʈ 2������ ��簪 ǥ��
            assign com = switch[3:0];   // 0~3 ����ġ�� ����带 onoff
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// FPGA �ǽ� (fĿ�� ����� �� ī����)
module ring_counter_fnd(    
        input clk, reset_p,
        output reg [3:0] com);
        
        reg [20:0] clk_div =0; //ȸ�λ����δ� ������ �ȵ����� �ùķ��̼� �Ҷ��� ���
        always @(posedge clk) clk_div = clk_div +1;
        
        wire clk_div_nedge;
        edge_detector_p ed( .clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .n_edge(clk_div_nedge));  //�� 1ms�� �����ϱ�
        //1ms ���� ����Ʈ�ȴ�, �츮 ������ �����̴°� �������� �ʴ´�.
        
        always @(posedge clk or posedge reset_p) begin
                if(reset_p) com = 4'b1110;
                else if(clk_div_nedge)begin
                        if(com == 4'b0111)  com = 4'b1110;
                        else  com[3:0] = {com[2:0], 1'b1};
                end
        end
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd Ŀ�տ����  �ν��Ͻ� ���� ����+ hex => ����ġ�� ���� ���� ������ �ڸ����� ��ȭ��
module fnd_test_top_anode(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //���뿡���
            output [7:0] seg_7);  //���׸�Ʈ
            
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
                     
            decoder_7seg(.hex_value(hex_value),.seg_7(seg_7)); //4��Ʈ 2������ ��簪 ǥ��
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd Ŀ�տ���� + hex + LED => ����ġ�� ���� ���� ������ �ڸ����� ��ȭ��
module fnd_test_top_anode_led(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //���뿡���
            output [7:0] seg_7,
            output [15:0] led);  //���׸�Ʈ
            
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
                     
            decoder_7seg(.hex_value(hex_value),.seg_7(seg_7)); //4��Ʈ 2������ ��簪 ǥ��           
            board_led_switch_test_top(switch, led); 
            
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//fnd_cntr��� ����� ���� fnd�� ��Ʈ���� �� �ִ� �ν��Ͻ��� �������
// �ش� �ν��Ͻ� Ȱ���Ͽ� �ڵ� ����ȭ
module fnd_test_top_cntr(
            input clk, reset_p,
            input [15:0] switch,
            output [3:0] com,       //���뿡���
            output [7:0] seg_7);  //���׸�Ʈ
           
            fnd_cntr(.clk(clk), .reset_p(reset_p), .value(switch),.com(com),  .seg_7(seg_7));

endmodule
