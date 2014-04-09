#ifndef LEDRGB_H_INCLUDED
#define LEDRGB_H_INCLUDED

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

// indispensable avant utilisation des vrais ports pwm
void initPWM();
// indispensable avant utilisation des pseudo ports pwm
void initPseudoPWM();
// génère un motif de "fondu" sur les deux pattes pwm
void fondu();
// permet de régler le rapport cyclique des pseudo-pattes pwm
// pins -> numéro des pins sur un octet
// n -> valeur du rapport entre 0 et 200
void PWMD_Set_Duty(int pins, int n);

#endif /// LEDRGB_H_INCLUDED
