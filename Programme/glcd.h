#ifndef GLCD_H_INCLUDED
#define GLCD_H_INCLUDED

/*******************
                   *
      DEFINE       *
                   *
********************/

#define SCREEN_W       128
#define SCREEN_H       64

/*******************
                   *
        PINs       *
                   *
********************/

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

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

void game_of_life(unsigned char ** p_monTab); /// effectue une étape du célèbre jeu de la vie

void image_to_matrix(const char * entree, unsigned char ** retour); /// convertit les images standart en image pour nous
void matrix_to_image(unsigned char ** entree, char retour[1024]); /// inversement
void print_glcd(unsigned char ** image); /// imprime nos images

#endif // GLCD_H_INCLUDED