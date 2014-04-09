/*******************
                   *
      INCLUDE      *
                   *
********************/

#include "chiffre.h"
#include "glcd.h"
#include "lcd.h"
#include "ledRGB.h"

/****************
                *
  Fonction Main *
                *
****************/

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
    
int nbEtapes = 10;

void main() 
{
// déclaration pour pseudo pwm
    int n = 1;
    int ports = 1;
    int delay = 2;
    // intitialisation des boutons
    bit oldstate0;
    bit oldstate1;
    bit oldstate2;
    bit oldstate3;
    bit oldstate4;
    bit oldstate5;
    bit oldstate6;
    bit oldstate7;
    int menu = 0;
    ADCON0  = 0;                                    // Configure AN pins as digital I/O
    ADCON1 = 0;
    TRISB0_bit = 1;                                // set RB0 pin as input
    TRISE1_bit = 1;                                // set RB1 pin as input
    TRISB2_bit = 1;                                // set RB2 pin as input
    TRISB3_bit = 1;                                // set RB3 pin as input

    oldstate0 = 0;
    oldstate1 = 0;
    oldstate2 = 0;
    oldstate3 = 0;
    
    /// Boucle 'infinie' du programme
    while(1)
    {
        // bouton B0
        if (Button(&PORTB, 0, 1, 1))    // Detect logical one
        {
              oldstate0 = 1;                              // Update flag
        }
        if (oldstate0 && Button(&PORTB, 0, 1, 0))    // Detect one-to-zero transition
        {
              oldstate0 = 0;                              // Update flag
              menu = 4;
              menu %= nbEtapes;
        }
        // bouton B1
        if (Button(&PORTB, 1, 1, 1))    // Detect logical one
        {
              oldstate1 = 1;                              // Update flag
        }
        if (oldstate1 && Button(&PORTB, 1, 1, 0))    // Detect one-to-zero transition
        {
              oldstate1 = 0;                              // Update flag
              menu = 6;
              menu %= nbEtapes;
        }
        // bouton B2
        if (Button(&PORTB, 2, 1, 1))    // Detect logical one
        {
              oldstate2 = 1;                              // Update flag
        }
        if (oldstate2 && Button(&PORTB, 2, 1, 0))    // Detect one-to-zero transition
        {
              oldstate2 = 0;                              // Update flag
              menu = 8;
              menu %= nbEtapes;
        }
        // bouton B3
        if (Button(&PORTB, 3, 1, 1))    // Detect logical one
        {
              oldstate3 = 1;                              // Update flag
        }
        if (oldstate3 && Button(&PORTB, 3, 1, 0))    // Detect one-to-zero transition
        {
              oldstate3 = 0;                              // Update flag
              menu = 1;
              menu %= nbEtapes;
        }
        
        if(menu==1)   // préparation du pwm
        {
             n = 1;
             ports = 1;
             delay = 2;

             initPWM();
             initPseudoPWM();
             menu++;
             menu %= nbEtapes;
        }
        else if(menu==2)   // execution du pwm
        {
              PWM2_Set_Duty(0);
              for(n = 0 ; n<200*delay ; n++)
              {
                    PWM1_Set_Duty(n/delay);
                    PWMD_Set_Duty(ports,n/delay);
              }

              PWM1_Set_Duty(0);
              for(n = 200*delay ; n > 0 ; n--)
              {
                    PWM2_Set_Duty(n/delay);
                    PWMD_Set_Duty(ports,n/delay);
              }
              ports = ports*2 + 1;
              ports = (ports>0xFF)?1:ports;
        }
        else if(menu==3)
        {
              PWM1_Stop();
              PWM2_Stop();
              menu++;
              menu %= nbEtapes;
        }
        else if(menu==4)   /// initialisation du glcd
        {
              Glcd_Init();
              menu++;
              menu %= nbEtapes;
        }
        else if(menu==5)       /// introduction sur LCD
        {
              Glcd_Image(image_ISIMA);
        }
        else if(menu==6)   /// initialisation pour afficher sur LED
        {
              LED_init();
              menu++;
              menu %= nbEtapes;
        }
        else if(menu==7)       /// compte à rebours de 9 à 0
        {
              decompte();
        }
        else if(menu==8)       /// initialisation pwm
        {
             initPWM();
             menu++;
             menu %= nbEtapes;
        }
        else if(menu==9)       /// fondue rgb
        {
              fondue();
        }
    }
}

