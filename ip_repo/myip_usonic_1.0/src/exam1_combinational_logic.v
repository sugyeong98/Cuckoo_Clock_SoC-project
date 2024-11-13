`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// and 논리 회로
module and_gate(
       input a,b,
       output reg q
    );
    
    always @(a,b)begin  //andgate 함수 구성해보기
      case({a, b})
        2'b00: q =0;
        2'b01: q =0;
        2'b10: q =0;
        2'b11: q =1;
      endcase
    end
    
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//module +  모듈명
module half_adder(
    input a,b,
    output s,c
);
   
    and_gate carry(
     .a(a), .b(b), // and_gate 변수와 하프에더의 변수를 연결 .a -> andgate의 변수 (a) -> halfadder의 변수
     .q(c));
    //and_gate carry(a,b,q)

endmodule



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//module +  모듈명
//반가산기  구조적 모델링
module half_adder_sturctural(
    input a,b,
    output s,c
);
    //프리이미트,,? 인스턴스명 안써도됨 carry
    //and_gate carry(
    //    .a(a), .b(b), // and_gate 변수와 하프에더의 변수를 연결 .a -> andgate의 변수 (a) -> halfadder의 변수
    //    .q(c));
    //smf_gate carry(a,b,q)
    and (c,a,b);
    xor (s,a,b); //(출력, 입력, 입력), xor게이트의 함수는 정의되어있음

endmodule




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// 반가산기 동작적 모델링
module half_adder_behavioral(
    input a,b,
    output reg s,c
);
    always @(a,b) begin   // 센서시티비 변수값이 변하면 아래에있는 구문이 한번씩 시작된다,,?
        case({a,b})
            2'b00: begin s =0; c =0; end  //2비트 2진수 출력,,?
            2'b01: begin s =1; c =0; end
            2'b10: begin s =1; c =0; end
            2'b11: begin s =0; c =1; end
            default: begin s =0; c=0; end // 모든 경우가 다 있기 때문에 없어도 됨
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

//데이터 플로어 모델링 : 수식으로 입출력을  처리하는 것
// 반가산기 데이터 플로어 모델링
module half_adder_dataflow(
    input a, b,
    output s, c);
    
    wire [1:0] sum_value;   //2비트 wire형 선언
    
    assign sum_value = a + b;  //입력을 더함, sign 문 선을 연결한다, a+b의 결과를 wire에 저장
    // 덧셈 회로는 비바도에 만들어져있어서 만들필요는 없지만 문법을 익히기 위해 수식으로 사용
    // wire는 단순 연결, assign은 결과를 저장
    
    assign s = sum_value[0];  // sum_value의 0번 비트의 의 값을 s에 저장
    assign c = sum_value[1];
    //rtl 설계 레지스터 트렌스퍼 레벨 : 레지스터끼리 연결해서 동작을 설계 -> reg 사용 -> alway문 사용
endmodule



///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// 전가산기 구조적 모델링
module full_adder_structural(
    input a, b, c, 
    output sum, carry);
    
    wire sum_0, carry_0, carry_1; //(첫번째 썸, 첫번째 캐리, 두번째 캐리 정의)
    half_adder_structural ha0(.a(a), .b(b), .s(sum_0), .c(carry_0));
    half_adder_structural ha1(.a(sum_0), .b(c), .s(sum), .c(carry_1));
    
    or(carry, carry_0, carry_1);
endmodule   
  
    //반가산기의 결과와 c 변수를 연결한 다른 반가산기 구성해야함
 
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
 //전가산기  동작적 모델링
 //fpga에서는 구조적 모델링 말구 동작적 모델링 사용 ( 더 최적화되어있음)
module full_adder_behavioral(
    input a, b, c, 
    output reg sum, carry);
    
    always @(*)begin   //* 모든 비트 가리킴
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

    
//데이터  플로우 모델링 
  module full_adder_dataflow(
    input a, b, c, 
    output sum, carry);
  
 // 올림수가 상위 비트로 감 carry가 1번 비트로
    wire [1:0] sumvalue;
    
    assign sumvalue = a+ b+ c;
    assign sum = sumvalue[0];
    assign carry = sumvalue[1];   
    
 endmodule
 
 
 ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//4비트 구조적 덧셈기
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

//4비트 데이터플로우 덧셈기
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
   
   //가감산기 구조적 모델링
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
    
    
    //가감산기  데이터 플러우 모델링
    module fadd_sub_4bits_dataflow(
         input [3:0] a, b,
         input s,
         output [3:0] sum,
         output carry);
         
         wire [4:0] result;
         
         assign result = s ? a -  b : a + b; // s가 1이면  :의 좌항 실행, s가 0이면 :의 우항 실행
         assign sum = result[3:0];
         assign carry = s ? ~result[4] : result[4];
 
 endmodule
     
  
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    //비교기 데이터플로우형
  module comparator_dataflow(
        input a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
  
  endmodule
  
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //4비트 비교기 (입력만 바꾸면됨,,) 데이터플로우형
    module comparator_dataflow_4bit(
        input [3:0] a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
  
  endmodule
  
  
    
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //비교기 공식 (입력만 바꾸면됨,,) 데이터 플로우형
    module comparator #(parameter N =8)(    //n값을 지정)
        input [N-1:0] a, b,
        output equal, greater, less);
        
        assign equal =( a == b) ? 1'b1 : 1'b0;
        assign greater =( a > b) ? 1'b1 : 1'b0; 
        assign less =( a < b) ? 1'b1 : 1'b0;
  
   endmodule
  
  
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  //비교기 만들어보기 1비트 (디폴드 8 안에서) 위에랑 세트
    module comparator_n_bits_test(
        input [1:0] a, b,
        output equal, greater, less);
        
        comparator #(.N(2)) comp_2bit(
        .a(a), .b(b), .equal(equal), .greater(greater), .less(less));
        // a, b, equal, greater, less); 변수명을 명시하지 않을 경우 순서를 지켜서  연결해줘야함
 
 endmodule
  
  
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //비교기 동작적 모델링
module comparator_N_bits_b  #(parameter N =8)(
        input [N-1:0] a, b,
        output reg equal, greater, less);
        
        always @(a,b) begin //alway안에서만 if 사용가능, verilog어는 동시에 진행, 단 if는 순서대로 진행,,,,
            equal = 0;
            greater = 0;
            less = 0;
            if ( a==b) equal = 1;
            else if (a>b)greater = 1;
            else if(a <b) less = 1;
        end
        
  endmodule
  
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //BCD 코드 2진수를 10진수로 240723 
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
