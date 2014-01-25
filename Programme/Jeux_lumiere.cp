#line 1 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
#line 1 "c:/users/ben/documents/github/jeux_lumiere/programme/chiffre.h"
#line 19 "c:/users/ben/documents/github/jeux_lumiere/programme/chiffre.h"
void LED_init();


void LED_zero();
void LED_un();
void LED_deux();
void LED_trois();
void LED_quatre();
void LED_cinq();
void LED_six();
void LED_sept();
void LED_huit();
void LED_neuf();

void LED_raz();

void chiffre(int i);

void compte();
void decompte();
#line 1 "c:/users/ben/documents/github/jeux_lumiere/programme/glcd.h"



void print_logo_ISIMA();
#line 17 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at RB0_bit;
sbit GLCD_CS2 at RB1_bit;
sbit GLCD_RS at RB2_bit;
sbit GLCD_RW at RB3_bit;
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

 print_logo_ISIMA();


 while(1)
 {

 }
}
