`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// d 플립플롭 하강 엣지 회로(always에서 동작하게,,)
module d_flip_flop_n(
        input d,
        input clk,
        output reg q);
        
        always @(negedge clk)begin
 
            q=d;
        end
 endmodule


//////////////////////////////////////////////////////////////////////////////////
// d 플립플롭 하강 엣지 회로( 줄이네개,,,>?)

module d_flip_flop_n2(
        input d,
        input clk, reset_p, enable,
        output reg q);
        
        always @(negedge clk or posedge reset_p)begin   //reset이 1이 되었을 때 리셋
                if(reset_p) q =0;           // 리셋되면 출력 0
                else if(enable) q =d;       
        end
 
 endmodule
 
 //////////////////////////////////////////////////////////////////////////////////
// d 플립플롭 상승 엣지 회로( reset, enable 추가)

module d_flip_flop_p(
        input d,
        input clk, reset_p, enable,
        output reg q);
        
        always @(posedge clk or posedge reset_p)begin   //reset이 1이 되었을 때 리셋
                if(reset_p) q =0;           // 리셋되면 출력 0
                else if(enable) q =d;       
        end
 
 endmodule
 
//////////////////////////////////////////////////////////////////////////////////
// t플립플롭 네거티브  모델링

module T_flip_flop_n(
            input clk, reset_p,
            input t,
            output reg q);
            
            always @(negedge clk or posedge reset_p)begin
                    if(reset_p)q=0;         //reset이 1이면 출력없음
                    else begin
                            if(t) q=~q;         //t가 1이면 토글
                            else q=q;       //t가 0이면 현재값 유지, 플립플롭에서는 생략할 수 있음
                     end
             end
endmodule

//////////////////////////////////////////////////////////////////////////////////
// t플립플롭 파지티브 모델링
module T_flip_flop_p(
            input clk, reset_p,
            input t,
            output reg q);
            
            always @(posedge clk or posedge reset_p)begin
                    if(reset_p)q=0;         //reset이 1이면 출력없음
                    else begin
                            if(t) q=~q;         //t가 1이면 토글
                            else q=q;       //t가 0이면 현재값 유지, 플립플롭에서는 생략할 수 있음
                     end
             end
endmodule