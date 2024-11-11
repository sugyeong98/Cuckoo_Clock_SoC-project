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
#include "xintc.h"
#include "xil_exception.h"   //���ͷ�Ʈ�� ����ϱ� ���� ����ó���� �� �� �ִ� �������
#include "xuartlite.h"

#define BUTTON_ID XPAR_GPIO_0_DEVICE_ID
#define BUTTON_CHANNEL 1
#define BUTTON_INT_VEC_ID  XPAR_INTC_0_GPIO_0_VEC_ID  //GPIO�� ���ͷ�Ʈ ���� ���̵�

#define INTC_ID XPAR_INTC_0_DEVICE_ID

#define UART_ID XPAR_UARTLITE_0_DEVICE_ID
#define UART_VEC_ID XPAR_INTC_0_UARTLITE_0_VEC_ID


void BTN_ISR(void *CallBackRef);  //��ư ���ͷ�Ʈ�� ���õ� �Լ�
void SendHandler(void *CallBackRef, unsigned int EvenData);  //uart ���ͷ�Ʈ�� ���õ� �Լ�, ����
void RecvHandler(void *CallBackRef, unsigned int EvenData);  //uart ���ͷ�Ʈ�� ���õ� �Լ�, �۽�

XGpio btn_instance;
XIntc intc_instance;
XUartLite uart_instance;

int main()
{
    init_platform();

    print("start\n\r");

    XGpio_Config *cfg_ptr;
    u32 btn_data = 0, btn_old_data = 0;

    cfg_ptr = XGpio_LookupConfig(BUTTON_ID);  //��ư �ʱ�ȭ
    XGpio_CfgInitialize(&btn_instance, cfg_ptr, cfg_ptr -> BaseAddress); //��ư �ʱ�ȭ

    //   XGpio_Initialize(&btn_instance, BUTTON_ID); // �̰͵� ��ư �ʱ�ȭ�ϴ� ��� �� �ϳ�

    XGpio_SetDataDirection(&btn_instance, BUTTON_CHANNEL, 0b1111);  //�Է����� ����

    XUartLite_Initialize(&uart_instance, UART_ID);

    XIntc_Initialize(&intc_instance, INTC_ID); //id�� �̿��ؼ� ���ͷ�Ʈ �Լ� �ʱ�ȭ
    XIntc_Connect(&intc_instance, BUTTON_INT_VEC_ID, (XInterruptHandler)BTN_ISR, (void *) &btn_instance);  //���Ϳ� isr���� -> ��ư
    XIntc_Connect(&intc_instance, UART_VEC_ID, (XInterruptHandler)XUartLite_InterruptHandler, (void *)&uart_instance);  // ���Ϳ� isr ���� -> uart


    XIntc_Enable(&intc_instance, BUTTON_INT_VEC_ID);  //���ͷ�Ʈ ����ũ�� set(1) �ִ� ����, ���� ���ͷ�Ʈ enable
    XIntc_Enable(&intc_instance, UART_VEC_ID);
    XIntc_Start(&intc_instance, XIN_REAL_MODE);  //�������ͷ�Ʈ Ȱ��ȭ,,, ����

    XGpio_InterruptEnable(&btn_instance, 0b1111); //��ư(����) ���ͷ�Ʈ Ȱ��ȭ
    XGpio_InterruptGlobalEnable(&btn_instance); //gpio�� �������ͷ�Ʈ enable

    //microblaze�� exception�� �ʱ�ȭ �� Ȱ��ȭ ������ ���ľ���
    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &intc_instance);
    Xil_ExceptionEnable();

    // urat ���ͷ�Ʈ
    XUartLite_SetRecvHandler(&uart_instance, RecvHandler, &uart_instance);
    XUartLite_SetSendHandler(&uart_instance, SendHandler, &uart_instance);
    XUartLite_EnableInterrupt(&uart_instance);



    while(1)
    {
//    	btn_old_data = btn_data;
//    	btn_data = XGpio_DiscreteRead(&btn_instance, BUTTON_CHANNEL);
//    	if(btn_data != btn_old_data)
//    	{
//    		xil_printf("button %d pushed \n\r", btn_data);
//    	}

//    	print("Hello World\n\r");
//    	MB_Sleep(1000);
    }
    cleanup_platform();
    return 0;
}



void BTN_ISR(void *CallBackRef)
{
	XGpio *Gpio_ptr = (XGpio *)CallBackRef;
//	print("!!!!button interrupt!!!!\n\r");
//	if(XGpio_DiscreteRead(Gpio_ptr, BUTTON_CHANNEL))
//	{
//		print("button pushed\n\r");
//	}

	if(XGpio_DiscreteRead(Gpio_ptr, BUTTON_CHANNEL) & 0b0001)
		{
			print("up button pushed\n\r");
		}

	if(XGpio_DiscreteRead(Gpio_ptr, BUTTON_CHANNEL) & 0b0010)
		{
			print("left button pushed\n\r");
		}

	XGpio_InterruptClear(Gpio_ptr, 0b1111);

	return 0;
}


void SendHandler(void *CallBackRef, unsigned int EvenData)  //uart ���ͷ�Ʈ�� ���õ� �Լ�, ����
{
	return 0;
}


void RecvHandler(void *CallBackRef, unsigned int EvenData)  //uart ���ͷ�Ʈ�� ���õ� �Լ�, �۽�
{
	u8 rxData;
	XUartLite_Recv(&uart_instance, &rxData, 1);
	xil_printf("recv %c\n\r", rxData);
	return 0;

}


