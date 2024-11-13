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

#include <stdio.h>       //ǥ�� ����� �Լ�
#include "platform.h"    // �÷��� �ʱ�ȭ �� ���� �Լ�
#include "xil_printf.h"  // xilinx�� UART ����� ���� printf �Լ�
#include "xparameters.h" // �ϵ���� ��ġ�� ��ũ�� ����
#include "xgpio.h"       // �Ϲ� ����� GPIO ��ġ�� �����ϱ� ���� �Լ��� ������ ����ü ����

#define BUTTON_ID XPAR_GPIO_0_DEVICE_ID  // xparameters.h���� ���ǵ� GPIO ��ġ ID�� �����Ͽ� ��ư ��ġ�� ID�� ���
#define BUTTON_CHANNEL 1				 // ��ư�� ����� GPIO ��ġ�� ä�� ��ȣ,,
//GPIO ��ġ�� ���� ���� ���� ���� �پ��� �ܺ� �Է� �Ǵ� ����� ó���� �� �ִµ�, �̷��� �ɵ��� �������� �׷�ȭ�� ���� "ä��"

int main()
{
    init_platform();    // �÷��� �ʱ�ȭ �Լ�, UART�� ���� �⺻ ��ġ�� ���� �ʱ�ȭ

    print("Start\n\r"); // UART�� Start �޼��� ���

    XGpio_Config *cfg_ptr;  // XGpio_Config ->GPIO ��ġ�� �����ϱ� ���� ����ü(Ư�� gpio��ġ�� ���� �ϵ���� ���� ���� ����, ���̽��ּҳ� ��ġID)/ ����ü�� ����Ű�� ������-> ������ ��ġ�� ����
    XGpio button_instance;  // GPIO ��ġ�� �����ϱ� ���� ����ü, GPIO ��ġ �ν��Ͻ�, �ش� ��ġ���� ��ȣ�ۿ��� ���� ���� ������ ���� ��� ����(�б� �Ǵ� ����)
    u16 data; //unsign0ed 16����, ��ư���� ���� �����͸� ����

    //gpio�ʱ�ȭ,  baseaddress �������� ����,,
    cfg_ptr =XGpio_LookupConfig(BUTTON_ID); // ������ ��ġ ID�� �ش��ϴ� GPIO ���� ����ü�� ������ -> ��ȯ�Ǵ� ����ü�� XGpio_config ����ü(��ġ�� ���̽� �ּҿ� ���� �ϵ���� �������� ���ԵǾ�����) / ���� GPIO ��ġ �߿��� Ư�� ��ġ�� �ĺ�
    XGpio_CfgInitialize(&button_instance,cfg_ptr,cfg_ptr ->BaseAddress); //GPIO ��ġ�� �����ϰ� �ʱ�ȭ, &button_instance: �ʱ�ȭ�� GPIO ��ġ�� �ν��Ͻ��Դϴ�. �� ����ü�� GPIO ��ġ���� ��� ��ȣ�ۿ��� ����մϴ�. cfg_ptr: XGpio_Config ����ü �����ͷ�, ��ġ�� �ϵ���� ���� ������ �����ϰ� �ֽ��ϴ�.cfg_ptr->BaseAddress: GPIO ��ġ�� �޸� ���� �ּҷ�, �ش� ��ġ�� ����� �� �ִ� �ּ��Դϴ�. /cfg_ptr�� ����� �ϵ���� ���� ����(��: ���̽� �ּ�)�� ������� button_instance�� �ʱ�ȭ�մϴ�.
    XGpio_SetDataDirection(&button_instance, BUTTON_CHANNEL, 0b1111); // ��ư ä���� ������ ������ ����, 4���� ���� �Է����� ���� / &button_instance: ������ ������ ������ ��� GPIO ��ġ �ν��Ͻ��Դϴ�.BUTTON_CHANNEL: ������ ������ ������ GPIO ä���Դϴ�. �� ���α׷������� ä�� 1�� ����ϰ� �ֽ��ϴ�.0b1111: �� ���� ��Ʈ�� ������ ������, �� ��Ʈ�� ä���� Ư�� ���� ��Ÿ���ϴ�. 1�� �ش� ���� �Է����� �����ϰ�, 0�� ������� �����մϴ�.

    while(1){
    	data = XGpio_DiscreteRead(&button_instance, BUTTON_CHANNEL); // ��ư ä�ο��� ���� ��ư�� ���¸� �о
    	xil_printf("button value: %x\n\r", data);
    	MB_Sleep(1000); //delay
    }

    cleanup_platform(); // �޸� ���� �� ��ġ ������
    return 0;
}
