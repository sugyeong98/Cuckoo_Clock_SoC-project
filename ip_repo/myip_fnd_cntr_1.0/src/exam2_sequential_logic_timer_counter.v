`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// �� Ÿ�̸� ī���
//reset�� �ִ� ���� 
//-> �ø��÷�������ϱ� ���ؼ��� �����ؾ��ϱ� ���� �ֳ�, �ʱⰪ�� ������ ���� ����� �״�� �����µ�, �������� �� �� ���� ������
//wire�� 0���� �ʱ�ȭ �ߴٴ� ���� gnd�� �����ߴٴ� ��, reg�� 0���� �ʱ�ȭ�� ���� ���� 0���� �ذ�
module up_counter_asyc(
            input clk, reset_p, //�ùķ��̼� �Ҷ� 1�־ �������ֱ�
            output [3:0] count);
            
        T_flip_flop_n T0(.clk(clk), .reset_p(reset_p) ,.t(1),.q(count[0]));                 //t�� 1�̶�� ���� ����ϰڴٴ� ��
        T_flip_flop_n T1(.clk(count[0]), .reset_p(reset_p) ,.t(1),.q(count[1]));
        T_flip_flop_n T2(.clk(count[1]), .reset_p(reset_p) ,.t(1),.q(count[2]));
        T_flip_flop_n T3(.clk(count[2]), .reset_p(reset_p) ,.t(1),.q(count[3]));

endmodule

//////////////////////////////////////////////////////////////////////////////////
// �ٿ� Ÿ�̸� ī���

module down_counter_asyc(
            input clk, reset_p, //�ùķ��̼� �Ҷ� 1�־ �������ֱ�
            output [3:0] count);
            
        T_flip_flop_p T0(.clk(clk), .reset_p(reset_p) ,.t(1),.q(count[0]));                 //t�� 1�̶�� ���� ����ϰڴٴ� ��
        T_flip_flop_p T1(.clk(count[0]), .reset_p(reset_p) ,.t(1),.q(count[1]));
        T_flip_flop_p T2(.clk(count[1]), .reset_p(reset_p) ,.t(1),.q(count[2]));
        T_flip_flop_p T3(.clk(count[2]), .reset_p(reset_p) ,.t(1),.q(count[3]));

endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� upī���� ��¿��� (���̼� ����� �񵿱�� �Ȱ��� ����)
module up_counter_p(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count + 1;  //��¿� 1�� ���ؼ� upī���� ����
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� upī���� �ϰ�����
module up_counter_n(  //syc������ �翬�� ���� 
    input clk, reset_p, enable,
    output reg [3:0] count); // count�� D�ø��÷��� ���
    
    always @(negedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count + 1;  //��¿� 1�� ���ؼ� upī���� ����
     end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� down ī���� ��¿���
module down_counter_p(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count - 1;  //��¿� 1�� ���ؼ� upī���� ����
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� down ī���� �ϰ�����
module down_counter_n(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(negedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count - 1;  //��¿� 1�� ���ؼ� upī���� ����
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� bcd up ī���� ��¿���
module bcd_upcounter_p(
        input clk, reset_p,
        output reg [3:0] count);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)count =0;
            else begin
                    if(count>=9)count =0; //count�� 9�� ������ 0�� �ȴ�. 
                    else count = count +1;
                    //count = count +1; // count�� 10�� ���ڸ��� 0�� �Ǿ 10�� �������� �ʴ´�
                    //if(count>=10)count =0;
                    //�ּ�ó���� ���� ����ϸ� ��� 10�� �Ǵ� ������ �߻��� �� �ֱ⿡
                    // ���� �� ó�� ���    
            end
         end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� bcd down ī���� ��¿���
module bcd_downcounter_p(
        input clk, reset_p,
        output reg [3:0] count);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)count =9;
            else begin
                    if(count >= 10 | count == 0 )count =9; //count >= 10->Ȥ�� �߸��� ����� �������� �ٷ���� ����
                    else count = count - 1;
                    //count = count -1;
                    //if(count>=10)count =9;
                    //�ּ�ó���� ���� ����ϸ� ��� 10�� �Ǵ� ������ �߻��� �� ����
                    // ������ if���� ���� ��������
            end
         end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� up down ī���� ��¿���
module up_downcounter_p(
        input clk, reset_p,
        input up_down, //�տ��� 1 �ڿ��� 0
        output reg [3:0] count);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)count =0;
            else begin
                    if(up_down) begin
                        count = count + 1;
                    end
                    
                    else begin
                        count = count -1;
                    end
            end
       end
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� bcd up down ī���� ��¿���
// if�ڿ� �������̸� begin end �����(�� �����) -> c����� {}�� ���� ���� = verilog�� begin end
module bcd_up_downcounter_p(
        input clk, reset_p,
        input up_down,   // 1: up counter 0: down counter
        output reg [3:0] count);
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)begin
                if(up_down) count = 0;
                else count = 9;
             end
            else begin   
                    if(up_down) begin
                        if(count>=9) count =0;
                        else count = count + 1;
                    end
                    else begin
                        if(count>=10 | count ==0) count =9;
                        else count = count -1;
                    end
            end
       end
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� ��ī���� ��¿��� (case�� ���)

module ring_counter_case(
        input clk, reset_p,
        output reg [3:0] q);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    case(q) //q�� ��ȭ�� ������ �� case���� ����
                           4'b0001 : q = 4'b0010;
                           4'b0010 : q = 4'b0100;
                           4'b0100 : q = 4'b1000;
                           4'b1000 : q = 4'b0001;
                              default: q = 4'b0001;
                     endcase
             end
         end
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� ��ī���� ��¿���(shift ���)

module ring_counter_shift(
        input clk, reset_p,
        output reg [3:0] q);  //reg�� d�ø��÷�
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    if(q==4'b1000)  q = 4'b0001;
                    else q = q << 1;    // ȸ�ο� shift ȸ��,,? LUt,,?�� ����
             end
         end
 endmodule
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����� ��ī���� ��¿���(���տ����ڻ��)

module ring_counter_combine(
        input clk, reset_p,
        output reg [3:0] q);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    if(q==4'b1000)  q = 4'b0001;
                    else q[3:0] = {q[2:0], 1'b0}; //���տ����� : q�� 012��Ʈ �� q123 ��Ʈ�� �ְ� ������ ��Ʈ�� 0���� ä��
                    // ���տ����ڸ� ����ϸ� shift ���ñ� ���� �輱���θ� ȸ�θ� ������ �� ����
                    //q�� 4��Ʈ�ε� ���տ������� 4��Ʈ�� �� ����ϸ� [3:0]���� q= {q[2:0], 1'b0};�̶� �����
             end
         end
 endmodule