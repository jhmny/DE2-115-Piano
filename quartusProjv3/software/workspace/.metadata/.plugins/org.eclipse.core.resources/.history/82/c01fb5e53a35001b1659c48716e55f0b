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

int main()
{
    alt_putstr("program start");
    int ps2 = 1; //set type to keyboard
    unsigned char psChar;
    alt_up_ps2_init(ps2);
    while (1) //infinite while loop to wait for ints && IORD_ALTERA_AVALON_TIMER_STATUS(TIMER_0_BASE) == 0b01
    {
        alt_up_ps2_read_data_byte(ps2, &psChar);
        if (psChar != "")
        {
            alt_putstr(psChar);
            alt_putstr("state reset");
        }
    }
    return 0;
};

//showa time
