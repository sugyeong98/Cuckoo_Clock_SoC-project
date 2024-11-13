`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// d �ø��÷� �ϰ� ���� ȸ��(always���� �����ϰ�,,)
module d_flip_flop_n(
        input d,
        input clk,
        output reg q);
        
        always @(negedge clk)begin
 
            q=d;
        end
 endmodule


//////////////////////////////////////////////////////////////////////////////////
// d �ø��÷� �ϰ� ���� ȸ��( ���̳װ�,,,>?)

module d_flip_flop_n2(
        input d,
        input clk, reset_p, enable,
        output reg q);
        
        always @(negedge clk or posedge reset_p)begin   //reset�� 1�� �Ǿ��� �� ����
                if(reset_p) q =0;           // ���µǸ� ��� 0
                else if(enable) q =d;       
        end
 
 endmodule
 
 //////////////////////////////////////////////////////////////////////////////////
// d �ø��÷� ��� ���� ȸ��( reset, enable �߰�)

module d_flip_flop_p(
        input d,
        input clk, reset_p, enable,
        output reg q);
        
        always @(posedge clk or posedge reset_p)begin   //reset�� 1�� �Ǿ��� �� ����
                if(reset_p) q =0;           // ���µǸ� ��� 0
                else if(enable) q =d;       
        end
 
 endmodule
 
//////////////////////////////////////////////////////////////////////////////////
// t�ø��÷� �װ�Ƽ��  �𵨸�

module T_flip_flop_n(
            input clk, reset_p,
            input t,
            output reg q);
            
            always @(negedge clk or posedge reset_p)begin
                    if(reset_p)q=0;         //reset�� 1�̸� ��¾���
                    else begin
                            if(t) q=~q;         //t�� 1�̸� ���
                            else q=q;       //t�� 0�̸� ���簪 ����, �ø��÷ӿ����� ������ �� ����
                     end
             end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// t�ø��÷� ����Ƽ�� �𵨸�
module T_flip_flop_p(
            input clk, reset_p,
            input t,
            output reg q);
            
            always @(posedge clk or posedge reset_p)begin
                    if(reset_p)q=0;         //reset�� 1�̸� ��¾���
                    else begin
                            if(t) q=~q;         //t�� 1�̸� ���
                            else q=q;       //t�� 0�̸� ���簪 ����, �ø��÷ӿ����� ������ �� ����
                     end
             end
endmodule