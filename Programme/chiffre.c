#include "chiffre.h"

/***********************
                       *
Fonctions auxiliaires  *
                       *
***********************/

void LED_zero()
{
    LATA = 0xFF;
    LATB = 0b10000001;
    LATC = 0b10000001;
    LATD = 0xFF;
}

void LED_un()
{
    LATA = 0b1000;
    LATB = 0b100;
    LATC = 0b10;
    LATD = 0xFF;
}

void LED_deux()
{
    LATA = 0b11111001;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0b10001111;
}

void LED_trois()
{
    LATA = 0b10000001;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0xFF;
}

void LED_quatre()
{
    LATA = 0b00001111;
    LATB = 0b00001000;
    LATC = 0b00001000;
    LATD = 0xFF;
}

void LED_cinq()
{
    LATA = 0b10001111;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0b11111001;
}

void LED_six()
{
    LATA = 0xFF;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0b11111001;
}

void LED_sept()
{
    LATA = 0b1;
    LATB = 0b1;
    LATC = 0b1;
    LATD = 0xFF;
}

void LED_huit()
{
    LATA = 0xFF;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0xFF;
}

void LED_neuf()
{
    LATA = 0b10001111;
    LATB = 0b10001001;
    LATC = 0b10001001;
    LATD = 0xFF;
}

void LED_raz()
{
    LATA = 0;
    LATB = 0;
    LATC = 0;
    LATD = 0;
}

void compte()
{
    int i = 0;
    for(i=0; i<10; i++)
    {
        chiffre(i);
        WAIT;
    }
}

void chiffre(int i)
{
    switch(i)
    {
        case 0:
            LED_zero();
            break;
        case 1:
            LED_un();
            break;
        case 2:
            LED_deux();
            break;
        case 3:
            LED_trois();
            break;
        case 4:
            LED_quatre();
            break;
        case 5:
            LED_cinq();
            break;
        case 6:
            LED_six();
            break;
        case 7:
            LED_sept();
            break;
        case 8:
            LED_huit();
            break;
        case 9:
            LED_neuf();
            break;
        default:
            LED_raz();
    }
}

void decompte()
{
    int i = 0;
    for(i = 9 ; i >= 0 ; i--)
    {
        chiffre(i);
        WAIT;
    }
}

void LED_init()
{
    ///Initialisation des LED à l'etat eteint
    PORTA = 0;
    PORTB = 0;
    PORTC = 0;
    PORTD = 0;
    PORTE = 0;

    ///Ouverture en mode output
    TRISA = 0;
    TRISB = 0;
    TRISC = 0;
    TRISD = 0;
    TRISE = 0b1111;
}