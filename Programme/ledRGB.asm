
_initRGB:

;ledRGB.c,3 :: 		void initRGB()
;ledRGB.c,5 :: 		PORTA = 255;
	MOVLW       255
	MOVWF       PORTA+0 
;ledRGB.c,6 :: 		TRISA = 255;                        // configure PORTA pins as input
	MOVLW       255
	MOVWF       TRISA+0 
;ledRGB.c,7 :: 		PORTB = 0;                          // set PORTB to 0
	CLRF        PORTB+0 
;ledRGB.c,8 :: 		TRISB = 0;                          // designate PORTB pins as output
	CLRF        TRISB+0 
;ledRGB.c,9 :: 		PORTC = 0;                          // set PORTC to 0
	CLRF        PORTC+0 
;ledRGB.c,10 :: 		TRISC = 0;                          // designate PORTC pins as output
	CLRF        TRISC+0 
;ledRGB.c,11 :: 		PWM1_Init(5000);                    // Initialize PWM1 module at 5KHz
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
;ledRGB.c,12 :: 		PWM2_Init(5000);                    // Initialize PWM2 module at 5KHz
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM2_Init+0, 0
;ledRGB.c,13 :: 		}
L_end_initRGB:
	RETURN      0
; end of _initRGB

_fondue:

;ledRGB.c,15 :: 		void fondue()
;ledRGB.c,21 :: 		initRGB();
	CALL        _initRGB+0, 0
;ledRGB.c,23 :: 		current_duty1  = 0;
	CLRF        fondue_current_duty1_L0+0 
;ledRGB.c,24 :: 		current_duty2 = 255;
	MOVLW       255
	MOVWF       fondue_current_duty2_L0+0 
;ledRGB.c,27 :: 		croissance = 1;
	MOVLW       1
	MOVWF       fondue_croissance_L0+0 
	MOVLW       0
	MOVWF       fondue_croissance_L0+1 
;ledRGB.c,28 :: 		PWM1_Start();
	CALL        _PWM1_Start+0, 0
;ledRGB.c,29 :: 		PWM2_Start();
	CALL        _PWM2_Start+0, 0
;ledRGB.c,30 :: 		PWM1_Set_Duty(current_duty1);
	MOVF        fondue_current_duty1_L0+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;ledRGB.c,31 :: 		PWM2_Set_Duty(current_duty2);
	MOVF        fondue_current_duty2_L0+0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;ledRGB.c,33 :: 		while (1)
L_fondue0:
;ledRGB.c,35 :: 		if ((current_duty1 == 255 && croissance) || (current_duty1 == 0 && !croissance))
	MOVF        fondue_current_duty1_L0+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__fondue15
	MOVF        fondue_croissance_L0+0, 0 
	IORWF       fondue_croissance_L0+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__fondue15
	GOTO        L__fondue13
L__fondue15:
	MOVF        fondue_current_duty1_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__fondue14
	MOVF        fondue_croissance_L0+0, 0 
	IORWF       fondue_croissance_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__fondue14
	GOTO        L__fondue13
L__fondue14:
	GOTO        L_fondue8
L__fondue13:
;ledRGB.c,39 :: 		croissance = !croissance;
	MOVF        fondue_croissance_L0+0, 0 
	IORWF       fondue_croissance_L0+1, 0 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       fondue_croissance_L0+0 
	MOVLW       0
	MOVWF       fondue_croissance_L0+1 
;ledRGB.c,40 :: 		}
	GOTO        L_fondue9
L_fondue8:
;ledRGB.c,46 :: 		if(croissance)
	MOVF        fondue_croissance_L0+0, 0 
	IORWF       fondue_croissance_L0+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_fondue10
;ledRGB.c,48 :: 		current_duty1 += 5;
	MOVLW       5
	ADDWF       fondue_current_duty1_L0+0, 1 
;ledRGB.c,49 :: 		current_duty2 -= 5;
	MOVLW       5
	SUBWF       fondue_current_duty2_L0+0, 1 
;ledRGB.c,50 :: 		}
	GOTO        L_fondue11
L_fondue10:
;ledRGB.c,53 :: 		current_duty1 -= 5;
	MOVLW       5
	SUBWF       fondue_current_duty1_L0+0, 1 
;ledRGB.c,54 :: 		current_duty2 += 5;
	MOVLW       5
	ADDWF       fondue_current_duty2_L0+0, 1 
;ledRGB.c,55 :: 		}
L_fondue11:
;ledRGB.c,56 :: 		}
L_fondue9:
;ledRGB.c,57 :: 		PWM1_Set_Duty(current_duty1);
	MOVF        fondue_current_duty1_L0+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;ledRGB.c,58 :: 		PWM2_Set_Duty(current_duty2);
	MOVF        fondue_current_duty2_L0+0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;ledRGB.c,59 :: 		Delay_ms(30);
	MOVLW       78
	MOVWF       R12, 0
	MOVLW       235
	MOVWF       R13, 0
L_fondue12:
	DECFSZ      R13, 1, 1
	BRA         L_fondue12
	DECFSZ      R12, 1, 1
	BRA         L_fondue12
;ledRGB.c,60 :: 		}
	GOTO        L_fondue0
;ledRGB.c,61 :: 		}
L_end_fondue:
	RETURN      0
; end of _fondue
