`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


module remo_cuckoo(
    input clk, reset_p,
    input [3:0] btn,
    input rx,               // UART ���� ��
    output tx,
    output sda, scl,
    output [3:0] com,      
    output [7:0] seg_7);

wire [23:0] value;
wire [3:0] btn_value;
cuckoo_uart                 (.clk(clk), .reset_p(reset_p), .rx(rx), .tx(tx), .btn_value(btn_value));
watch_set                   (.clk(clk), .reset_p(reset_p),.btn(btn_value),.value(value),.com(com),.seg_7(seg_7));
i2c_textlcd_clock_data      (.clk(clk), .reset_p(reset_p), .value(value), .sda(sda), .scl(scl));



endmodule

//////////////////////////////////////////////////////////////////////////////////
module watch_set(
            input clk, reset_p,
            input [3:0] btn,
            output [23:0] value,
            output [3:0] com,      
            output [7:0] seg_7);  
            
            //ü�͸� ���� ����
            wire btn_mode, btn_sec, btn_min, btn_hour;
            button_cntr         btn0(.clk(clk), .reset_p(reset_p), .btn(btn[0]), .btn_pedge(btn_mode));
            button_cntr         btn1(.clk(clk), .reset_p(reset_p), .btn(btn[1]), .btn_pedge(btn_sec));
            button_cntr         btn2(.clk(clk), .reset_p(reset_p), .btn(btn[2]), .btn_pedge(btn_min));
            button_cntr         btn3(.clk(clk), .reset_p(reset_p), .btn(btn[3]), .btn_pedge(btn_hour));
                      
           wire set_watch;   // btn0�� ������ btn_mode�߻� -> btn_mode �߻��ϸ� ���
            T_flip_flop_p               t_mode( .clk(clk), .reset_p(reset_p) , .t(btn_mode), .q(set_watch));
            
            wire watch_load_en, set_load_en;
             edge_detector_n        ed_source       (.clk(clk), .reset_p(reset_p), .cp(set_watch),  .n_edge( watch_load_en), .p_edge(set_load_en));
            
            
            wire inc_sec, inc_min, inc_hour;    //������, �������� ������ ����
            assign inc_sec = set_watch ? btn_sec : clk_sec; // set_watch �� 1�϶�  //mux
            assign inc_min = set_watch ? btn_min : clk_min; //�� ���� //mux
            assign inc_hour = set_watch ? btn_hour : clk_hour; //�� ���� //mux
            
            wire clk_usec, clk_msec, clk_sec, clk_min, clk_hour;
            clock_div_100   usec_clock  (.clk(clk), .reset_p(reset_p),.clk_div_100(clk_usec)); //1us �����
            clock_div_1000  msec_clock  (.clk(clk), .reset_p(reset_p), .clk_source(clk_usec), .clk_div_1000(clk_msec));    //1ms �����
            clock_div_1000  sec_clock   (.clk(clk), .reset_p(reset_p), .clk_source(clk_msec), .clk_div_1000_nedge(clk_sec));         //1s ����� 
            clock_div_60    min_clock   (.clk(clk), .reset_p(reset_p), .clk_source(inc_sec), .clk_div_60_nedge(clk_min));   
            clock_div_60    hour_clock  (.clk(clk), .reset_p(reset_p), .clk_source(inc_min), .clk_div_60_nedge(clk_hour));   
            
            wire [3:0] watch_sec1, watch_sec10, watch_min1, watch_min10;
            wire [7:0] watch_hour, set_hour;
            wire [3:0] set_sec1, set_sec10, set_min1, set_min10;
            
             loadable_counter_bcd_60       sec_watch    ( .clk(clk),.reset_p(reset_p), .clk_time(clk_sec), .load_enable(watch_load_en), 
                                                                                         .load_bcd1(set_sec1), .load_bcd10(set_sec10), .bcd1(watch_sec1), .bcd10(watch_sec10));
                                                                   
             loadable_counter_bcd_60       min_watch   ( .clk(clk),.reset_p(reset_p), .clk_time(clk_min), .load_enable(watch_load_en), 
                                                                                          .load_bcd1(set_min1), .load_bcd10(set_min10), .bcd1(watch_min1), .bcd10(watch_min10));
                                                                                          
             loadable_counter_bcd_24        hout_watch          (.clk(clk), .reset_p(reset_p), .clk_time(clk_hour), .load_enable(watch_load_en),
                                                                                         .load_hour(set_hour),.hour(watch_hour));             
                                              
                                              
                                                                   
             loadable_counter_bcd_60       sec_set          ( .clk(clk),.reset_p(reset_p), .clk_time(btn_sec), .load_enable(set_load_en), 
                                                                                          .load_bcd1(watch_sec1), .load_bcd10(watch_sec10), .bcd1(set_sec1), .bcd10(set_sec10));                                                
            
             loadable_counter_bcd_60       min_set         ( .clk(clk),.reset_p(reset_p), .clk_time(btn_min), .load_enable(set_load_en), 
                                                                                         .load_bcd1(watch_min1), .load_bcd10(watch_min10), .bcd1(set_min1), .bcd10(set_min10)); 
            
             loadable_counter_bcd_24        hour_set         (.clk(clk), .reset_p(reset_p), .clk_time(btn_hour), .load_enable(set_load_en),
                                                                                         .load_hour(watch_hour),.hour(set_hour));
            
            
            wire [15:0] watch_hour_bcd, set_hour_bcd;
            bin_to_dec watchhour (.bin({4'b0, watch_hour}),  .bcd(watch_hour_bcd));
            bin_to_dec sethour   (.bin({4'b0, set_hour}),  .bcd(set_hour_bcd));
            
            //fnd ��� �ν��Ͻ� �̿�
            wire [23:0] watch_value, set_value;
            assign watch_value = {watch_hour_bcd[7:0], watch_min10, watch_min1, watch_sec10, watch_sec1};
            assign set_value = {set_hour_bcd[7:0], set_min10, set_min1, set_sec10, set_sec1};
            assign value = set_watch ? set_value : watch_value;
                        
            fnd_cntr fnd(.clk(clk), .reset_p(reset_p), .value(value), .com(com),  .seg_7(seg_7));            
            
endmodule
//////////////////////////////////////////////////////////////////////////////////
module i2c_textlcd_clock_data(
        input clk, reset_p,
        input [23:0] value,
        output sda, scl
);

        parameter IDLE = 6'b00_0001;
        parameter INIT = 6'b00_0010;  //�ʱ�ȭ�ϴ� ����, ó���� �ѹ��� �ʱ�ȭ�ϸ� ��
        parameter SEND_DATA = 6'b00_0100;
        parameter SEND_COMMAND = 6'b00_1000; //0823
        parameter SEND_STRING = 6'b01_0000;

        wire clk_usec;
        clock_div_100    usec_clock  (.clk(clk), .reset_p(reset_p), .clk_div_100_nedge(clk_usec)); 
        
        reg [21:0] count_usec;  
        reg count_usec_e;           //enable 1�̸� ī��Ʈ, 0�̸� ����, 1�� �����ϰų�, clear �ǰų�(2���� ����)
            always @(negedge clk or posedge reset_p) begin
                        if(reset_p) count_usec = 0;
                        else if(clk_usec && count_usec_e)count_usec = count_usec+1;
                        else if(!count_usec_e) count_usec =0;
             end         

        
        reg [7:0] send_buffer;
        reg rs, send;        
        wire busy;
        i2c_lcd_send_byte( .clk(clk), .reset_p(reset_p), .addr(7'h27),.send_buffer(send_buffer), .rs(rs), .send(send) ,.scl(scl), .sda(sda),.busy(busy), .led(led_debug)); 
        
        reg [5:0] state, next_state;
        always @(negedge clk or posedge reset_p) begin
                if(reset_p) state = IDLE;
                else state = next_state;                
        end
        
        reg init_flag;
        reg [4:0] cnt_data;
        reg [8*5-1:0] hello;
        reg [4:0] cnt_string;
        always @(posedge clk or posedge reset_p) begin
                if(reset_p) begin
                        next_state = IDLE;
                        cnt_data = 0;
                        count_usec_e =0;
                        init_flag =0;
                        rs =0;
                        send =0;
                        hello = "HELLO";
                        cnt_string = 0;
                        
                end
                else begin
                        case(state)
                                IDLE : begin
                                        if(init_flag) begin
                                            if(count_usec < 22'd1000) begin
                                               count_usec_e = 1;
                                            end
                                            else begin
                                                count_usec_e = 0;
                                                next_state = SEND_STRING;         
                                            end
                                        end
                                        else begin
                                                if(count_usec <= 22'd80_000)begin //15_000�� ��ٷ����ȴٰ� �����ͽ�Ʈ���� ��������
                                                        count_usec_e =1;
                                                end
                                                else begin  
                                                        next_state = INIT;
                                                        count_usec_e =0;
                                                end
                                        end
                                end
                                
                                INIT : begin
                                        if(busy) begin
                                                 send =0;
                                                 if(cnt_data >= 6)begin
                                                        next_state = IDLE;
                                                        init_flag =1;
                                                        cnt_data =0;
                                                        rs =0;
                                                 end
                                        end
                                        else if (!send)begin
                                                case(cnt_data)
                                                        0 :  send_buffer = 8'h33;
                                                        1 :  send_buffer = 8'h32;   //��������� �ʱ�ȭ,,?
                                                        2 :  send_buffer = 8'h28;
                                                        3 :  send_buffer = 8'h0f;
                                                        4 :  send_buffer = 8'h01;
                                                        5 :  send_buffer = 8'h06;
                                                endcase
                                                rs =0;
                                                send =1; // ������ �����ϱ⿡ 
                                                cnt_data = cnt_data + 1;
                                        end
                                end
                                
                                SEND_DATA: begin
                                        if(busy) begin
                                                next_state = IDLE;
                                                send =0;
                                                if(cnt_data >=9)cnt_data =0;
                                                else cnt_data = cnt_data+1;
                                        end
                                        else begin
                                                send_buffer = "0" + cnt_data; 
                                                rs =1; //�����͸� ���� ��쿡�� rs 1
                                                send =1;
                                        end                              
                                end
                                
                                SEND_COMMAND : begin
                                         if(busy) begin
                                                next_state = IDLE;
                                                send =0;
                                        end
                                        else begin
                                                send_buffer = 8'hc0;    // ���� ��ɾ� �Է�  8'h18 �ϰ�� -> ȭ���� �������� shift
                                                rs =0;  // ��ɾ� ���� ��쿡�� rs 0
                                                send =1;
                                        end   
                                end
                                
                                SEND_STRING: begin
                                         if(busy) begin
                                                 send =0;
                                                 if(cnt_string >= 9)begin
                                                        next_state = IDLE;
                                                        cnt_string =0;
                                                        rs =1;
                                                 end
                                        end
                                        else if (!send)begin
                                                case(cnt_string)
                                                        0 : begin send_buffer = 8'hc0;  rs =0; end
                                                        1 : begin send_buffer = "0" + value[23:20]; rs =1; end
                                                        2 : begin send_buffer = "0" + value[19:16]; rs =1; end
                                                        3 : begin send_buffer = " "; rs =1; end
                                                        4 : begin send_buffer = "0" + value[15:12]; rs =1; end
                                                        5 : begin send_buffer = "0" + value[11:8]; rs =1; end 
                                                        6 : begin send_buffer = " "; rs =1; end
                                                        7 : begin send_buffer = "0" + value[7:4]; rs =1; end
                                                        8 : begin send_buffer = "0" + value[3:0]; rs =1; end
                                                endcase
                                                send =1; // ������ �����ϱ⿡ 
                                                cnt_string = cnt_string + 1;
                                        end
                                end
                                
                        endcase
                end
        end
endmodule

// �ֻ��� TOP Module-----------------------------------------------------------------------------------------------------------------------
module cuckoo_uart(
    input clk,              // 100 MHz Ŭ��
    input reset_p,          // switch ���� ��ȣ
    input [3:0] btn,        // 4���� ��ư �Է�
    input rx,               // UART ���� ��
    output tx,              // UART �۽� ��
    output reg [3:0] btn_value // ���� ��������
);

    // ��� ���� �Ķ���� �� ��ȣ ����
    parameter CLK_FREQ = 100_000_000;      // Ŭ�� ���ļ� (100MHz)
    parameter BAUD_RATE = 9600;            // UART�� ���� �ӵ� (9600bps)
    parameter CLKS_PER_BIT = CLK_FREQ / BAUD_RATE;

    // �۽� ��ȣ
    reg [7:0] data_to_send;   // ������ ������
    reg send;                 // ������ ���� Ʈ����
    wire busy;                // ���� �� ����

    // ���� ��ȣ
    wire [7:0] received_data;  // ���� ������
    wire received_flag;        // ������ ���� �Ϸ� ��ȣ

    // ���� ����
    localparam IDLE = 3'b000;          // ��� ����
    localparam SEND_DATA = 3'b001;     // ������ ������ �۽� ����
    localparam WAIT_BUSY = 3'b010;     // �۽� �Ϸ� ��� ����

    // ���� �ӽ� �� UART �۽� ����
    reg [2:0] state;                    // ���� �ӽ� ����

    // �۽� ��� �ν��Ͻ�ȭ
    uart_tx #(
        .CLK_FREQ(CLK_FREQ),
        .BAUD_RATE(BAUD_RATE)
    ) uart_tx_inst (
        .clk(clk),
        .reset(reset_p),
        .data_in(data_to_send),
        .send(send),
        .tx(tx),
        .busy(busy)
    );

    // ���� ��� �ν��Ͻ�ȭ
    uart_rx uart_receiver (
        .clk(clk),
        .reset_p(reset_p),
        .rx(rx),
        .data_out(received_data),
        .received(received_flag)
    );

    // �ۼ��� ����
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            data_to_send <= 8'h00;
            send <= 1'b0;
            state <= IDLE;
            btn_value <= 4'b0000; // btn_value �ʱ�ȭ
        end
        else begin
            case (state)
                IDLE: begin
                    if (received_flag) begin
                        // ���ŵ� �����͸� btn_value�� ����
                        case (received_data)
                            8'h31: btn_value <= 4'b0001; // '1'�� �ش��ϴ� ASCII �ڵ�
                            8'h32: btn_value <= 4'b0010; // '2'�� �ش��ϴ� ASCII �ڵ�
                            8'h34: btn_value <= 4'b0100; // '4'�� �ش��ϴ� ASCII �ڵ�
                            8'h38: btn_value <= 4'b1000; // '8'�� �ش��ϴ� ASCII �ڵ�
                            default: btn_value <= 4'b0000; // �ٸ� ���� ��� �ʱ�ȭ
                        endcase
                        
                        // ���ŵ� ���� �۽��ϵ��� ����
                        data_to_send <= received_data;
                        send <= 1'b1;
                        state <= WAIT_BUSY;
                    end
                end
                WAIT_BUSY: begin
                    if (!busy) begin
                        send <= 1'b0;
                        state <= IDLE;
                    end
                end
                default: state <= IDLE;
            endcase
        end
    end
endmodule

//----------------------------------------------------------------------------------------------------------------------------------------
// UART �۽ű�
module uart_tx(
    input clk,             // FPGA Ŭ��
    input reset,           // ���� ��ȣ
    input [7:0] data_in,   // ������ ������
    input send,            // ���� Ʈ����
    output reg tx,         // UART ���� ��
    output reg busy        // ���� �� ����
);
    parameter CLK_FREQ = 100_000_000; // Ŭ�� ���ļ� (100MHz)
    parameter BAUD_RATE = 9600;       // UART ���� �ӵ�
    parameter BIT_PERIOD = CLK_FREQ / BAUD_RATE; // �� ��Ʈ�� ���� �ֱ�

    reg [3:0] bit_index;    // ���� ���� ���� ��Ʈ�� �ε���
    reg [15:0] baud_count;  // ��Ʈ ������ ���� ī����
    reg [9:0] tx_shift_reg; // �����Ϳ� ��ŸƮ, ���� ��Ʈ�� ������ 10��Ʈ ��������

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx <= 1;         // �⺻ ����
            busy <= 0;       // ���� ���� ���� �ƴ�
            baud_count <= 0;
            bit_index <= 0;
            tx_shift_reg <= 10'b1111111111; // �⺻ ����
        end else if (send && !busy) begin
            tx_shift_reg <= {1'b1, data_in, 1'b0}; // �����Ϳ� ��ŸƮ ��Ʈ, ���� ��Ʈ
            busy <= 1;
            bit_index <= 0; // ��Ʈ �ε��� �ʱ�ȭ
        end else if (busy) begin
            if (baud_count < BIT_PERIOD - 1) begin
                baud_count <= baud_count + 1;
            end else begin
                baud_count <= 0;
                tx <= tx_shift_reg[0];
                tx_shift_reg <= {1'b1, tx_shift_reg[9:1]}; // ��Ʈ ����Ʈ
                if (bit_index < 9) begin
                    bit_index <= bit_index + 1;
                end else begin
                    busy <= 0; // ���� �Ϸ�
                    bit_index <= 0;
                end
            end
        end
    end
endmodule

//----------------------------------------------------------------------------------------------------------------------------------------

module uart_rx (
    input clk, reset_p,
    input rx,                 // UART ���� �� (HC-06�� TX �ɿ� ����)
    output reg [7:0] data_out, // ���ŵ� ������
    output reg received       // ������ ���� �Ϸ� ��ȣ
);

    parameter CLKS_PER_BIT = 10417; // 100MHz / 9600 baud rate
    parameter CLKS_PER_HALF_BIT = CLKS_PER_BIT / 2;

    reg [3:0] state;
    reg [15:0] clock_count;
    reg [2:0] bit_index;
    reg [7:0] rx_data;

    parameter IDLE = 4'b0000;
    parameter START_BIT = 4'b0001;
    parameter DATA_BITS = 4'b0010;
    parameter STOP_BIT = 4'b0011;
    parameter CLEANUP = 4'b0100;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            state <= IDLE;
            received <= 1'b0;
            data_out <= 8'h00;
            clock_count <= 0;
            bit_index <= 0;
        end
            else begin
                case (state)
                    IDLE: begin
                        received <= 1'b0;
                        clock_count <= 0;
                        bit_index <= 0;
                        
                        if (rx == 1'b0) begin
                            state <= START_BIT;
                        end
                    end
                    START_BIT: begin
                        if (clock_count == CLKS_PER_HALF_BIT) begin
                            if (rx == 1'b0) begin
                                clock_count <= 0;
                                state <= DATA_BITS;
                            end
                                else begin
                                    state <= IDLE;
                                end
                        end
                            else begin
                                clock_count <= clock_count + 1;
                            end
                    end
                    DATA_BITS: begin
                        if (clock_count < CLKS_PER_BIT - 1) begin
                            clock_count <= clock_count + 1;
                        end
                            else begin
                                clock_count <= 0;
                                rx_data[bit_index] <= rx;
                                if (bit_index < 7) begin
                                    bit_index <= bit_index + 1;
                                end
                                    else begin
                                        bit_index <= 0;
                                        state <= STOP_BIT;
                                    end
                            end
                    end
                    STOP_BIT: begin
                        if (clock_count < CLKS_PER_BIT - 1) begin
                            clock_count <= clock_count + 1;
                        end
                            else begin
                                received <= 1'b1;
                                data_out <= rx_data;
                                state <= CLEANUP;
                            end
                    end
                    CLEANUP: begin
                        state <= IDLE;
                        received <= 1'b0;
                    end
                    default: state <= IDLE;
                endcase
            end
    end
endmodule