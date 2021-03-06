#line 1 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/ledRGB.c"
#line 1 "c:/users/ben/documents/github/jeux_lumiere/programme/ledrgb.h"
#line 11 "c:/users/ben/documents/github/jeux_lumiere/programme/ledrgb.h"
void initPWM();

void initPseudoPWM();

void fondu();



void PWMD_Set_Duty(int pins, int n);
#line 3 "C:/Users/Ben/Documents/GitHub/Jeux_lumiere/Programme/ledRGB.c"
void initPWM()
{
 PORTA = 255;
 TRISA = 255;
 PORTB = 0;
 TRISB = 0;
 PORTC = 0;
 TRISC = 0;
 PWM1_Init(5000);
 PWM2_Init(5000);
 PWM1_Start();
 PWM2_Start();
}

void initPseudoPWM()
{
 PORTD = 0;
 TRISD = 0;
}

void PWMD_Set_Duty(int pins, int n)
{
 int i = 0;

 LATD |= pins;
 for(i = 0 ; i < n ; i++)
 {
 delay_us(1);
 }
 LATD &= !pins;

 for(i = n ; i < 200 ; i++)
 {
 delay_us(1);
 }
}

void fondu()
{
 unsigned short current_duty1, old_duty1, current_duty2, old_duty2;
 int croissance;

 initPWM();

 current_duty1 = 0;
 current_duty2 = 255;
 old_duty1 = 255;
 old_duty2 = 0;
 croissance = 1;
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
