#ifndef CHIFFRE_H_INCLUDED
#define CHIFFRE_H_INCLUDED

/*******************
                   *
      DEFINE       *
                   *
********************/

#define WAIT       Delay_ms(1000)           /// faire une pause de 1s

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

/// initialisation
void LED_init();

/// Chiffres sur la matrice de LED
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

void LED_raz(); /// Eteindre toutes les LED

void chiffre(int i); /// Permet d'afficher un chiffre

void compte(); /// De 0 à 9
void decompte(); /// De 9 à 0

#endif /// CHIFFRE_H_INCLUDED
