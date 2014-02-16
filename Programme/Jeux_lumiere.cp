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
#line 20 "c:/users/ben/documents/github/jeux_lumiere/programme/glcd.h"
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
#line 40 "c:/users/ben/documents/github/jeux_lumiere/programme/glcd.h"
void game_of_life(unsigned char ** p_monTab);

void image_to_matrix(const char * entree, unsigned char ** retour);
void matrix_to_image(unsigned char ** entree, char retour[1024]);
void print_glcd(unsigned char ** image);
#line 1 "c:/users/ben/documents/github/jeux_lumiere/programme/lcd.h"
#line 13 "c:/users/ben/documents/github/jeux_lumiere/programme/lcd.h"
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;
#line 26 "c:/users/ben/documents/github/jeux_lumiere/programme/lcd.h"
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
#line 40 "c:/users/ben/documents/github/jeux_lumiere/programme/lcd.h"
void afficher_lcd();
void afficher_lcd_2();
#line 1 "c:/users/ben/documents/github/jeux_lumiere/programme/ledrgb.h"
#line 10 "c:/users/ben/documents/github/jeux_lumiere/programme/ledrgb.h"
void initRGB();
void fondue();
#line 18 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
const char image_isima[1024] = {
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 192, 224, 240, 248, 252, 252, 254, 254, 254, 255, 255, 255, 255, 255, 255, 255, 255, 254, 254, 254, 124, 28, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 128, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192, 0, 0, 0, 0, 0, 224, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 224, 252, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 248, 192, 0, 0, 0, 0, 0, 0, 0, 0,
 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 249, 248, 240, 240, 240, 241, 225, 227, 227, 195, 128, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 240, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192, 0, 240, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 192, 0, 0, 0, 0, 0, 0, 0, 0, 224, 248, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 240, 128, 0, 0, 0, 0, 0,
 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 128, 225, 227, 199, 135, 135, 143, 15, 15, 15, 15, 159, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 7, 1, 15, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 63, 7, 0, 15, 255, 255, 255, 255, 255, 255, 255, 255, 255, 240, 0, 0, 0, 0, 192, 240, 254, 255, 255, 255, 255, 255, 255, 255, 255, 63, 7, 1, 1, 1, 3, 63, 255, 255, 255, 255, 255, 255, 255, 255, 254, 240, 128, 0, 0,
 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 16, 62, 63, 127, 127, 127, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127, 127, 127, 63, 63, 31, 15, 7, 1, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 127, 0, 0, 0, 0, 3, 63, 255, 255, 255, 255, 255, 255, 127, 31, 3, 0, 0, 0, 0, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 192, 240, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 63, 3, 0, 0, 0, 0, 0, 0, 0, 7, 127, 255, 255, 255, 255, 255, 255, 255, 255, 255, 252, 224,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
 };

void main()
{






 while(1)
 {
#line 50 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
 Glcd_Init();
 Glcd_Image(image_ISIMA);
 Delay_ms(5000);
#line 68 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
 LED_init();

 decompte();
 LED_init();

 initRGB();
 fondue();
 }
}
