
_initPWM:

;ledRGB.c,3 :: 		void initPWM()
;ledRGB.c,5 :: 		PORTA = 255;
	MOVLW       255
	MOVWF       PORTA+0 
;ledRGB.c,6 :: 		TRISA = 255;                        // configure PORTA en entree
	MOVLW       255
	MOVWF       TRISA+0 
;ledRGB.c,7 :: 		PORTB = 0;                          // met PORTB a 0
	CLRF        PORTB+0 
;ledRGB.c,8 :: 		TRISB = 0;                          // configure PORTB en sortie
	CLRF        TRISB+0 
;ledRGB.c,9 :: 		PORTC = 0;                          // met PORTC a 0
	CLRF        PORTC+0 
;ledRGB.c,10 :: 		TRISC = 0;                          // configure PORTC en sortie
	CLRF        TRISC+0 
;ledRGB.c,11 :: 		PWM1_Init(5000);                    // Initialise PWM1 a 5KHz
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
;ledRGB.c,12 :: 		PWM2_Init(5000);                    // Initialise PWM2 a 5KHz
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       99
	MOVWF       PR2+0, 0
	CALL        _PWM2_Init+0, 0
;ledRGB.c,13 :: 		PWM1_Start();
	CALL        _PWM1_Start+0, 0
;ledRGB.c,14 :: 		PWM2_Start();
	CALL        _PWM2_Start+0, 0
;ledRGB.c,15 :: 		}
L_end_initPWM:
	RETURN      0
; end of _initPWM

_initPseudoPWM:

;ledRGB.c,17 :: 		void initPseudoPWM()
;ledRGB.c,19 :: 		PORTD = 0;
	CLRF        PORTD+0 
;ledRGB.c,20 :: 		TRISD = 0;
	CLRF        TRISD+0 
;ledRGB.c,21 :: 		}
L_end_initPseudoPWM:
	RETURN      0
; end of _initPseudoPWM

_PWMD_Set_Duty:

;ledRGB.c,23 :: 		void PWMD_Set_Duty(int pins, int n)       // permet de configurer du pseudo pwm sur tout ou une partie du portD
;ledRGB.c,25 :: 		int i = 0;
	CLRF        PWMD_Set_Duty_i_L0+0 
	CLRF        PWMD_Set_Duty_i_L0+1 
;ledRGB.c,27 :: 		LATD |= pins;
	MOVF        FARG_PWMD_Set_Duty_pins+0, 0 
	IORWF       LATD+0, 1 
;ledRGB.c,28 :: 		for(i = 0 ; i < n ; i++)
	CLRF        PWMD_Set_Duty_i_L0+0 
	CLRF        PWMD_Set_Duty_i_L0+1 
L_PWMD_Set_Duty0:
	MOVLW       128
	XORWF       PWMD_Set_Duty_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       FARG_PWMD_Set_Duty_n+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__PWMD_Set_Duty25
	MOVF        FARG_PWMD_Set_Duty_n+0, 0 
	SUBWF       PWMD_Set_Duty_i_L0+0, 0 
L__PWMD_Set_Duty25:
	BTFSC       STATUS+0, 0 
	GOTO        L_PWMD_Set_Duty1
;ledRGB.c,30 :: 		delay_us(1);
	NOP
	NOP
;ledRGB.c,28 :: 		for(i = 0 ; i < n ; i++)
	INFSNZ      PWMD_Set_Duty_i_L0+0, 1 
	INCF        PWMD_Set_Duty_i_L0+1, 1 
;ledRGB.c,31 :: 		}
	GOTO        L_PWMD_Set_Duty0
L_PWMD_Set_Duty1:
;ledRGB.c,32 :: 		LATD &= !pins;
	MOVF        FARG_PWMD_Set_Duty_pins+0, 0 
	IORWF       FARG_PWMD_Set_Duty_pins+1, 0 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       R0 
	MOVF        R0, 0 
	ANDWF       LATD+0, 1 
;ledRGB.c,34 :: 		for(i = n ; i < 200 ; i++)
	MOVF        FARG_PWMD_Set_Duty_n+0, 0 
	MOVWF       PWMD_Set_Duty_i_L0+0 
	MOVF        FARG_PWMD_Set_Duty_n+1, 0 
	MOVWF       PWMD_Set_Duty_i_L0+1 
L_PWMD_Set_Duty3:
	MOVLW       128
	XORWF       PWMD_Set_Duty_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__PWMD_Set_Duty26
	MOVLW       200
	SUBWF       PWMD_Set_Duty_i_L0+0, 0 
L__PWMD_Set_Duty26:
	BTFSC       STATUS+0, 0 
	GOTO        L_PWMD_Set_Duty4
;ledRGB.c,36 :: 		delay_us(1);
	NOP
	NOP
;ledRGB.c,34 :: 		for(i = n ; i < 200 ; i++)
	INFSNZ      PWMD_Set_Duty_i_L0+0, 1 
	INCF        PWMD_Set_Duty_i_L0+1, 1 
;ledRGB.c,37 :: 		}
	GOTO        L_PWMD_Set_Duty3
L_PWMD_Set_Duty4:
;ledRGB.c,38 :: 		}
L_end_PWMD_Set_Duty:
	RETURN      0
; end of _PWMD_Set_Duty

_fondu:

;ledRGB.c,40 :: 		void fondu()
;ledRGB.c,45 :: 		initPWM();
	CALL        _initPWM+0, 0
;ledRGB.c,47 :: 		current_duty1  = 0;
	CLRF        fondu_current_duty1_L0+0 
;ledRGB.c,48 :: 		current_duty2 = 255;
	MOVLW       255
	MOVWF       fondu_current_duty2_L0+0 
;ledRGB.c,51 :: 		croissance = 1;
	MOVLW       1
	MOVWF       fondu_croissance_L0+0 
	MOVLW       0
	MOVWF       fondu_croissance_L0+1 
;ledRGB.c,52 :: 		PWM1_Set_Duty(current_duty1);
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;ledRGB.c,53 :: 		PWM2_Set_Duty(current_duty2);
	MOVF        fondu_current_duty2_L0+0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;ledRGB.c,55 :: 		while (1)
L_fondu6:
;ledRGB.c,57 :: 		if ((current_duty1 == 255 && croissance) || (current_duty1 == 0 && !croissance))
	MOVF        fondu_current_duty1_L0+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L__fondu21
	MOVF        fondu_croissance_L0+0, 0 
	IORWF       fondu_croissance_L0+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L__fondu21
	GOTO        L__fondu19
L__fondu21:
	MOVF        fondu_current_duty1_L0+0, 0 
	XORLW       0
	BTFSS       STATUS+0, 2 
	GOTO        L__fondu20
	MOVF        fondu_croissance_L0+0, 0 
	IORWF       fondu_croissance_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__fondu20
	GOTO        L__fondu19
L__fondu20:
	GOTO        L_fondu14
L__fondu19:
;ledRGB.c,61 :: 		croissance = !croissance;
	MOVF        fondu_croissance_L0+0, 0 
	IORWF       fondu_croissance_L0+1, 0 
	MOVLW       1
	BTFSS       STATUS+0, 2 
	MOVLW       0
	MOVWF       fondu_croissance_L0+0 
	MOVLW       0
	MOVWF       fondu_croissance_L0+1 
;ledRGB.c,62 :: 		}
	GOTO        L_fondu15
L_fondu14:
;ledRGB.c,68 :: 		if(croissance)
	MOVF        fondu_croissance_L0+0, 0 
	IORWF       fondu_croissance_L0+1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_fondu16
;ledRGB.c,70 :: 		current_duty1 += 5;
	MOVLW       5
	ADDWF       fondu_current_duty1_L0+0, 1 
;ledRGB.c,71 :: 		current_duty2 -= 5;
	MOVLW       5
	SUBWF       fondu_current_duty2_L0+0, 1 
;ledRGB.c,72 :: 		}
	GOTO        L_fondu17
L_fondu16:
;ledRGB.c,75 :: 		current_duty1 -= 5;
	MOVLW       5
	SUBWF       fondu_current_duty1_L0+0, 1 
;ledRGB.c,76 :: 		current_duty2 += 5;
	MOVLW       5
	ADDWF       fondu_current_duty2_L0+0, 1 
;ledRGB.c,77 :: 		}
L_fondu17:
;ledRGB.c,78 :: 		}
L_fondu15:
;ledRGB.c,79 :: 		PWM1_Set_Duty(current_duty1);
	MOVF        fondu_current_duty1_L0+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;ledRGB.c,80 :: 		PWM2_Set_Duty(current_duty2);
	MOVF        fondu_current_duty2_L0+0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;ledRGB.c,81 :: 		Delay_ms(30);
	MOVLW       78
	MOVWF       R12, 0
	MOVLW       235
	MOVWF       R13, 0
L_fondu18:
	DECFSZ      R13, 1, 1
	BRA         L_fondu18
	DECFSZ      R12, 1, 1
	BRA         L_fondu18
;ledRGB.c,82 :: 		}
	GOTO        L_fondu6
;ledRGB.c,83 :: 		}
L_end_fondu:
	RETURN      0
; end of _fondu
