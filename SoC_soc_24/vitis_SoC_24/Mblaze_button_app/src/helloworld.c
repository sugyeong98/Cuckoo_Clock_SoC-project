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

#include <stdio.h>       //표준 입출력 함수
#include "platform.h"    // 플랫폼 초기화 및 정리 함수
#include "xil_printf.h"  // xilinx의 UART 출력을 위한 printf 함수
#include "xparameters.h" // 하드웨어 장치의 매크로 정의
#include "xgpio.h"       // 일반 입출력 GPIO 장치를 제어하기 위함 함수와 데이터 구조체 정의

#define BUTTON_ID XPAR_GPIO_0_DEVICE_ID  // xparameters.h에서 정의된 GPIO 장치 ID를 참조하여 버튼 장치의 ID로 사용
#define BUTTON_CHANNEL 1				 // 버튼이 연결된 GPIO 장치의 채널 번호,,
//GPIO 장치는 여러 개의 핀을 통해 다양한 외부 입력 또는 출력을 처리할 수 있는데, 이러한 핀들을 논리적으로 그룹화한 것이 "채널"

int main()
{
    init_platform();    // 플랫폼 초기화 함수, UART와 같은 기본 장치의 설정 초기화

    print("Start\n\r"); // UART로 Start 메세지 출력

    XGpio_Config *cfg_ptr;  // XGpio_Config ->GPIO 장치를 설정하기 위한 구조체(특정 gpio장치에 대한 하드웨어 구성 정보 포함, 베이스주소나 장치ID)/ 구조체를 가리키는 포인터-> 설정된 장치에 접근
    XGpio button_instance;  // GPIO 장치를 제어하기 위한 구조체, GPIO 장치 인스턴스, 해당 장치와의 상호작용을 위한 상태 정보나 제어 기능 포함(읽기 또는 쓰기)
    u16 data; //unsign0ed 16진수, 버튼에서 읽은 데이터를 저장

    //gpio초기화,  baseaddress 가져오는 과정,,
    cfg_ptr =XGpio_LookupConfig(BUTTON_ID); // 지정된 장치 ID에 해당하는 GPIO 설정 구조체를 가져옴 -> 반환되는 구조체는 XGpio_config 구조체(장치의 베이스 주소와 같은 하드웨어 설정정보 포함되어있음) / 여러 GPIO 장치 중에서 특정 장치를 식별
    XGpio_CfgInitialize(&button_instance,cfg_ptr,cfg_ptr ->BaseAddress); //GPIO 장치를 설정하고 초기화, &button_instance: 초기화할 GPIO 장치의 인스턴스입니다. 이 구조체는 GPIO 장치와의 모든 상호작용을 담당합니다. cfg_ptr: XGpio_Config 구조체 포인터로, 장치의 하드웨어 설정 정보를 포함하고 있습니다.cfg_ptr->BaseAddress: GPIO 장치의 메모리 매핑 주소로, 해당 장치와 통신할 수 있는 주소입니다. /cfg_ptr에 저장된 하드웨어 설정 정보(예: 베이스 주소)를 기반으로 button_instance를 초기화합니다.
    XGpio_SetDataDirection(&button_instance, BUTTON_CHANNEL, 0b1111); // 버튼 채널의 데이터 방향을 설정, 4개의 핀을 입력으로 설정 / &button_instance: 데이터 방향을 설정할 대상 GPIO 장치 인스턴스입니다.BUTTON_CHANNEL: 데이터 방향을 설정할 GPIO 채널입니다. 이 프로그램에서는 채널 1을 사용하고 있습니다.0b1111: 네 개의 비트로 구성된 값으로, 각 비트는 채널의 특정 핀을 나타냅니다. 1은 해당 핀을 입력으로 설정하고, 0은 출력으로 설정합니다.

    while(1){
    	data = XGpio_DiscreteRead(&button_instance, BUTTON_CHANNEL); // 버튼 채널에서 현재 버튼의 상태를 읽어봄
    	xil_printf("button value: %x\n\r", data);
    	MB_Sleep(1000); //delay
    }

    cleanup_platform(); // 메모리 정리 및 장치 조종료
    return 0;
}
