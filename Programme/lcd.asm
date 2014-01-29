
_Move_Delay:

;lcd.c,31 :: 		void Move_Delay() {                  // Function used for text moving
;lcd.c,32 :: 		Delay_ms(500);                     // You can change the moving speed here
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_Move_Delay0:
	DECFSZ      R13, 1, 1
	BRA         L_Move_Delay0
	DECFSZ      R12, 1, 1
	BRA         L_Move_Delay0
	DECFSZ      R11, 1, 1
	BRA         L_Move_Delay0
	NOP
	NOP
;lcd.c,33 :: 		}
L_end_Move_Delay:
	RETURN      0
; end of _Move_Delay

_afficher_lcd:

;lcd.c,35 :: 		void afficher_lcd(){
;lcd.c,37 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;lcd.c,39 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,40 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,42 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,43 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_afficher_lcd1:
	DECFSZ      R13, 1, 1
	BRA         L_afficher_lcd1
	DECFSZ      R12, 1, 1
	BRA         L_afficher_lcd1
	DECFSZ      R11, 1, 1
	BRA         L_afficher_lcd1
	NOP
;lcd.c,44 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,46 :: 		Lcd_Out(1,1,txt1);                 // Write text in first row
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt1+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,47 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,49 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_afficher_lcd2:
	DECFSZ      R13, 1, 1
	BRA         L_afficher_lcd2
	DECFSZ      R12, 1, 1
	BRA         L_afficher_lcd2
	DECFSZ      R11, 1, 1
	BRA         L_afficher_lcd2
	NOP
;lcd.c,52 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	CLRF        _i+0 
L_afficher_lcd3:
	MOVLW       4
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd4
;lcd.c,53 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,54 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,52 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	INCF        _i+0, 1 
;lcd.c,55 :: 		}
	GOTO        L_afficher_lcd3
L_afficher_lcd4:
;lcd.c,57 :: 		while(1) {                         // Endless loop
L_afficher_lcd6:
;lcd.c,58 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	CLRF        _i+0 
L_afficher_lcd8:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd9
;lcd.c,59 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOVLW       24
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,60 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,58 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	INCF        _i+0, 1 
;lcd.c,61 :: 		}
	GOTO        L_afficher_lcd8
L_afficher_lcd9:
;lcd.c,63 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	CLRF        _i+0 
L_afficher_lcd11:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd12
;lcd.c,64 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,65 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,63 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INCF        _i+0, 1 
;lcd.c,66 :: 		}
	GOTO        L_afficher_lcd11
L_afficher_lcd12:
;lcd.c,67 :: 		}
	GOTO        L_afficher_lcd6
;lcd.c,68 :: 		}
L_end_afficher_lcd:
	RETURN      0
; end of _afficher_lcd
