/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xiic.h"
#include "sleep.h"
#include "xuartlite.h"
#include "xgpio.h"

#define BUZZ_ID XPAR_GPIO_0_DEVICE_ID
#define BUZZ_CHANNEL 1

#define IIC_ID 					XPAR_IIC_0_DEVICE_ID
#define UARTLITE_DEVICE_ID 		XPAR_UARTLITE_0_DEVICE_ID

#define CLOCK_ADDR 				XPAR_MYIP_CLOCK_TIMER_0_S00_AXI_BASEADDR
#define BLUETOOTH_BASE_ADDR 	XPAR_MYIP_BLUETOOTH_0_S00_AXI_BASEADDR
#define PWM_ADDR				XPAR_MYIP_PWM_0_S00_AXI_BASEADDR
#define UART_ADDR				XPAR_UARTLITE_0_BASEADDR


XIic iic_instance;
XUartLite UartLite;

volatile unsigned int *clock_instance = (volatile unsigned int)CLOCK_ADDR;
volatile unsigned int *bluetooth_instance = (volatile unsigned int)BLUETOOTH_BASE_ADDR;
volatile unsigned int *pwm_instance = (volatile unsigned int *)PWM_ADDR;

u32 value = 0, old_value = 0;
u8 rx_data = 0;
u8 tx_data = 0;
u8 btn_value = 0;
u8 duty = 15;
u8 pwm = 0;
u8 buzz = 0;
u8 set_watch = 0;
u8 bluetooth_toggle_signal = 0;  //

// I2C�� ������ ���� �Լ�
void I2C_Write(u8 data) {
    XIic_Send(iic_instance.BaseAddress, 0x27, &data, 1, XIIC_STOP);
    usleep(500);  // ������ �߰�
}

// LCD ���ɾ� ����
void LCD_Send_Command(u8 command) {
    u8 upper_nibble = command & 0xF0;
    u8 lower_nibble = (command << 4) & 0xF0;

    I2C_Write(upper_nibble | 0x0C);  // ���� 4��Ʈ ����
    I2C_Write(upper_nibble | 0x08);  // Enable ��Ʈ Ŭ����
    I2C_Write(lower_nibble | 0x0C);  // ���� 4��Ʈ ����
    I2C_Write(lower_nibble | 0x08);  // Enable ��Ʈ Ŭ����
}

// LCD�� ������ ����
void LCD_Send_Data(u8 data) {
    u8 upper_nibble = data & 0xF0;
    u8 lower_nibble = (data << 4) & 0xF0;

    I2C_Write(upper_nibble | 0x0D);  // ���� 4��Ʈ ���� + ������ ���
    I2C_Write(upper_nibble | 0x09);  // Enable ��Ʈ Ŭ����
    I2C_Write(lower_nibble | 0x0D);  // ���� 4��Ʈ ���� + ������ ���
    I2C_Write(lower_nibble | 0x09);  // Enable ��Ʈ Ŭ����
}

// LCD �ʱ�ȭ
void LCD_Init() {
    usleep(50000);  // �ʱ�ȭ ����

    LCD_Send_Command(0x03);  // LCD �ʱ�ȭ ���ɾ�
    usleep(200);
    LCD_Send_Command(0x03);  // �ʱ�ȭ �ݺ�
    usleep(50);
    LCD_Send_Command(0x03);  // �ʱ�ȭ �Ϸ�
    usleep(50);

    LCD_Send_Command(0x02);  // 4��Ʈ ���� ��ȯ
    LCD_Send_Command(0x28);  // 2 ����, 5x8 ��Ʈ ����

    LCD_Send_Command(0x08);  // ���÷��� ��
    LCD_Send_Command(0x01);  // ȭ�� �����
    usleep(2000);            // ȭ�� ����� ó�� �ð�
    LCD_Send_Command(0x0C);  // ���÷��� ��, Ŀ�� ��
    LCD_Send_Command(0x06);  // ���� �Է� �� Ŀ�� ������ �̵�
}

// LCD�� ���ڿ� ���
void LCD_Write_String(char* str) {
    while (*str) {
        LCD_Send_Data(*str++);
    }
}

// LCD�� Ư�� ��ġ�� �̵�
void LCD_GotoXY(uint8_t row, uint8_t col)
{
    uint8_t address;

    if (row == 0) {
        address = 0x80 + col;  // ù ��° �� �ּ�
    } else {
        address = 0xC0 + col;  // �� ��° �� �ּ�
    }

    LCD_Send_Command(address);
}



int main() {
    init_platform();
    xil_printf("Start\n\r");

    XIic_Initialize(&iic_instance, IIC_ID);  // I2C �ʱ�ȭ

    // UARTLite �ʱ�ȭ
    XUartLite_Initialize(&UartLite, UARTLITE_DEVICE_ID);

    //gpio �ʱ�ȭ
    XGpio_Config *cfg_ptr;
	XGpio buzz_instance;

	cfg_ptr = XGpio_LookupConfig(BUZZ_ID);
	XGpio_CfgInitialize(&buzz_instance, cfg_ptr, cfg_ptr -> BaseAddress);
	XGpio_SetDataDirection(&buzz_instance, BUZZ_CHANNEL, 0);


    LCD_Init();  // LCD �ʱ�ȭ
    LCD_Write_String("  CUCKOO CLOCK  ");
    LCD_GotoXY(1,0);
    int btn_value_old;
    value = clock_instance[1];
    LCD_GotoXY(1,4);

	LCD_Write_String(":");
	LCD_Send_Data(((value >> 12) & 0x0F) +'0');
	LCD_Send_Data(((value >> 8) & 0x0F) +'0');
	LCD_Write_String(":");
	LCD_Send_Data(((value >> 4) & 0x0F) +'0');
	LCD_Send_Data((value & 0x0F) +'0');

    while (1) {
    	old_value = value;
    	value = clock_instance[1];
    	set_watch = clock_instance[2];


    	if(old_value != value){

    		duty = pwm_instance[0];
			pwm = pwm_instance[1];

			if((value & 0xFFFF) == 0x0000){
				duty = 45;
				XGpio_DiscreteWrite(&buzz_instance, BUZZ_CHANNEL, 0x1);
			}
			else{
				duty = 15;
				XGpio_DiscreteWrite(&buzz_instance, BUZZ_CHANNEL, 0x0);
			}

			pwm_instance[0] = duty;


    		LCD_GotoXY(1,4);
    		LCD_Send_Data(((value >> 16) & 0xFF)/ 16 % 16 +'0');
			LCD_Send_Data(((value >> 16) & 0xFF) % 16 +'0');
			LCD_Write_String(":");
			LCD_Send_Data(((value >> 12) & 0x0F) +'0');
			LCD_Send_Data(((value >> 8) & 0x0F) +'0');
			LCD_Write_String(":");
			LCD_Send_Data(((value >> 4) & 0x0F) +'0');
			LCD_Send_Data((value & 0x0F) +'0');
    	}

    	btn_value = bluetooth_instance[2];
    	bluetooth_toggle_signal = bluetooth_instance[3];

    	clock_instance[0] = btn_value;  //btn (input)
		clock_instance[2] = set_watch;
    	MB_Sleep(1);


    	if(btn_value || bluetooth_toggle_signal){
    		value = clock_instance[1];
    		clock_instance[0] = btn_value;  //btn (input)
    		clock_instance[2] = set_watch;

    		if(bluetooth_toggle_signal)
			{
				set_watch = !set_watch;
				xil_printf("set_watch : %d \n\r", set_watch);
			}
    		 //LCD�� �ð� ǥ��
			LCD_GotoXY(1,4);
			LCD_Send_Data(((value >> 16) & 0xFF)/ 16 % 16 +'0');
			LCD_Send_Data(((value >> 16) & 0xFF) % 16 +'0');
			LCD_Write_String(":");
			LCD_Send_Data(((value >> 12) & 0x0F) +'0');
			LCD_Send_Data(((value >> 8) & 0x0F) +'0');
			LCD_Write_String(":");
			LCD_Send_Data(((value >> 4) & 0x0F) +'0');
			LCD_Send_Data((value & 0x0F) +'0');
			xil_printf("btn_value : %d, clock_instance[0] : %d, set_watch : %d, clock_instance[2] : %d, bluetooth_instance[3] : %d \n\r", btn_value, clock_instance[0], set_watch, clock_instance[2], bluetooth_instance[3]);
		}

    	btn_value = 0;
    	bluetooth_toggle_signal = 0;
    	clock_instance[0] = btn_value;  //btn (input)
    	clock_instance[2] = set_watch;

    }

    cleanup_platform();
    return 0;
}