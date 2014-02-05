/*******************
                   *
      INCLUDE      *
                   *
********************/

#include "chiffre.h"
#include "glcd.h"
#include "lcd.h"

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

///lcd pinout settings
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;


const char image_isima[1024] = {
      0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
      0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0,   0, 192, 224, 240, 248, 252, 252, 254, 254, 254, 255, 255, 255, 255, 255, 255, 255, 255, 254, 254, 254, 124,  28,   0,   0,   0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0,   0,   0, 128, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192,   0,   0,   0,   0,   0, 224, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 224, 252, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 248, 192,   0,   0,   0,   0,   0,   0,   0,   0,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 249, 248, 240, 240, 240, 241, 225, 227, 227, 195, 128,   0,   0,   0,   0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0,   0, 240, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192,   0, 240, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 192,   0,   0,   0,   0,   0,   0,   0,   0, 224, 248, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 240, 128,   0,   0,   0,   0,   0,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0,   0, 128, 225, 227, 199, 135, 135, 143,  15,  15,  15,  15, 159, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254,   0,   0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,   0, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255,   7,   1,  15, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,  63,   7,   0,  15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 240,   0,   0,   0,   0, 192, 240, 254, 255, 255, 255, 255, 255, 255, 255, 255,  63,   7,   1,   1,   1,   3,  63, 255, 255, 255, 255, 255, 255, 255, 255, 254, 240, 128,   0,   0,
    255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0,  16,  62,  63, 127, 127, 127, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127, 127, 127,  63,  63,  31,  15,   7,   1,   0,   0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,   0,   0, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127,   0,   0,   0,   0,   3,  63, 255, 255, 255, 255, 255, 255, 127,  31,   3,   0,   0,   0,   0, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192, 240, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255,  63,   3,   0,   0,   0,   0,   0,   0,   0,   7, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 224,
      0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
      0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
    };

void main()
{
     ///afficher_lcd_2(); //test affichage lcd, en cours de test

    /// MM_Init();
    /// Boucle 'infinie' du programme
    

while(1)
    {

    //    unsigned char ** matrice_calcul = (unsigned char**)Malloc(sizeof(unsigned char*)*SCREEN_H);
    //    int i = 0;
    //    for(i = 0 ; i < SCREEN_H ; i++)
    //    {
    //        matrice_calcul[i] = (unsigned char*)malloc(sizeof(unsigned char)*SCREEN_W);
    //    }
    //    image_to_matrix(image_isima, matrice_calcul);

        /// introduction sur LCD
        Glcd_Init();
        Glcd_Image(image_ISIMA);
        Delay_ms(5000);

    //    i = 0;
    //
    //    while(i < 2)
    //    {
    //         game_of_life(matrice_calcul);
    //         Glcd_Fill(0);
    //         print_glcd(matrice_calcul);
    //         Delay_ms(1000);
    //         i++;
    //    }

        /// initialisation pour afficher sur LED
        LED_init();
        /// compte � rebours de 9 � 0
        decompte();
        LED_init();
    }
}