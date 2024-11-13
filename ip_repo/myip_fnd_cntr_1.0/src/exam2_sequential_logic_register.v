`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 8��Ʈ �������� ����� -> d�ø��÷��� 8�� ����( �� ����, ���� ����, �ӵ� ����)
// �����Է� ���� ���
module register_8bits_n(
        input [7:0] d,
        input clk, reset_p, enable,
        output reg [7:0] q);
        
        always @(negedge clk or posedge reset_p)begin
                if(reset_p) q=0;
                else if(enable) q = d;
        end
 endmodule
 
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������
module shift_register_SISO_n(
        input d,
        input clk, reset_p,
        output q);
        
        reg [3:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg[3] <= d;
                    siso_reg[2] <=  siso_reg[3];
                    siso_reg[1] <=  siso_reg[2];
                    siso_reg[0] <=  siso_reg[1];
                end
          end
                 assign q = siso_reg[0];
 endmodule
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������(���տ����� ���)
module shift_register_SISO_com_n(
        input d,
        input clk, reset_p,
        output q);
        
        reg [3:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { d, siso_reg[3:1]};
                end
          end
                 assign q = siso_reg[0];
 endmodule
 
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// n��Ʈ �����Է� �������(���տ����� ���)
module shift_register_SISO_Nbit_n #(parameter N=8) (
        input d,
        input clk, reset_p,
        output q);
        
        reg [N-1:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { d, siso_reg[N-1:1]};
                end
          end
                 assign q = siso_reg[0];
 endmodule

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// n��Ʈ �����Է� �������(���� ������ ���) / �������� �ֻ�����Ʈ���� �����ϱ�
module shift_register_SISO_Nbit_msb_n #(parameter N=8) (
        input d,
        input clk, reset_p,
        output q);
        
        reg [N-1:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { siso_reg[N-2:0], d};
                end
          end
                 assign q = siso_reg[N-1];
 endmodule
 
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������(���տ����� ���)
module shift_register_SIPO_n(
        input d,
        input clk, reset_p,
        input rd_en_l,   // l: low active, h : high active
        output [3:0] q);
        
        reg [3:0] sipo_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) sipo_reg <=0;
                else begin
                    sipo_reg <= { d, sipo_reg[3:1]};
                end
          end
         // wire rd_en;
          assign q = rd_en_l ? 4'bz : sipo_reg;   //������� �� ���Ǵ��� ��� z
          //bufif0 (q[0], sipo_reg[0], rd_en);  //����Ʈ����, ������Ƽ�� ������ ���
 endmodule
 
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������(���տ����� ���) n�� ��Ʈ
module shift_register_SIPO_Nbit_n #(parameter N= 8)(
        input d,
        input clk, reset_p,
        input rd_en_l,   // l: low active, h : high active
        output [N-1:0] q);
        
        reg [N-1:0] sipo_reg;
        always @(negedge clk or posedge reset_p)begin
        //always�� �ȿ� �ϳ��� �ͺ��ŷ���� ���ŷ ���� ���  ������� �ʴ´�.
                if(reset_p) sipo_reg <=0;
                else begin
                    sipo_reg <= { d, sipo_reg[N-1:1]};
                end
          end
         // wire rd_en;
          assign q = rd_en_l ? 'bz : sipo_reg;   //������� �� ���Ǵ��� ��� z
          //8'b1; -> 0000 0001  8'bz -> zzzz zzzz(���Ǵ����� ���Ʈ���� ������ص� ���ΰ� z�� ä����)
          //bufif0 (q[0], sipo_reg[0], rd_en);  //����Ʈ����, ������Ƽ�� ������ ���
 endmodule
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������(���տ����� ���)
 module shift_register_PISO_n(
        input [3:0] d,
        input clk, reset_p,
        input shift_load,  // 1�϶� shift 0�϶� load �տ� �ִ°� 1 �ڿ��ִ°� 0
        output q);
        
        reg [3:0] piso_reg;
        always @(negedge clk or posedge reset_p)begin
                if(reset_p) piso_reg <=0;
                else begin
                       if(shift_load)begin
                           piso_reg <= { 1'b0, piso_reg[3:1]};
                       end
                       else begin
                           piso_reg = d;
                       end
                 end
          end
          
          assign q = piso_reg[0];
          
 endmodule
 
 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� �������(���տ����� ���) n��Ʈ ���
 module shift_register_PISO_Nbit_n #(parameter N=8)(
        input [N-1:0] d,
        input clk, reset_p,
        input shift_load,  // 1�϶� shift 0�϶� load �տ� �ִ°� 1 �ڿ��ִ°� 0
        output q);
        
        reg [N-1:0] piso_reg;
        always @(negedge clk or posedge reset_p)begin
                if(reset_p) piso_reg <=0;
                else begin
                       if(shift_load)begin
                           piso_reg <= { 1'b0, piso_reg[N-1:1]};
                       end
                       else begin
                           piso_reg = d;
                       end
                 end
          end
          
          assign q = piso_reg[0];
          
 endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� ���� ���
module register_8bits_PIPO_n(
        input [7:0] in_data,
        input clk, reset_p, wr_en, rd_en,
        output [7:0] out_data);
        
        reg [7:0] register;
        always @(negedge clk or posedge reset_p)begin
                if(reset_p) register=0;
                else if(wr_en) register = in_data;
        end
        assign out_data = rd_en ? register : 'bz;
        
 endmodule
 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// �����Է� ���� ��� n��Ʈ ��������
module register_Nbits_PIPO_n #(parameter N=8)(
        input [N-1:0] in_data,
        input clk, reset_p, wr_en, rd_en,
        output [N-1:0] out_data);
        
        reg [N-1:0] register;
        always @(negedge clk or posedge reset_p)begin
                if(reset_p) register=0;
                else if(wr_en) register = in_data;
        end
        assign out_data = rd_en ? register : 'bz;
        
 endmodule
 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//�޸𸮺� ����� SRAM
module sram_8bit_1024(
            input clk, //reset_p�� ����(�޸𸮴� ���µǸ� �ȵȴ�(����߿�), ����onoff�ϸ� ����)
            input wr_en, rd_en,
            input [9:0] addr, //1024���� �ּҸ� ǥ���ϱ� ����..?
            inout [7:0] data);
            //input�� ������� ��� ������, ����� �� ���ǰ� �ʿ���,,
            // ���Ǵ��� ����� �� �������,,,inout�� ����ϰ��� �ϸ� �ܺ� ��� ����,,?
            
            reg [7:0] mem[0:1023]; //memory, �迭,,,,, 0~1023���� �迭, C���� �ణ ������ �ٸ�
            // ���� �տ� ���ȣ�� ��Ʈ��, ���� �ڿ� ���ȣ�� �迭
            
            always @(posedge clk) begin
                        if(wr_en) mem[addr] = data;  //addr�� �迭 �ε���,, addr�� ��ġ�� data�� mem�� ����
                        // data�� memory�� addr ������ ����
            end
            
            assign data = rd_en ? mem[addr] : 'bz;
            //rd_en�� 1�϶��� ���, �ƴϸ� ���Ǵ���, 
            //�ּҸ� �ٲ㼭 �����Ҷ�� ��¹��۰� �ʿ� �ƴϸ� �Է��ּҿ� ����ּҸ� �ٸ��� �ؾ���
            //mar,,,, memory address register ���������� ����� mux�� �Է����� ��,,?
            //mdr  memory buffer register
endmodule