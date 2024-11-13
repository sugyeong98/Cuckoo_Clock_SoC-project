`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// fnd_cntr라는 이름으로 인스턴스 만들기
module fnd_cntr(
            input clk, reset_p,
            input [15:0] value,
            output [3:0] com,       //공통에노드
            output [7:0] seg_7);  //세그먼트
            
            ring_counter_fnd        rc( clk, reset_p,com);  //인스턴스명이 없으면 알아서 이름붙여둠
            
            reg [3:0] hex_value;
            always @(posedge clk)begin
                    case(com)
                            4'b1110: hex_value = value[3:0];
                            4'b1101: hex_value = value[7:4];
                            4'b1011: hex_value = value[11:8];
                            4'b0111: hex_value = value[15:12];
                     endcase 
              end
                     
            decoder_7seg(.hex_value(hex_value),.seg_7(seg_7)); //4비트 2진수로 헥사값 표현
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
module button_cntr(
            input clk, reset_p,
            input btn,
            output btn_nedge, btn_pedge);
            
            reg [20:0] clk_div =0;
            always @(posedge clk) clk_div = clk_div +1;
            
            wire clk_div_nedge;
            edge_detector_p        ed( .clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .n_edge(clk_div_nedge)); //보통 1ms 안에서 체터ㅋ링이 끝남
            
            reg debounced_btn;
            always @(posedge clk or posedge reset_p) begin
                    if(reset_p)debounced_btn =0;
                    else if(clk_div_nedge) debounced_btn =btn;
            end
            
            edge_detector_p        ed1(.clk(clk), .reset_p(reset_p), .cp(debounced_btn), .n_edge( btn_nedge), .p_edge( btn_pedge));
endmodule   


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 키패드 240722, 체터링막기 위해 8ms씩딜레이 주기 = 총 32ms 
module key_pad_cntr(
        input clk, reset_p,
        input [3:0] row,   // 행 
        output reg [3:0] col,  //column 열 
        output reg [3:0] key_value,
        output reg key_valid);
        
        reg [19:0] clk_div;
        always @(posedge clk) clk_div = clk_div+1;
        
        wire clk_8msec_p, clk_8msec_n;
        edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(clk_div[19]), .n_edge(clk_8msec_n), .p_edge(clk_8msec_p));
        // 눌렀을 때, 때었을때 둘다 받기
        
        //링카운터
        always @(posedge clk or posedge reset_p)begin
                    if(reset_p) col = 4'b0001;
                    else if(clk_8msec_p && !key_valid) begin  //!하면 lut 하나 ,==0이면 비교기(32비트)// 버튼을 눌렀을 때, value를 계속 표시하기 위해( 더 이상 링카운터가 아님)
                            case(col) 
                                   4'b0001 : col = 4'b0010;
                                   4'b0010 : col = 4'b0100;
                                   4'b0100 : col = 4'b1000;
                                   4'b1000 : col = 4'b0001;
                                      default: col = 4'b0001;
                             endcase
                      end
          end
          
          always @(posedge clk or posedge reset_p)begin
                if(reset_p) begin
                        key_value = 0;
                        key_valid  = 0;
                end
                else begin
                        if(clk_8msec_n)begin   //pdt 관리를 위해
                                if(row) begin
                                        key_valid =1;
                                        case({col, row})
                                                8'b0001_0001 : key_value = 4'h0;
                                                8'b0001_0010 : key_value = 4'h1;
                                                8'b0001_0100 : key_value = 4'h2;
                                                8'b0001_1000 : key_value = 4'h3;
                                                8'b0010_0001 : key_value = 4'h4;
                                                8'b0010_0010 : key_value = 4'h5;
                                                8'b0010_0100 : key_value = 4'h6;
                                                8'b0010_1000 : key_value = 4'h7;
                                                8'b0100_0001 : key_value = 4'h8;
                                                8'b0100_0010 : key_value = 4'h9;
                                                8'b0100_0100 : key_value = 4'ha;
                                                8'b0100_1000 : key_value = 4'hb;
                                                8'b1000_0001 : key_value = 4'hc;
                                                8'b1000_0010 : key_value = 4'hd;
                                                8'b1000_0100 : key_value = 4'he;
                                                8'b1000_1000 : key_value = 4'hf;      
                                       endcase     
                                 end
                                 else begin
                                        key_valid =0;      // 버튼이 눌렸는지를 확인하는 인자
                                        key_value =0;  //초기값을 설정하는 단계, 이걸 활성화하면 손을 떼면 0이 출력
                                 end 
                         end                                             
                end
       end      
endmodule

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 키패드 240722,
module keypad_cntr_FSM(
         input clk, reset_p,
         input [3:0] row,   // 행 
         output reg [3:0] col,  //column 열 
         output reg [3:0] key_value,
         output reg key_valid);
         
         parameter SCAN0                        = 5'b00001;
         parameter SCAN1                         = 5'b00010;
         parameter SCAN2                        = 5'b00100;
         parameter SCAN3                        = 5'b01000;
         parameter KEY_PROCESS       = 5'b10000;
         
         
         reg [19:0] clk_div;
         always @(posedge clk) clk_div = clk_div+1;
        
        wire clk_8msec_n, clk_8msec_p;
        edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(clk_div[19]), .n_edge(clk_8msec_n),  .p_edge(clk_8msec_p));
        
        
       reg [4:0] state, next_state;
       
       always @(posedge clk or posedge reset_p)begin
                if(reset_p) state = SCAN0;
                else if(clk_8msec_n)state = next_state;
       end
       
       
       always @* begin   //와일드카드 모든 경우에 동작 (조합회로인데 앞에else if(clk_8msec)state = next_state로 인해 순서회로처럼 동작 )
                    case(state)
                            SCAN0 : begin
                                    if(row ==0) next_state = SCAN1;      // 버튼이 눌리면 
                                    else next_state = KEY_PROCESS;                  // 버튼이 안눌리면
                            end 
                            
                            SCAN1 : begin
                                    if(row ==0) next_state = SCAN2;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            SCAN2 : begin
                                    if(row ==0) next_state = SCAN3;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            SCAN3 : begin
                                    if(row ==0) next_state = SCAN0;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            KEY_PROCESS : begin
                                    if(row ==0) next_state = SCAN0;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            default : next_state = SCAN0;
                    endcase
        end
        
//        always @(posedge clk or posedge reset_p) begin
//                if(reset_p) begin
//                        key_value = 0;
//                        key_valid = 0;
//                        col =0;
//                end
//               else if (clk_8msec) begin
//                         if(row) begin
//                              key_valid =1;
//                              case({col, row})
//                                 8'b0001_0001 : key_value = 4'h0;
//                                 8'b0001_0010 : key_value = 4'h1;
//                                 8'b0001_0100 : key_value = 4'h2;
//                                 8'b0001_1000 : key_value = 4'h3;
//                                 8'b0010_0001 : key_value = 4'h4;
//                                 8'b0010_0010 : key_value = 4'h5;
//                                 8'b0010_0100 : key_value = 4'h6;
//                                 8'b0010_1000 : key_value = 4'h7;
//                                 8'b0100_0001 : key_value = 4'h8;
//                                 8'b0100_0010 : key_value = 4'h9;
//                                 8'b0100_0100 : key_value = 4'ha;
//                                 8'b0100_1000 : key_value = 4'hb;
//                                 8'b1000_0001 : key_value = 4'hc;
//                                 8'b1000_0010 : key_value = 4'hd;
//                                 8'b1000_0100 : key_value = 4'he;
//                                 8'b1000_1000 : key_value = 4'hf;      
//                             endcase  
//                       end   
//                end      
//                else begin
//                        case(state)
//                                4'b0001 : col = 4'b0001;
//                                4'b0010 : col = 4'b0010;
//                                4'b0100 : col = 4'b0100;
//                                4'b1000 : col = 4'b1000;
//                        endcase
//                end
//        end 
               
  always @(posedge clk or posedge reset_p) begin
                if(reset_p) begin
                        key_value = 0;
                        key_valid = 0;
                        col =0;
                end
                else if(clk_8msec_p)begin
                        case(state)
                                SCAN0 : begin col = 4'b0001; key_valid = 0; end
                                SCAN1 : begin col = 4'b0010; key_valid = 0; end
                                SCAN2 : begin col = 4'b0100; key_valid = 0; end
                                SCAN3 : begin col = 4'b1000; key_valid = 0; end
                                KEY_PROCESS : begin
                                            key_valid = 1;
                                                 case({col, row})
                                                 8'b0001_0001 : key_value = 4'h7;
                                                 8'b0001_0010 : key_value = 4'h4;
                                                 8'b0001_0100 : key_value = 4'h1;
                                                 8'b0001_1000 : key_value = 4'hc;
                                                 8'b0010_0001 : key_value = 4'h8;
                                                 8'b0010_0010 : key_value = 4'h5;
                                                 8'b0010_0100 : key_value = 4'h2;
                                                 8'b0010_1000 : key_value = 4'h0;
                                                 8'b0100_0001 : key_value = 4'h9;
                                                 8'b0100_0010 : key_value = 4'h6;
                                                 8'b0100_0100 : key_value = 4'h3;
                                                 8'b0100_1000 : key_value = 4'hf;
                                                 8'b1000_0001 : key_value = 4'ha;
                                                 8'b1000_0010 : key_value = 4'hb;
                                                 8'b1000_0100 : key_value = 4'he;
                                                 8'b1000_1000 : key_value = 4'hd;      
                                                 endcase  
                                end
                        endcase
               end
end

endmodule


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 키패드 240722,
module keypad_cntr_doorlock(
         input clk, reset_p,
         input [3:0] row,   // 행 
         output reg [3:0] col,  //column 열 
         output reg [3:0] key_value,
         output reg key_valid);
         
         parameter SCAN0                        = 5'b00001;
         parameter SCAN1                         = 5'b00010;
         parameter SCAN2                        = 5'b00100;
         parameter SCAN3                        = 5'b01000;
         parameter KEY_PROCESS       = 5'b10000;
         
         
         reg [19:0] clk_div;
         always @(posedge clk) clk_div = clk_div+1;
        
        wire clk_8msec_n, clk_8msec_p;
        edge_detector_p        ed       (.clk(clk), .reset_p(reset_p), .cp(clk_div[19]), .n_edge(clk_8msec_n),  .p_edge(clk_8msec_p));
        
        
       reg [4:0] state, next_state;
       
       always @(posedge clk or posedge reset_p)begin
                if(reset_p) state = SCAN0;
                else if(clk_8msec_n)state = next_state;
       end
       
       
       always @* begin   //와일드카드 모든 경우에 동작 (조합회로인데 앞에else if(clk_8msec)state = next_state로 인해 순서회로처럼 동작 )
                    case(state)
                            SCAN0 : begin
                                    if(row ==0) next_state = SCAN1;      // 버튼이 눌리면 
                                    else next_state = KEY_PROCESS;                  // 버튼이 안눌리면
                            end 
                            
                            SCAN1 : begin
                                    if(row ==0) next_state = SCAN2;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            SCAN2 : begin
                                    if(row ==0) next_state = SCAN3;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            SCAN3 : begin
                                    if(row ==0) next_state = SCAN0;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            KEY_PROCESS : begin
                                    if(row ==0) next_state = SCAN0;
                                    else next_state = KEY_PROCESS;
                            end 
                            
                            default : next_state = SCAN0;
                    endcase
        end
               
  always @(posedge clk or posedge reset_p) begin
                if(reset_p) begin
                        key_value = 0;
                        key_valid = 0;
                        col =0;
                end
                else if(clk_8msec_p)begin
                        case(state)
                                SCAN0 : begin col = 4'b0001; key_valid = 0; end
                                SCAN1 : begin col = 4'b0010; key_valid = 0; end
                                SCAN2 : begin col = 4'b0100; key_valid = 0; end
                                SCAN3 : begin col = 4'b1000; key_valid = 0; end
                                KEY_PROCESS : begin
                                            key_valid = 1;
                                                 case({col, row})
                                                 8'b0001_0001 : key_value = 4'h7;
                                                 8'b0001_0010 : key_value = 4'h4;
                                                 8'b0001_0100 : key_value = 4'h1;
                                                 8'b0001_1000 : key_value = 4'hc;
                                                 8'b0010_0001 : key_value = 4'h8;
                                                 8'b0010_0010 : key_value = 4'h5;
                                                 8'b0010_0100 : key_value = 4'h2;
                                                 8'b0010_1000 : key_value = 4'h0;
                                                 8'b0100_0001 : key_value = 4'h9;
                                                 8'b0100_0010 : key_value = 4'h6;
                                                 8'b0100_0100 : key_value = 4'h3;
                                                 8'b0100_1000 : key_value = 4'hf;
                                                 8'b1000_0001 : key_value = 4'ha;
                                                 8'b1000_0010 : key_value = 4'hb;
                                                 8'b1000_0100 : key_value = 4'he;
                                                 8'b1000_1000 : key_value = 4'hd;      
                                                 endcase  
                                end
                        endcase
               end
end

endmodule
