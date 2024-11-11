`timescale 1ns / 1ps
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//엣지디텍터,,? T플립플롭

module edge_detector_p(
        input clk, reset_p,
        input cp, //입력되는 클록펄스(그림의 btn) 
        output p_edge, n_edge); // 상승엣지에서 언사이클 펄스를 출력
        
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
                        //if의 조건문이 아닌 always문에서 사용하면 비교연산자가 아니라 개형문자,,? 로 사용
                        // 화살표쓰면 넌블로킹문(위에 실행되고 밑에 실행됨),,,,, 이퀄쓰면 블로킹문 (위에실행되면 밑에 실행안함)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//상승엣지디텍터(cp on off 모두 감지)
module edge_detector_p_all(
        input clk, reset_p,
        input cp, //입력되는 클록펄스(그림의 btn) 
        output p_edge, n_edge); // 상승엣지에서 언사이클 펄스를 출력
        
        reg ff_cur, ff_old; //
        always @(posedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if의 조건문이 아닌 always문에서 사용하면 비교연산자가 아니라 개형문자,,? 로 사용
                        // 화살표쓰면 넌블로킹문(위에 실행되고 밑에 실행됨),,,,, 이퀄쓰면 블로킹문 (위에실행되면 밑에 실행안함)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//하강엣지 디텍터\
module edge_detector_n(
        input clk, reset_p,
        input cp, //입력되는 클록펄스(그림의 btn) 
        output p_edge, n_edge); // 상승엣지에서 언사이클 펄스를 출력
        
        reg ff_cur, ff_old; //
        always @(negedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if의 조건문이 아닌 always문에서 사용하면 비교연산자가 아니라 개형문자,,? 로 사용
                        // 화살표쓰면 넌블로킹문(위에 실행되고 밑에 실행됨),,,,, 이퀄쓰면 블로킹문 (위에실행되면 밑에 실행안함)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//하강엣지 디텍터(cp on off 모두 감지)
module edge_detector_n_all(
        input clk, reset_p,
        input cp, //입력되는 클록펄스(그림의 btn) 
        output p_edge, n_edge); // 상승엣지에서 언사이클 펄스를 출력
        
        reg ff_cur, ff_old; //
        always @(negedge clk or posedge reset_p)begin
                if(reset_p)begin
                        ff_cur <=0;
                        ff_old <=0;
                end
                else begin             
                        ff_cur <= cp;
                        ff_old <= ff_cur;
                        //if의 조건문이 아닌 always문에서 사용하면 비교연산자가 아니라 개형문자,,? 로 사용
                        // 화살표쓰면 넌블로킹문(위에 실행되고 밑에 실행됨),,,,, 이퀄쓰면 블로킹문 (위에실행되면 밑에 실행안함)
                 end
         end
         assign p_edge = ({ff_cur, ff_old} ==2'b10) ? 1 : 0;
         assign n_edge = ({ff_cur, ff_old} ==2'b01) ? 1 : 0;         
endmodule