/**************************************************************************//**
 * @file main_stk.c
 * @brief USB Device Example
 * @author Silicon Labs
 * @version 1.02
 ******************************************************************************
 * @section License
 * <b>(C) Copyright 2014 Silicon Labs, http://www.silabs.com</b>
 *******************************************************************************
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 *
 * DISCLAIMER OF WARRANTY/LIMITATION OF REMEDIES: Silicon Labs has no
 * obligation to support this Software. Silicon Labs is providing the
 * Software "AS IS", with no express or implied warranties of any kind,
 * including, but not limited to, any implied warranties of merchantability
 * or fitness for any particular purpose or warranties against infringement
 * of any proprietary rights of a third party.
 *
 * Silicon Labs will not be liable for any consequential, incidental, or
 * special damages, or any other relief, or for any claim by any third party,
 * arising from your use of this Software.
 *
 ******************************************************************************/
#include <string.h>
#include <stdio.h>
#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"
#include "em_usb.h"
#include "em_gpio.h"
#include "em_emu.h"
#include "callbacks.h"
#include "descriptors.h"
#include "retargetserial.h"
#include "segmentlcd.h"
#include "em_usbtypes.h"

/*orismos pinakwn word alligned*/
#define BUFFERSIZE 2
EFM32_ALIGN(4);
STATIC_UBUF( receiveBuffer , BUFFERSIZE*257);
EFM32_ALIGN(4);
STATIC_UBUF( arr, BUFFERSIZE*260);

/*dilwsi metablitwn*/
static uint16_t tempvalue;
static uint16_t co2_value1;
static uint16_t co2_value2;
static uint16_t humvalue;
static uint16_t bridgevalues[256];
uint16_t bridgefreq;
uint16_t dacvalues[256];

/*synarthsh gia apostolh dedomenwn mesw tou usb*/
void Send_Data(uint16_t tempvalue, uint16_t co2_value1, uint16_t co2_value2, uint16_t humvalue, uint16_t bridgevalues[256]){
	uint16_t y;
	arr[0]=(tempvalue&0xff);
	arr[1]=(tempvalue>>8);
	arr[2]=(co2_value1&0xff);
	arr[3]=(co2_value1>>8);
	arr[4]=(co2_value2&0xff);
	arr[5]=(co2_value2>>8);
	arr[6]=(humvalue&0xff);
	arr[7]=(humvalue>>8);
	int c=0;
	for(int i = 8 ; i < 520 ; i = i+2){
		y=(uint16_t)bridgevalues[c];
		arr[i]=(y&0xff);
		arr[i+1]=(y>>8);
		c++;
	}
	while(USBD_Write(EP_IN, arr, sizeof(arr), dataSentCallback)!=USB_STATUS_OK);
	return;
}

/*synarthsh gia lhpsh dedomenwn apo to usb*/
int Receive_Data(uint16_t bridgefreqq, uint16_t dacvalues[256]){
	char buffer[2];
	int k=0;
	if(USBD_Read(EP_OUT, receiveBuffer, sizeof(receiveBuffer), NULL)==USB_STATUS_OK){
		buffer[0] = receiveBuffer[0];
		buffer[1] = receiveBuffer[1];
		bridgefreqq = *((uint16_t*)buffer);
		for(int j=2;j<4*257; j=j+2){
			buffer[0] = receiveBuffer[j];
			buffer[1] = receiveBuffer[j+1];
			dacvalues[k]= *((uint16_t*)buffer);
			k++;
		}
	}
	return bridgefreqq;
}

int main(void)
{
  /* Chip errata */
  CHIP_Init();
  
  /* Enable HFXO */
  CMU_ClockSelectSet(cmuClock_HF, cmuSelect_HFXO);
    
  /* Enable deboug output over UART */
  RETARGET_SerialInit();                     
  RETARGET_SerialCrLf(1); 
  
  /* Enable the segment LCD */
  SegmentLCD_Init(false);
  SegmentLCD_Write("USB");
  
  printf("\nStarting USB Device...\n");
  
  
  /* Start USB stack. Callback routines in callbacks.c will be called
   * when connected to a host.  */
  USBD_Init(&initstruct);

  /*initialize metablitwn gia test*/
  tempvalue=25;
  co2_value1=19;
  co2_value2=15;
  humvalue=80;
  for(int i = 0; i < 256; i++){
 		  	  bridgevalues[i]=(uint16_t)i;
 		    }

  while(1){
	  /*lhpsh dedomenwn*/
	  bridgefreq = Receive_Data(bridgefreq,dacvalues);

	  /*apostolh dedomenwn*/
	  Send_Data(tempvalue,co2_value1,co2_value2,humvalue,bridgevalues);

	  /*typwma stin othoni gia test*/
	  SegmentLCD_Number(bridgefreq);

	  /*metaboli metablitwn gia test*/
	  tempvalue++;
	  co2_value1++;
	  co2_value2++;
	  humvalue++;
	  for(int i = 0; i < 256; i++){bridgevalues[i]++;}
  }
  while(1)
  {
    if ( USBD_SafeToEnterEM2() )
    {
      /* Enter EM2 when in suspend or disconnected */
      EMU_EnterEM2(true);
    } 
    else
    {
      /* When USB is active we can sleep in EM1. */
      EMU_EnterEM1();
    }
  }
}
