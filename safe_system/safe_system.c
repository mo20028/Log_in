/*
 * safe_system.c
 *
 *  Created on: Aug 3, 2023
 *      Author: Mohamed Shaban
 */

#include "STD_types.h"
#include "BIT_math.h"

#include "DIO_interface.h"
#include "PORT_interface.h"
#include "TWI_interface.h"
#include "EEPROM_interface.h"
#include "CLCD_interface.h"
#include "KPD_interface.h"
#include "login.h"
#include <util/delay.h>


void main()
{
	u8 local_val=0;
	PORT_voidInti();
	CLCD_voidInit();
	TWI_voidMasterInt(0);
	/**************some code*********/


	while(1)
	{
		EEPROM_voidRead_Byte(&local_val, 0);
		if(local_val==0xff)
		{
			CLCD_voidSendString("hello user");
			_delay_ms(1000);
			CLCD_ClearScreen();

			First_password();
		}
		else
		{
			handl_password();
		}
		CLCD_ClearScreen();
		CLCD_voidSendString("the system open");
		while(1);

	}
}
