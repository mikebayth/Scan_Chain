/**
 * \file
 *
 * \brief User Interface
 *
 * Copyright (c) 2011 - 2012 Atmel Corporation. All rights reserved.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 *
 * 3. The name of Atmel may not be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * 4. This software may only be redistributed and used in connection with an
 *    Atmel microcontroller product.
 *
 * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
 * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * \asf_license_stop
 *
 */

#include <asf.h>
#include "ui.h"
#include <string.h>

uint8_t ui_hid_report[UDI_HID_REPORT_OUT_SIZE];
uint16_t count = 0, length = 0;
char state[3] = "IDL";
int done = 0;
uint8_t data[UDI_HID_REPORT_OUT_SIZE];

void ui_init(void)
{
	ioport_set_pin_dir(TMS, IOPORT_DIR_OUTPUT);
	ioport_set_pin_dir(TRST, IOPORT_DIR_OUTPUT);
	ioport_set_pin_dir(TDI, IOPORT_DIR_OUTPUT);
	ioport_set_pin_dir(TCLK, IOPORT_DIR_OUTPUT);
	ioport_set_pin_dir(TDO, IOPORT_DIR_INPUT);
		
	LED_On(LED0_GPIO);
	LED_Off(LED1_GPIO);
	LED_Off(LED2_GPIO);
	LED_Off(LED3_GPIO);
	LED_Off(LED4_GPIO);
	LED_Off(LED5_GPIO);
	LED_Off(LED6_GPIO);
	LED_Off(LED7_GPIO);
	ioport_set_pin_level(TDI, LOW);
	ioport_set_pin_level(TRST, HIGH);
	ioport_set_pin_level(TMS, LOW);
	ioport_set_pin_level(TCLK, LOW);
}

void ui_powerdown(void)
{
	//LED_On(LED1_GPIO);
}

void ui_wakeup_enable(void)
{
	PORT_t *port;
	// Configure pin change interrupt for asynch. wake-up on button pin.
	ioport_configure_pin(GPIO_PUSH_BUTTON_0,
			IOPORT_DIR_INPUT | IOPORT_PULL_UP);
	ioport_configure_pin(GPIO_PUSH_BUTTON_1,
			IOPORT_DIR_INPUT | IOPORT_PULL_UP);
	ioport_configure_pin(GPIO_PUSH_BUTTON_2,
			IOPORT_DIR_INPUT | IOPORT_PULL_UP);
	ioport_configure_pin(GPIO_PUSH_BUTTON_3,
			IOPORT_DIR_INPUT | IOPORT_PULL_UP);
	port = ioport_pin_to_port(GPIO_PUSH_BUTTON_0);
	port->INT0MASK = 0x0F;
	port->INTCTRL = PORT_INT0LVL_LO_gc;
}

void ui_wakeup_disable(void)
{
	PORT_t *port;
	port = ioport_pin_to_port(GPIO_PUSH_BUTTON_0);
	port->INT0MASK = 0x00;
}


/*! \brief Interrupt on "pin change" from switch to do wakeup on USB
 * Callback running when USB Host enable mouse interface
 *
 * Note:
 * This interrupt is enable when the USB host enable remotewakeup feature
 * This interrupt wakeup the CPU if this one is in idle mode
 */
ISR(PORTB_INT0_vect)
{
	PORT_t *port;
	port = ioport_pin_to_port(GPIO_PUSH_BUTTON_0);
	port->INTFLAGS = 0x01; // Ack interrupt
	// It is a wakeup then send wakeup USB
	udc_remotewakeup();
}

void ui_wakeup(void)
{
	//LED_On(LED7_GPIO);
}

void ui_process(uint16_t framenumber )
{
	if (done == 1)
	{
		udi_hid_generic_send_report_in(ui_hid_report);
		done = 0;
	}
	
}

void delay(int time_in_ms)
{
	int i,k,l;
	
	for (i=0;i<= time_in_ms; i++)
	{
		for (k=0; k <= 100; k++ )
		for (l=0; l <= 1000; l++ );
	}
	
}
                                                                                                                                                                                                                           
void ui_led_change(uint8_t *report)
{
	int j = 0, out_pins = 0, line = 0;
	
	ioport_set_pin_level(TRST, LOW);
	delay(5);
	if (strcmp(state,"IDL") == 0)
	{
		if (report[0] == 'L')
		{
			strcpy(state,"LOD");
			ioport_set_pin_level(TRST, LOW);
			ioport_set_pin_level(TMS, HIGH);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
			ioport_set_pin_level(TMS, LOW);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
			ioport_set_pin_level(TMS, LOW);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
		}
		else if (report[0] == 'A')
		{
			strcpy(state,"IDL");
			ioport_set_pin_level(TMS, HIGH);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
		}
		else if (report[0] == 'S')
		{
			strcpy(state,"SMP");
			ioport_set_pin_level(TRST, LOW);
			ioport_set_pin_level(TMS, HIGH);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
			ioport_set_pin_level(TMS, LOW);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
			
		}
	}
	else if (strcmp(state,"LOD") == 0)
	{
		length = report[0];
		strcpy(state,"LEN");
		ioport_set_pin_level(TCLK, HIGH);
		count = 0;
	}
	else if (strcmp(state,"LEN") == 0)
	{
		if (report[0] == '1')
		{	
			LED_On(LED1_GPIO);
			ioport_set_pin_level(TDI, HIGH);
		}
		else if (report[0] == '0')
		{
			LED_Off(LED1_GPIO);
			ioport_set_pin_level(TDI, LOW);
		}
		ioport_set_pin_level(TMS, LOW);
		ioport_set_pin_level(TCLK, LOW);
		delay(10);
		ioport_set_pin_level(TCLK, HIGH);
		delay(10);
		count++;
		if (count >= length)
		{
			count = 0;
			strcpy(state,"IDL");
		}
	}
	else if (strcmp(state,"SMP") == 0)
	{
		
		out_pins = report[0];
		line=0 ;
		ioport_set_pin_level(TDI, LOW);
		while ( line < out_pins )
		{
			ioport_set_pin_level(TRST, LOW);
			if (ioport_get_pin_level(TDO)==0)
			{
				LED_Off(LED2_GPIO);
				data[line++] = '0';
			}
			else if (ioport_get_pin_level(TDO)==1)
			{
				LED_On(LED2_GPIO);
				data[line++] = '1';
			}
			ioport_set_pin_level(TMS, LOW);
			ioport_set_pin_level(TCLK, LOW);
			delay(10);
			ioport_set_pin_level(TCLK, HIGH);
			delay(10);
		}
		strcpy(ui_hid_report, data);
		done = 1;	
		strcpy(state,"IDL");
		ioport_set_pin_level(TMS, HIGH);
		ioport_set_pin_level(TCLK, LOW);
		delay(10);
		ioport_set_pin_level(TCLK, HIGH);
		delay(10);
		ioport_set_pin_level(TCLK, LOW);
		delay(10);
		ioport_set_pin_level(TCLK, HIGH);
		delay(10);
	}
}