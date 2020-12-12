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
//#include "sys/.h"
#include "altera_up_avalon_audio_and_video_config.h"
#include "altera_up_avalon_audio.h"
#include "altera_up_avalon_audio_regs.h"
//#include "altera_up_avalon_usb.h"
//#include "altera_up_avalon_usb_ptd.h"
//#include "altera_up_avalon_usb_regs.h"
//#include "altera_up_avalon_usb_low_level_driver.h"
//#include "altera_up_avalon_usb_high_level_driver.h"
#include "tones.h"
#include "io.h"
#define BUF_SIZE 24000
volatile char byte1;

int leftBuffer[BUF_SIZE];
int rightBuffer[BUF_SIZE];

void playNote(alt_up_audio_dev *audio, unsigned char psChar)
{
    //unsigned int testBuff;
    alt_up_audio_reset_audio_core(audio);
    int i;
    if (psChar == 0x1c) // C NOTE
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b100000000000000000);
        //IOWR_8DIRECT(audio, 0, 0x8);
        //IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
            //IOWR_32DIRECT(0x8409058, 0, 0xFFFFFFFF);
            //IOWR_32DIRECT(0x840905C, 0, tone_c[i]);
            //IOWR(audio->base,2, tone_c[i]);
            //IOWR(audio->base,3, tone_c[i]);
            alt_up_audio_play_l(audio, &(tone_c[i]), 1);
            alt_up_audio_play_r(audio, &(tone_c[i]), 1);
            //IOWR_ALT_UP_AUDIO_LEFTDATA(audio->base,tone_c[i]);
            //IOWR_ALT_UP_AUDIO_RIGHTDATA(audio->base,tone_c[i]);
            //alt_up_audio_write_fifo(audio, &(tone_c[i]), 1, ALT_UP_AUDIO_RIGHT);
            //alt_up_audio_write_fifo(audio, &(tone_c[i]), 1, ALT_UP_AUDIO_LEFT);
            // write audio buffer
        }
    }
    else if (psChar == 0x1d) // C# NTOE
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b010000000000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
            //alt_up_audio_play_l(audio, &(tone_c_sharp[i]), 1);
           // alt_up_audio_play_r(audio, &(tone_c_sharp[i]), 1);
        }
    }
    else if (psChar == 0x1b) // D NOTE
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b001000000000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_d[i]), 1);
        //    alt_up_audio_play_r(audio, &(tone_d[i]), 1);
        }
    }
    else if (psChar == 0x24) //D# NOTE
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000100000000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_d_sharp[i]), 1);
         //   alt_up_audio_play_r(audio, &(tone_d_sharp[i]), 1);
        }
    }
    else if (psChar == 0x23) //E NOTE
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000010000000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_e[i]), 1);
         //   alt_up_audio_play_r(audio, &(tone_e[i]), 1);
        }
    }
    else if (psChar == 0x2b) //F
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000001000000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
          //  alt_up_audio_play_l(audio, &(tone_f[i]), 1);
          //  alt_up_audio_play_r(audio, &(tone_f[i]), 1);
        }
    }
    else if (psChar == 0x2c) //F#
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000100000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
          //  alt_up_audio_play_l(audio, &(tone_f_sharp[i]), 1);
          //  alt_up_audio_play_r(audio, &(tone_f_sharp[i]), 1);
        }
    }
    else if (psChar == 0x34) //G
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000010000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_g[i]), 1);
         //   alt_up_audio_play_r(audio, &(tone_g[i]), 1);
        }
    }
    else if (psChar == 0x35) //G#
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000001000000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
        //    alt_up_audio_play_l(audio, &(tone_g_sharp[i]), 1);
         //   alt_up_audio_play_r(audio, &(tone_g_sharp[i]), 1);
        }
    }
    else if (psChar == 0x33) //A
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000000100000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
        //    alt_up_audio_play_l(audio, &(tone_a[i]), 1);
        //    alt_up_audio_play_r(audio, &(tone_a[i]), 1);
        }
    }
    else if (psChar == 0x3c) //A#
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000000010000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_a_sharp[i]), 1);
         //   alt_up_audio_play_r(audio, &(tone_c_sharp[i]), 1);
        }
    }
    else if (psChar == 0x3b) //B
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000000001000000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
         //   alt_up_audio_play_l(audio, &(tone_b[i]), 1);
        //    alt_up_audio_play_r(audio, &(tone_b[i]), 1);
        }
    }
    else if (psChar == 0x42) //C Octave
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000000000100000);
        IOWR_8DIRECT(audio, 0, 0x8);
        IOWR_8DIRECT(audio, 0, 0x0);
        for (i = 0; i <= 24000; i++)
        {
          //  alt_up_audio_play_l(audio, &(tone_c[i]), 1);
            //alt_up_audio_play_r(audio, &(tone_c[i]), 1);
        }
    }
    else
    {
        IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, 0b000000000000000000);
    }
}

int main(void)
{
    //alt_up_ps2_dev ps2S = {.base = PS2_0_BASE,.irq_id = PS2_0_IRQ,.timeout = 0,.device_type = 1}; //manually setting ps2 variables
    alt_up_ps2_dev *ps2S;
    ps2S = alt_up_ps2_open_dev("/dev/ps2_0");
    //alt_up_ps2_dev ps2S; // calling with no
    //alt_up_ps2_dev *ps2SP =  &ps2S;  //using a pointer instatiaon
    unsigned char psChar;
    //alt_up_ps2_enable_read_interrupt(ps2S);
    alt_up_ps2_init(ps2S); //suppossed to set device type does not
    alt_up_ps2_clear_fifo(ps2S);
    ps2S->device_type = PS2_KEYBOARD;
    //alt_up_ps2_init(ps2SP); // sending in pointer
    alt_putstr("instantiaion not lost in an endless loop\n");

    // alt_up_av_config_dev * audioSC;
    //  audioSC = alt_up_av_config_open_dev("/dev/audio_and_video_config_0");
    // audioSC->type = 1;

    alt_up_audio_dev *audioS;
    audioS = alt_up_ps2_open_dev("/dev/audio_subsystem_Audio");
    if (audioS == NULL)
        alt_printf("Error: could not open audio device \n");
    else
        alt_printf("Opened audio device \n");

    //alt_up_audio_enable_write_interrupt(audioS);

    /* test while code for reading and writing
    while(1)
    {
    int fifospace = alt_up_audio_read_fifo_avail(audioS, ALT_UP_AUDIO_RIGHT);
    if ( fifospace > 0 ) // check if data is available
    {
    // read audio buffer
    	alt_up_audio_write_fifo(audioS, &(rightBuffer), 1, ALT_UP_AUDIO_RIGHT);
    	alt_up_audio_write_fifo(audioS, &(leftBuffer), 1, ALT_UP_AUDIO_LEFT);
    	alt_up_audio_read_fifo(audioS,&(rightBuffer), 1, ALT_UP_AUDIO_RIGHT);
    	alt_up_audio_read_fifo(audioS, &(leftBuffer), 1, ALT_UP_AUDIO_LEFT);
    }
    }
    */
    while (1)
    {
        //alt_up_ps2_read_data_byte(ps2S, psChar); //should read from ps2 ERROR: address of data reg is completly wrong
        psChar = IORD_8DIRECT(ps2S->base, 0); //reads directly from info
        alt_up_ps2_clear_fifo(ps2S);
        playNote(audioS, psChar);
    }
    return 0;
};
