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

#define PWM_ADDR XPAR_MYIP_PWM_0_S00_AXI_BASEADDR
#define KEYPAD_ADDR XPAR_MYIP_KEYPAD_0_S00_AXI_BASEADDR



int main()
{
    init_platform();

    print("Hello World\n\r");

    u32 duty =15;
    u32 pwm =0;
    u32 key_value =0;

    volatile unsigned int *pwm_instance = (volatile unsigned int *)PWM_ADDR;
    volatile unsigned int *keypad_instance = (volatile unsigned int *)KEYPAD_ADDR;

    while (1) {
    	key_value = keypad_instance[0];
    	duty = pwm_instance[0];
    	pwm = pwm_instance[1];

    	if(keypad_instance[0]){
    		duty = keypad_instance[0];
    	}

    	pwm_instance[0] = duty;
//    	duty++;
//
//    	if (duty > 75)
//    	{
//			duty = 15;
//    	}


		xil_printf("key_value : %d  \n\r   duty : %d %d \n\r   pwm : %d \n\r ", keypad_instance[0], duty, pwm_instance[0], pwm_instance[1]);
		MB_Sleep(1000);


    }
    cleanup_platform();
    return 0;
}
