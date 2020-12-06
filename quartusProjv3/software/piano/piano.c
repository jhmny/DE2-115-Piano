/*
 * piano.c
 *
 *  Created on: Dec 1, 2020
 *      Author: Joshua
 */
#include <stdio.h>
#include "system.h"
#include "altera_avalon_pio_regs.h"
#include "altera_avalon_timer_regs.h"
#include "sys/alt_irq.h"
#include "alt_types.h"
#include "altera_up_avalon_ps2.h"
#include "altera_up_ps2_keyboard.h"
#include "sys/alt_dev.h"

<<<<<<< HEAD
volatile int * PS2_ptr = (int *) PS2_0_BASE;
int main()
{
    alt_putstr("program start");
    alt_up_ps2_dev *ps2S;  //set type to keyboard

	alt_up_ps2_init(ps2S);

    char psChar;
=======
int main()
{
    alt_putstr("program start");
    alt_up_ps2_dev ps2S; //set type to keyboard
    unsigned char psChar;
    alt_up_ps2_init(&ps2S);
>>>>>>> parent of 252850d... swag
    alt_putstr("before while loop");
    while (1) //infinite while loop to wait for ints && IORD_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE) == 0b01
    {
        alt_up_ps2_read_data_byte(&ps2S, &psChar);
        if (psChar == "w")
        {
            alt_putstr(psChar);
            alt_putstr("state reset");
        }
    }
    return 0;
};

<<<<<<< HEAD
=======
//showa time
//swag
//oh yeah
>>>>>>> parent of 252850d... swag
