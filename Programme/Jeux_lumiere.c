/*******************
                   *
      INCLUDE      *
                   *
********************/

#include "chiffre.h"
#include "glcd.h"

/****************
                *
  Fonction Main *
                *
****************/

/// glcd pinout settings
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at RB0_bit;
sbit GLCD_CS2 at RB1_bit;
sbit GLCD_RS  at RB2_bit;
sbit GLCD_RW  at RB3_bit;
sbit GLCD_EN at RB4_bit;
sbit GLCD_RST at RB5_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction at TRISB2_bit;
sbit GLCD_RW_Direction at TRISB3_bit;
sbit GLCD_EN_Direction at TRISB4_bit;
sbit GLCD_RST_Direction at TRISB5_bit;


void main()
{
    /// LED_init();
    print_logo_ISIMA();

    /// Boucle 'infinie' du programme
    while(1)
    {
          /// decompte();
    }
}