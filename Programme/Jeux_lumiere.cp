#line 1 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
#line 8 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
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

void compte();
#line 30 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
void main() {

int i = 0;


 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 PORTD = 0;
 PORTE = 0;


 TRISA = 0;
 TRISB = 0;
 TRISC = 0;
 TRISD = 0;


 while(1){
 compte();
 }
}
#line 60 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/Jeux_lumiere.c"
void LED_zero()
{
 PORTA = 0xFF;
 PORTB = 0b10000001;
 PORTC = 0b10000001;
 PORTD = 0xFF;
}

void LED_un()
{
 PORTA = 0b1000;
 PORTB = 0b100;
 PORTC = 0b10;
 PORTD = 0xFF;
}

void LED_deux()
{
 PORTA = 0b11110001;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0b10011111;
}

void LED_trois()
{
 PORTA = 0b10000001;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0xFF;
}

void LED_quatre()
{
 PORTA = 0b00011111;
 PORTB = 0b00010000;
 PORTC = 0b00010000;
 PORTD = 0xFF;
}

void LED_cinq()
{
 PORTA = 0b10011111;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0b11110001;
}

void LED_six()
{
 PORTA = 0xFF;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0b11110001;
}

void LED_sept()
{
 PORTA = 0b1;
 PORTB = 0b1;
 PORTC = 0b1;
 PORTD = 0xFF;
}

void LED_huit()
{
 PORTA = 0xFF;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0xFF;
}

void LED_neuf()
{
 PORTA = 0b10011111;
 PORTB = 0b10010001;
 PORTC = 0b10010001;
 PORTD = 0xFF;
}

void LED_raz()
{
 PORTA = 0;
 PORTB = 0;
 PORTC = 0;
 PORTD = 0;
}

void compte()
{
int i = 0;
for(i=0; i<10; i++)
{
 LED_zero();
 Delay_ms(1000);
 LED_raz();
 LED_un();
 Delay_ms(1000);
 LED_raz();
 LED_deux();
 Delay_ms(1000);
 LED_raz();
 LED_trois();
 Delay_ms(1000);
 LED_raz();
 LED_quatre();
 Delay_ms(1000);
 LED_raz();
 LED_cinq();
 Delay_ms(1000);
 LED_raz();
 LED_six();
 Delay_ms(1000);
 LED_raz();
 LED_sept();
 Delay_ms(1000);
 LED_raz();
 LED_huit();
 Delay_ms(1000);
 LED_raz();
 LED_neuf();
 Delay_ms(1000);
 LED_raz();

}
}
