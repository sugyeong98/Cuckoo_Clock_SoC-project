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
#include "xgpio.h"

#define FND_ID XPAR_AXI_GPIO_FND_DEVICE_ID
#define COM_CHANNEL 1
#define SEG_CHANNEL 2
#define SWITCH_ID XPAR_AXI_GPIO_SWITCH_DEVICE_ID  // ��� �����ϴϱ� ª�� �ٽ� ����
#define SWITCH_CHANNEL 1

//��Ʈ������
u32 fnd[16] = {
        0xc0, 0xf9, 0xa4, 0xb0, 0x99, 0x92, 0x82, 0xd8,
        0x80, 0x98, 0x88, 0x83, 0xc6, 0xa1, 0x86, 0x8e};

int main()
{
    init_platform();

    print("Start\n\r");

    XGpio_Config *cfg_ptr;
	XGpio fnd_instance, switch_instance;
	u16 data =7891;
	//u16 temp = 0b1110;
	u16 div =1;

	cfg_ptr =XGpio_LookupConfig(FND_ID);
	XGpio_CfgInitialize(&fnd_instance,cfg_ptr,cfg_ptr ->BaseAddress);
	XGpio_SetDataDirection(&fnd_instance, COM_CHANNEL, 0);  //0���
	XGpio_SetDataDirection(&fnd_instance, SEG_CHANNEL, 0);

	cfg_ptr =XGpio_LookupConfig(SWITCH_ID);
	XGpio_CfgInitialize(&switch_instance,cfg_ptr,cfg_ptr ->BaseAddress);
	XGpio_SetDataDirection(&switch_instance, SWITCH_CHANNEL, 0xffff);  //1�Է�

    while(1){
    	u32 switch_val = XGpio_DiscreteRead(&switch_instance, SWITCH_CHANNEL);
    	data = switch_val & 0xFFFF;

    	/*XGpio_DiscreteWrite(&fnd_instance, COM_CHANNEL, 0b1110);
    	XGpio_DiscreteWrite(&fnd_instance, SEG_CHANNEL, fnd[data%10]);
    	MB_Sleep(1);

    	XGpio_DiscreteWrite(&fnd_instance, COM_CHANNEL, 0b1101);
		XGpio_DiscreteWrite(&fnd_instance, SEG_CHANNEL, fnd[data/10%10]);
		MB_Sleep(1);

		XGpio_DiscreteWrite(&fnd_instance, COM_CHANNEL, 0b1011);
		XGpio_DiscreteWrite(&fnd_instance, SEG_CHANNEL, fnd[data/100%10]);
		MB_Sleep(1);

		XGpio_DiscreteWrite(&fnd_instance, COM_CHANNEL, 0b0111);
		XGpio_DiscreteWrite(&fnd_instance, SEG_CHANNEL, fnd[data/1000%10]);
		MB_Sleep(1);*/

		//temp=0b1110;
    	div =1;
		for(int i=0;i<4;i++)
		{
			XGpio_DiscreteWrite(&fnd_instance, COM_CHANNEL, ~(1<<i)); //temp
			XGpio_DiscreteWrite(&fnd_instance, SEG_CHANNEL, fnd[data/div%10]);
			MB_Sleep(1);
			div = div * 10; //div *=10;
			//temp = (temp <<1) +1;
		}

    }

    cleanup_platform();
    return 0;
}
