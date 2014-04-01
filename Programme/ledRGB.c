#include "ledRGB.h"

void initRGB()
{
  PORTA = 255;
  TRISA = 255;                        // configure PORTA pins as input
  PORTB = 0;                          // set PORTB to 0
  TRISB = 0;                          // designate PORTB pins as output
  PORTC = 0;                          // set PORTC to 0
  TRISC = 0;                          // designate PORTC pins as output
  PWM1_Init(5000);                    // Initialize PWM1 module at 5KHz
  PWM2_Init(5000);                    // Initialize PWM2 module at 5KHz
}

void initPseudoPWM()
{
     PORTD = 0;
     TRISD = 0;
}

void pseudoPWM(int n)
{
     int i = 0;
     
     LATD = 255;
     for(i = 0 ; i < n ; i++)
     {
          delay_us(1);
     }
     LATD = 0;
     
     for(i = n ; i < 200 ; i++)
     {
           delay_us(1);
     }
}

void fondue()
{
  unsigned short current_duty1, old_duty1, current_duty2, old_duty2;
  int croissance;

  initRGB();
  
  current_duty1  = 0;
  current_duty2 = 255;
  old_duty1  = 255;
  old_duty2 = 0;
  croissance = 1;
  PWM1_Start();
  PWM2_Start();
  PWM1_Set_Duty(current_duty1);
  PWM2_Set_Duty(current_duty2);
  
  while (1) 
  {
    if ((current_duty1 == 255 && croissance) || (current_duty1 == 0 && !croissance))
    {
      old_duty1 = current_duty1;
      old_duty2 = current_duty2;
      croissance = !croissance;
    }
    else 
    {
      old_duty1 = current_duty1;
      old_duty2 = current_duty2;
      
      if(croissance)
      {
          current_duty1 += 5;
          current_duty2 -= 5;
      }
      else
      {
          current_duty1 -= 5;
          current_duty2 += 5;
      }
    }
    PWM1_Set_Duty(current_duty1);
    PWM2_Set_Duty(current_duty2);
    Delay_ms(30);
  }
}