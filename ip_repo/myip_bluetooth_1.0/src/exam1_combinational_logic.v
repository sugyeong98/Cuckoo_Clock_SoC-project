`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// and �� ȸ��
module and_gate(
       input a,b,
       output reg q
    );
    
    always @(a,b)begin  //andgate �Լ� �����غ���
      case({a, b})
        2'b00: q =0;
        2'b01: q =0;
        2'b10: q =0;
        2'b11: q =1;
      endcase
    end
    
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//module +  ����
module half_adder(
    input a,b,
    output s,c
);
   
    and_gate carry(
     .a(a), .b(b), // and_gate ������ ���������� ������ ���� .a -> andgate�� ���� (a) -> halfadder�� ����
     .q(c));
    //and_gate carry(a,b,q)

endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//module +  ����
//�ݰ����  ������ �𵨸�
module half_adder_sturctural(
    input a,b,
    output s,c
);
    //�����̹�Ʈ,,? �ν��Ͻ��� �Ƚᵵ�� carry
    //and_gate carry(
    //    .a(a), .b(b), // and_gate ������ ���������� ������ ���� .a -> andgate�� ���� (a) -> halfadder�� ����
    //    .q(c));
    //smf_gate carry(a,b,q)
    and (c,a,b);
    xor (s,a,b); //(���, �Է�, �Է�), xor����Ʈ�� �Լ��� ���ǵǾ�����

endmodule




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// �ݰ���� ������ �𵨸�
module half_adder_behavioral(
    input a,b,
    output reg s,c
);
    always @(a,b) begin   // ������Ƽ�� �������� ���ϸ� �Ʒ����ִ� ������ �ѹ��� ���۵ȴ�,,?
        case({a,b})
            2'b00: begin s =0; c =0; end  //2��Ʈ 2���� ���,,?
            2'b01: begin s =1; c =0; end
            2'b10: begin s =1; c =0; end
            2'b11: begin s =0; c =1; end
            default: begin s =0; c=0; end // ��� ��찡 �� �ֱ� ������ ��� ��
        endcase
    end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module half_adder_structural(
    input a, b, 
    output s, c);

    and(c,a,b);
    xor(s,a,b);
endmodule


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//������ �÷ξ� �𵨸� : �������� �������  ó���ϴ� ��
// �ݰ���� ������ �÷ξ� �𵨸�
module half_adder_dataflow(
    input a, b,
    output s, c);
    
    wire [1:0] sum_value;   //2��Ʈ wire�� ����
    
    assign sum_value = a + b;  //�Է��� ����, sign �� ���� �����Ѵ�, a+b�� ����� wire�� ����
    // ���� ȸ�δ� ��ٵ��� ��������־ �����ʿ�� ������ ������ ������ ���� �������� ���
    // wire�� �ܼ� ����, assign�� ����� ����
    
    assign s = sum_value[0];  // sum_value�� 0�� ��Ʈ�� �� ���� s�� ����
    assign c = sum_value[1];
    //rtl ���� �������� Ʈ������ ���� : �������ͳ��� �����ؼ� ������ ���� -> reg ��� -> alway�� ���
endmodule



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// ������� ������ �𵨸�
module full_adder_structural(
    input a, b, c, 
    output sum, carry);
    
    wire sum_0, carry_0, carry_1; //(ù��° ��, ù��° ĳ��, �ι�° ĳ�� ����)
    half_adder_structural ha0(.a(a), .b(b), .s(sum_0), .c(carry_0));
    half_adder_structural ha1(.a(sum_0), .b(c), .s(sum), .c(carry_1));
    
    or(carry, carry_0, carry_1);
endmodule   
  
    //�ݰ������ ����� c ������ ������ �ٸ� �ݰ���� �����ؾ���
 
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
 //�������  ������ �𵨸�
 //fpga������ ������ �𵨸� ���� ������ �𵨸� ��� ( �� ����ȭ�Ǿ�����)
module full_adder_behavioral(
    input a, b, c, 
    output reg sum, carry);
    
    always @(*)begin   //* ��� ��Ʈ ����Ŵ
     case({a, b, c})
        3'b000: begin sum = 0; carry = 0; end
        3'b001: begin sum = 1; carry = 0; end
        3'b010: begin sum = 1; carry = 0; end
        3'b011: begin sum = 0; carry = 1; end
        3'b100: begin sum = 1; carry = 0; end
        3'b101: begin sum = 0; carry = 1; end
        3'b110: begin sum = 0; carry = 1; end
        3'b111: begin sum = 1; carry = 1; end
     endcase
    end
endmodule


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    
//������  �÷ο� �𵨸� 
  module full_adder_dataflow(
    input a, b, c, 
    output sum, carry);
  
 // �ø����� ���� ��Ʈ�� �� carry�� 1�� ��Ʈ��
    wire [1:0] sumvalue;
    
    assign sumvalue = a+ b+ c;
    assign sum = sumvalue[0];
    assign carry = sumvalue[1];   
    
 endmodule
 
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4��Ʈ ������ ������
module fadderr_4bits_s(
    input [3:0] a, b,
    input cin,
    output [3:0] sum,
    output carry );
    
    
    wire [2:0] carry_w;

    full_adder_structural fa0(.a(a[0]), .b(b[0]), .c(cin), .sum(sum[0]), .carry(carry_w[0]));
    full_adder_structural fa1(.a(a[1]), .b(b[1]), .c(carry_w[0]), .sum(sum[1]), .carry(carry_w[1]));
    full_adder_structural fa2(.a(a[2]), .b(b[2]), .c(carry_w[1]), .sum(sum[2]), .carry(carry_w[2]));
    full_adder_structural fa3(.a(a[3]), .b(b[3]), .c(carry_w[2]), .sum(sum[3]), .carry(carry));
 
 endmodule
 
 
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4��Ʈ �������÷ο� ������
module fadder_4bits_dataflow(
      input [3:0] a, b,
      input cin,
      output [3:0] sum,
      output carry );
      
      
     wire [4:0] sum_value;
     
     
     assign sum_value = a +b + cin;
     assign sum  = sum_value[3:0];
     assign carry  = sum_value[4];
     
  endmodule
  
  
  
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
   //������� ������ �𵨸�
module fadd_sub_4bits(
    input [3:0] a, b,
    input s,
    output [3:0] sum,
    output carry);
    
    wire [2:0] carry_w;
    wire [3:0] b_w;
    xor(b_w[0], b[0],s);
    xor(b_w[1], b[1],s);
    xor(b_w[2], b[2],s);
    xor(b_w[3], b[3],s);
    
    full_adder_structural fa0(.a(a[0]), .b(b[0]), .c(s), .sum(sum[0]), .carry(carry_w[0]));
    full_adder_structural fa1(.a(a[1]), .b(b[1]), .c(carry_w[0]), .sum(sum[1]), .carry(carry_w[1]));
    full_adder_structural fa2(.a(a[2]), .b(b[2]), .c(carry_w[1]), .sum(sum[2]), .carry(carry_w[2]));
    full_adder_structural fa3(.a(a[3]), .b(b[3]), .c(carry_w[2]), .sum(sum[3]), .carry(carry));
    
  endmodule
  
  
  
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    //�������  ������ �÷��� �𵨸�
    module fadd_sub_4bits_dataflow(
         input [3:0] a, b,
         input s,
         output [3:0] sum,
         output carry);
         
         wire [4:0] result;
         
         assign result = s ? a -  b : a + b; // s�� 1�̸�  :�� ���� ����, s�� 0�̸� :�� ���� ����
         assign sum = result[3:0];
         assign carry = s ? ~result[4] : result[4];
 
 endmodule
     
  
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    //�񱳱� �������÷ο���
  module comparator_dataflow(
        input a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
  
  endmodule
  
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //4��Ʈ �񱳱� (�Է¸� �ٲٸ��,,) �������÷ο���
    module comparator_dataflow_4bit(
        input [3:0] a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
  
  endmodule
  
  
    
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //�񱳱� ���� (�Է¸� �ٲٸ��,,) ������ �÷ο���
    module comparator #(parameter N =8)(    //n���� ����)
        input [N-1:0] a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
   endmodule
  
  
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //�񱳱� ������ 1��Ʈ (������ 8 �ȿ���) ������ ��Ʈ
    module comparator_n_bits_test(
        input [1:0] a, b,
        output equal, greater, less);
        
        comparator #(.N(2)) comp_2bit(
        .a(a), .b(b), .equal(equal), .greater(greater), .less(less));
        // a, b, equal, greater, less); �������� ������� ���� ��� ������ ���Ѽ�  �����������
 
 endmodule
  
  
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //�񱳱� ������ �𵨸�
module comparator_N_bits_b  #(parameter N =8)(
        input [N-1:0] a, b,
        output reg equal, greater, less);
        
        always @(a,b) begin //alway�ȿ����� if ��밡��, verilog��� ���ÿ� ����, �� if�� ������� ����,,,,
            equal = 0;
            greater = 0;
            less = 0;
            if ( a==b) equal = 1;
            else if (a>b)greater = 1;
            else if(a <b) less = 1;
        end
        
  endmodule
  
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //BCD �ڵ� 2������ 10������ 240723 
  module bin_to_dec(
        input [11:0] bin,
        output reg [15:0] bcd
    );

    reg [3:0] i;

    always @(bin) begin
        bcd = 0;
        for (i=0;i<12;i=i+1)begin
            bcd = {bcd[14:0], bin[11-i]};
            if(i < 11 && bcd[3:0] > 4) bcd[3:0] = bcd[3:0] + 3;
            if(i < 11 && bcd[7:4] > 4) bcd[7:4] = bcd[7:4] + 3;
            if(i < 11 && bcd[11:8] > 4) bcd[11:8] = bcd[11:8] + 3;
            if(i < 11 && bcd[15:12] > 4) bcd[15:12] = bcd[15:12] + 3;
        end
    end
endmodule
