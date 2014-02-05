
_afficher_lcd:

;lcd.c,10 :: 		void afficher_lcd() {
;lcd.c,13 :: 		ADCON1 = 0x0E;
	MOVLW       14
	MOVWF       ADCON1+0 
;lcd.c,16 :: 		Lcd_Cmd(_LCD_CLEAR);       // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,17 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);  // Turn cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,18 :: 		Lcd_Out(1,1, "Test");       // Print text to LCD, 2nd row, 1st column
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_lcd+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_lcd+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,20 :: 		}
L_end_afficher_lcd:
	RETURN      0
; end of _afficher_lcd

_Move_Delay:

;lcd.c,29 :: 		void Move_Delay() {                  // Function used for text moving
;lcd.c,30 :: 		Delay_ms(500);                     // You can change the moving speed here
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
;lcd.c,31 :: 		}
L_end_Move_Delay:
	RETURN      0
; end of _Move_Delay

_afficher_lcd_2:

;lcd.c,33 :: 		void afficher_lcd_2(){
;lcd.c,35 :: 		Lcd_Init();                        // Initialize LCD
	CALL        _Lcd_Init+0, 0
;lcd.c,37 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,38 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,39 :: 		Lcd_Out(1,6,txt3);                 // Write text in first row
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt3+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt3+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,41 :: 		Lcd_Out(2,6,txt4);                 // Write text in second row
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,42 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_afficher_lcd_21:
	DECFSZ      R13, 1, 1
	BRA         L_afficher_lcd_21
	DECFSZ      R12, 1, 1
	BRA         L_afficher_lcd_21
	DECFSZ      R11, 1, 1
	BRA         L_afficher_lcd_21
	NOP
;lcd.c,43 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,45 :: 		Lcd_Out(1,1,txt1);                 // Write text in first row
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt1+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt1+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,46 :: 		Lcd_Out(2,5,txt2);                 // Write text in second row
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt2+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt2+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;lcd.c,48 :: 		Delay_ms(2000);
	MOVLW       21
	MOVWF       R11, 0
	MOVLW       75
	MOVWF       R12, 0
	MOVLW       190
	MOVWF       R13, 0
L_afficher_lcd_22:
	DECFSZ      R13, 1, 1
	BRA         L_afficher_lcd_22
	DECFSZ      R12, 1, 1
	BRA         L_afficher_lcd_22
	DECFSZ      R11, 1, 1
	BRA         L_afficher_lcd_22
	NOP
;lcd.c,51 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	CLRF        _i+0 
L_afficher_lcd_23:
	MOVLW       4
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd_24
;lcd.c,52 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,53 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,51 :: 		for(i=0; i<4; i++) {               // Move text to the right 4 times
	INCF        _i+0, 1 
;lcd.c,54 :: 		}
	GOTO        L_afficher_lcd_23
L_afficher_lcd_24:
;lcd.c,56 :: 		while(1) {                         // Endless loop
L_afficher_lcd_26:
;lcd.c,57 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	CLRF        _i+0 
L_afficher_lcd_28:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd_29
;lcd.c,58 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOVLW       24
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,59 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,57 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	INCF        _i+0, 1 
;lcd.c,60 :: 		}
	GOTO        L_afficher_lcd_28
L_afficher_lcd_29:
;lcd.c,62 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	CLRF        _i+0 
L_afficher_lcd_211:
	MOVLW       8
	SUBWF       _i+0, 0 
	BTFSC       STATUS+0, 0 
	GOTO        L_afficher_lcd_212
;lcd.c,63 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW       28
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;lcd.c,64 :: 		Move_Delay();
	CALL        _Move_Delay+0, 0
;lcd.c,62 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INCF        _i+0, 1 
;lcd.c,65 :: 		}
	GOTO        L_afficher_lcd_211
L_afficher_lcd_212:
;lcd.c,66 :: 		}
	GOTO        L_afficher_lcd_26
;lcd.c,67 :: 		}
L_end_afficher_lcd_2:
	RETURN      0
; end of _afficher_lcd_2

lcd____?ag:

L_end_lcd___?ag:
	RETURN      0
; end of lcd____?ag
