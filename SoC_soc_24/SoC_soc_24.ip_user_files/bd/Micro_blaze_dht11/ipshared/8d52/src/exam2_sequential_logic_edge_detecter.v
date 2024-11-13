`timescale 1ns / 1ps
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//����������,,? T�ø��÷�

module edge_detector_p(
        input clk, reset_p,
        input cp, //�ԷµǴ� Ŭ���޽�(�׸��� btn) 
        output p_edge, n_edge); // ��¿������� �����Ŭ �޽��� ���
        
        reg ff_cur, ff_old; //
        always @(posedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin
                        //ff_old = ff_cur;
                        //ff_cur = cp;                    
                        //ff_cur = cp;
                        //ff_old = ff_cur;               
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if�� ���ǹ��� �ƴ� always������ ����ϸ� �񱳿����ڰ� �ƴ϶� ��������,,? �� ���
                        // ȭ��ǥ���� �ͺ��ŷ��(���� ����ǰ� �ؿ� �����),,,,, �������� ���ŷ�� (��������Ǹ� �ؿ� �������)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//��¿���������(cp on off ��� ����)
module edge_detector_p_all(
        input clk, reset_p,
        input cp, //�ԷµǴ� Ŭ���޽�(�׸��� btn) 
        output p_edge, n_edge); // ��¿������� �����Ŭ �޽��� ���
        
        reg ff_cur, ff_old; //
        always @(posedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if�� ���ǹ��� �ƴ� always������ ����ϸ� �񱳿����ڰ� �ƴ϶� ��������,,? �� ���
                        // ȭ��ǥ���� �ͺ��ŷ��(���� ����ǰ� �ؿ� �����),,,,, �������� ���ŷ�� (��������Ǹ� �ؿ� �������)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�ϰ����� ������\
module edge_detector_n(
        input clk, reset_p,
        input cp, //�ԷµǴ� Ŭ���޽�(�׸��� btn) 
        output p_edge, n_edge); // ��¿������� �����Ŭ �޽��� ���
        
        reg ff_cur, ff_old; //
        always @(negedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if�� ���ǹ��� �ƴ� always������ ����ϸ� �񱳿����ڰ� �ƴ϶� ��������,,? �� ���
                        // ȭ��ǥ���� �ͺ��ŷ��(���� ����ǰ� �ؿ� �����),,,,, �������� ���ŷ�� (��������Ǹ� �ؿ� �������)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�ϰ����� ������(cp on off ��� ����)
module edge_detector_n_all(
        input clk, reset_p,
        input cp, //�ԷµǴ� Ŭ���޽�(�׸��� btn) 
        output p_edge, n_edge); // ��¿������� �����Ŭ �޽��� ���
        
        reg ff_cur, ff_old; //
        always @(negedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if�� ���ǹ��� �ƴ� always������ ����ϸ� �񱳿����ڰ� �ƴ϶� ��������,,? �� ���
                        // ȭ��ǥ���� �ͺ��ŷ��(���� ����ǰ� �ؿ� �����),,,,, �������� ���ŷ�� (��������Ǹ� �ؿ� �������)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule