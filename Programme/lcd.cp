#line 1 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/lcd.c"
#line 1 "c:/users/benji/documents/github/jeux_lumiere/programme/lcd.h"
#line 19 "c:/users/benji/documents/github/jeux_lumiere/programme/lcd.h"
void afficher_lcd();
void afficher_lcd_2();
#line 8 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/lcd.c"
char *text = "mikroC_123";

void afficher_lcd() {
 unsigned short btnRes;

 ADCON1 = 0x0E;


 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1, "Test");

}

char txt1[] = "mikroElektronika";
char txt2[] = "EasyPIC6";
char txt3[] = "Lcd4bit";
char txt4[] = "example";

char i;

void Move_Delay() {
 Delay_ms(500);
}

void afficher_lcd_2(){

 Lcd_Init();

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,6,txt3);

 Lcd_Out(2,6,txt4);
 Delay_ms(2000);
 Lcd_Cmd(_LCD_CLEAR);

 Lcd_Out(1,1,txt1);
 Lcd_Out(2,5,txt2);

 Delay_ms(2000);


 for(i=0; i<4; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }

 while(1) {
 for(i=0; i<8; i++) {
 Lcd_Cmd(_LCD_SHIFT_LEFT);
 Move_Delay();
 }

 for(i=0; i<8; i++) {
 Lcd_Cmd(_LCD_SHIFT_RIGHT);
 Move_Delay();
 }
 }
}
