#ifndef LEDRGB_H_INCLUDED
#define LEDRGB_H_INCLUDED

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

void initPWM();
void initPseudoPWM();
void fondue();
void PWMD_Set_Duty(int pins, int n);

#endif /// LEDRGB_H_INCLUDED