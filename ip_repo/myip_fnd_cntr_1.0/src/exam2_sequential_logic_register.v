`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 8비트 레지스터 만들기 -> d플립플롭이 8개 생김( 열 많이, 전류 많이, 속도 빠름)
// 병렬입력 병렬 출력
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
// 직렬입력 직렬출력
module shift_register_SISO_n(
        input d,
        input clk, reset_p,
        output q);
        
        reg [3:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
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
// 직렬입력 직렬출력(결합연산자 사용)
module shift_register_SISO_com_n(
        input d,
        input clk, reset_p,
        output q);
        
        reg [3:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { d, siso_reg[3:1]};
                end
          end
                 assign q = siso_reg[0];
 endmodule
 
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// n비트 직렬입력 직렬출력(결합연산자 사용)
module shift_register_SISO_Nbit_n #(parameter N=8) (
        input d,
        input clk, reset_p,
        output q);
        
        reg [N-1:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { d, siso_reg[N-1:1]};
                end
          end
                 assign q = siso_reg[0];
 endmodule

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// n비트 직렬입력 직렬출력(결합 연산자 사용) / 데이터의 최상위비트부터 전달하기
module shift_register_SISO_Nbit_msb_n #(parameter N=8) (
        input d,
        input clk, reset_p,
        output q);
        
        reg [N-1:0] siso_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
                if(reset_p) siso_reg <=0;
                else begin
                    siso_reg <= { siso_reg[N-2:0], d};
                end
          end
                 assign q = siso_reg[N-1];
 endmodule
 
 
 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 직렬입력 병렬출력(결합연산자 사용)
module shift_register_SIPO_n(
        input d,
        input clk, reset_p,
        input rd_en_l,   // l: low active, h : high active
        output [3:0] q);
        
        reg [3:0] sipo_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
                if(reset_p) sipo_reg <=0;
                else begin
                    sipo_reg <= { d, sipo_reg[3:1]};
                end
          end
         // wire rd_en;
          assign q = rd_en_l ? 4'bz : sipo_reg;   //연결끊는 것 임피던스 출력 z
          //bufif0 (q[0], sipo_reg[0], rd_en);  //게이트레벨, 프리미티브 삼상버퍼 사용
 endmodule
 
  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 직렬입력 병렬출력(결합연산자 사용) n개 비트
module shift_register_SIPO_Nbit_n #(parameter N= 8)(
        input d,
        input clk, reset_p,
        input rd_en_l,   // l: low active, h : high active
        output [N-1:0] q);
        
        reg [N-1:0] sipo_reg;
        always @(negedge clk or posedge reset_p)begin
        //always문 안에 하나의 넌블로킹문과 블로킹 문을 섞어서  사용하지 않는다.
                if(reset_p) sipo_reg <=0;
                else begin
                    sipo_reg <= { d, sipo_reg[N-1:1]};
                end
          end
         // wire rd_en;
          assign q = rd_en_l ? 'bz : sipo_reg;   //연결끊는 것 임피던스 출력 z
          //8'b1; -> 0000 0001  8'bz -> zzzz zzzz(임피던스는 몇비트인지 선언안해도 전부가 z로 채워짐)
          //bufif0 (q[0], sipo_reg[0], rd_en);  //게이트레벨, 프리미티브 삼상버퍼 사용
 endmodule
   ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 병렬입력 직렬출력(결합연산자 사용)
 module shift_register_PISO_n(
        input [3:0] d,
        input clk, reset_p,
        input shift_load,  // 1일때 shift 0일때 load 앞에 있는게 1 뒤에있는게 0
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
// 병렬입력 직렬출력(결합연산자 사용) n비트 출력
 module shift_register_PISO_Nbit_n #(parameter N=8)(
        input [N-1:0] d,
        input clk, reset_p,
        input shift_load,  // 1일때 shift 0일때 load 앞에 있는게 1 뒤에있는게 0
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
// 병렬입력 병렬 출력
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
// 병렬입력 병렬 출력 n비트 레지스터
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
//메모리블럭 만들기 SRAM
module sram_8bit_1024(
            input clk, //reset_p가 없음(메모리는 리셋되면 안된다(사용중에), 전원onoff하면 리셋)
            input wr_en, rd_en,
            input [9:0] addr, //1024개의 주소를 표현하기 위해..?
            inout [7:0] data);
            //input은 입출력이 모두 가능함, 사용할 때 주의가 필요함,,
            // 임피던스 출력을 잘 해줘야함,,,inout을 출력하고자 하면 외부 출력 차단,,?
            
            reg [7:0] mem[0:1023]; //memory, 배열,,,,, 0~1023개의 배열, C언어랑 약간 문법이 다름
            // 변수 앞에 대괄호는 비트수, 변수 뒤에 대괄호는 배열
            
            always @(posedge clk) begin
                        if(wr_en) mem[addr] = data;  //addr는 배열 인덱스,, addr의 위치에 data가 mem에 저장
                        // data가 memory의 addr 번지에 저장
            end
            
            assign data = rd_en ? mem[addr] : 'bz;
            //rd_en이 1일때만 출력, 아니면 임피던스, 
            //주소를 바꿔서 저장할라면 출력버퍼가 필요 아니면 입력주소와 출력주소를 다르게 해야함
            //mar,,,, memory address register 레지스터의 출력이 mux의 입력으로 들어감,,?
            //mdr  memory buffer register
endmodule