`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 업 타이머 카운더
//reset을 넣는 이유 
//-> 플립플롭을사용하기 위해서는 리셋해야하기 때문 왜냐, 초기값이 없으면 이전 출력이 그대로 나오는데, 이전값을 알 수 없기 때문에
//wire을 0으로 초기화 했다는 것은 gnd에 연결했다는 것, reg를 0으로 초기화한 것은 값을 0으로 준것
module up_counter_asyc(
            input clk, reset_p, //시뮬레이션 할때 1넣어서 리셋해주기
            output [3:0] count);
            
        T_flip_flop_n T0(.clk(clk), .reset_p(reset_p) ,.t(1),.q(count[0]));                 //t가 1이라는 것은 토글하겠다는 뜻
        T_flip_flop_n T1(.clk(count[0]), .reset_p(reset_p) ,.t(1),.q(count[1]));
        T_flip_flop_n T2(.clk(count[1]), .reset_p(reset_p) ,.t(1),.q(count[2]));
        T_flip_flop_n T3(.clk(count[2]), .reset_p(reset_p) ,.t(1),.q(count[3]));

endmodule

//////////////////////////////////////////////////////////////////////////////////
// 다운 타이머 카운더

module down_counter_asyc(
            input clk, reset_p, //시뮬레이션 할때 1넣어서 리셋해주기
            output [3:0] count);
            
        T_flip_flop_p T0(.clk(clk), .reset_p(reset_p) ,.t(1),.q(count[0]));                 //t가 1이라는 것은 토글하겠다는 뜻
        T_flip_flop_p T1(.clk(count[0]), .reset_p(reset_p) ,.t(1),.q(count[1]));
        T_flip_flop_p T2(.clk(count[1]), .reset_p(reset_p) ,.t(1),.q(count[2]));
        T_flip_flop_p T3(.clk(count[2]), .reset_p(reset_p) ,.t(1),.q(count[3]));

endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 up카운터 상승엣지 (레이션 결과는 비동기와 똑같이 나옴)
module up_counter_p(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count + 1;  //출력에 1을 더해서 up카운터 구성
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 up카운터 하강엣지
module up_counter_n(  //syc없으면 당연히 동기 
    input clk, reset_p, enable,
    output reg [3:0] count); // count는 D플립플롭의 출력
    
    always @(negedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count + 1;  //출력에 1을 더해서 up카운터 구성
     end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 down 카운터 상승엣지
module down_counter_p(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count - 1;  //출력에 1을 더해서 up카운터 구성
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 down 카운터 하강엣지
module down_counter_n(
    input clk, reset_p, enable,
    output reg [3:0] count);
    
    always @(negedge clk or posedge reset_p)begin
        if(reset_p)count = 0;
        else if(enable) count = count - 1;  //출력에 1을 더해서 up카운터 구성
     end
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 bcd up 카운터 상승엣지
module bcd_upcounter_p(
        input clk, reset_p,
        output reg [3:0] count);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)count =0;
            else begin
                    if(count>=9)count =0; //count가 9가 찍히면 0이 된다. 
                    else count = count +1;
                    //count = count +1; // count가 10이 되자마자 0이 되어서 10이 찍히지는 않는다
                    //if(count>=10)count =0;
                    //주석처리된 식을 사용하면 잠깐 10이 되는 순간이 발생할 수 있기에
                    // 위에 식 처럼 사용    
            end
         end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 bcd down 카운터 상승엣지
module bcd_downcounter_p(
        input clk, reset_p,
        output reg [3:0] count);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)count =9;
            else begin
                    if(count >= 10 | count == 0 )count =9; //count >= 10->혹시 잘못된 출력이 나왔을때 바로잡기 위해
                    else count = count - 1;
                    //count = count -1;
                    //if(count>=10)count =9;
                    //주석처리된 식을 사용하면 잠깐 10이 되는 순간이 발생할 수 있음
                    // 하지만 if안의 식이 간단해짐
            end
         end
endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 up down 카운터 상승엣지
module up_downcounter_p(
        input clk, reset_p,
        input up_down, //앞에가 1 뒤에가 0
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
//동기식 bcd up down 카운터 상승엣지
// if뒤에 여러줄이면 begin end 사용함(블럭 만들기) -> c언어의 {}와 같은 역할 = verilog의 begin end
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
//동기식 링카운터 상승엣지 (case문 사용)

module ring_counter_case(
        input clk, reset_p,
        output reg [3:0] q);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    case(q) //q에 변화가 생겼을 때 case문을 실행
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
//동기식 링카운터 상승엣지(shift 사용)

module ring_counter_shift(
        input clk, reset_p,
        output reg [3:0] q);  //reg가 d플립플롭
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    if(q==4'b1000)  q = 4'b0001;
                    else q = q << 1;    // 회로에 shift 회로,,? LUt,,?이 생김
             end
         end
 endmodule
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//동기식 링카운터 상승엣지(결합연산자사용)

module ring_counter_combine(
        input clk, reset_p,
        output reg [3:0] q);
        
        always @(posedge clk or posedge reset_p)begin
            if(reset_p)q = 4'b0001;
            else begin
                    if(q==4'b1000)  q = 4'b0001;
                    else q[3:0] = {q[2:0], 1'b0}; //결합연산자 : q의 012비트 를 q123 비트에 넣고 마지막 비트를 0으로 채움
                    // 결합연산자를 사용하면 shift 뭐시기 없시 배선으로만 회로를 구성할 수 있음
                    //q는 4비트인데 결합연산으로 4비트를 다 사용하면 [3:0]없이 q= {q[2:0], 1'b0};이라도 적어도됨
             end
         end
 endmodule