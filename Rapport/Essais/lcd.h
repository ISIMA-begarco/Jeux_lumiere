#ifndef LCD_H_INCLUDED
#define LCD_H_INCLUDED

/*******************
                   *
      DEFINE       *
                   *
********************/

#define WAIT       Delay_ms(1000)           /// faire une pause de 1s

///lcd pinout settings
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;

/*******************
                   *
        PINs       *
                   *
********************/

sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

///fonction d'affichage
void afficher_lcd();
void afficher_lcd_2();

#endif /// LCD_H_INCLUDED