
_main:

;main.c,17 :: 		void main()
;main.c,20 :: 		int n = 1;
	MOVLW       1
	MOVWF       main_n_L0+0 
	MOVLW       0
	MOVWF       main_n_L0+1 
	MOVLW       1
	MOVWF       main_ports_L0+0 
	MOVLW       0
	MOVWF       main_ports_L0+1 
	MOVLW       2
	MOVWF       main_delay_L0+0 
	MOVLW       0
	MOVWF       main_delay_L0+1 
	MOVLW       10
	MOVWF       main_nbEtapes_L0+0 
	MOVLW       0
	MOVWF       main_nbEtapes_L0+1 
	CLRF        main_menu_L0+0 
	CLRF        main_menu_L0+1 
;main.c,30 :: 		ADCON0  = 0;                                    // Configure AN pins as digital I/O
	CLRF        ADCON0+0 
;main.c,31 :: 		ADCON1 = 0;
	CLRF        ADCON1+0 
;main.c,32 :: 		TRISB0_bit = 1;                                // set RB0 pin as input
	BSF         TRISB0_bit+0, BitPos(TRISB0_bit+0) 
;main.c,33 :: 		TRISE1_bit = 1;                                // set RB1 pin as input
	BSF         TRISE1_bit+0, BitPos(TRISE1_bit+0) 
;main.c,34 :: 		TRISB2_bit = 1;                                // set RB2 pin as input
	BSF         TRISB2_bit+0, BitPos(TRISB2_bit+0) 
;main.c,35 :: 		TRISB3_bit = 1;                                // set RB3 pin as input
	BSF         TRISB3_bit+0, BitPos(TRISB3_bit+0) 
;main.c,37 :: 		oldstate0 = 0;
	BCF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;main.c,38 :: 		oldstate1 = 0;
	BCF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;main.c,39 :: 		oldstate2 = 0;
	BCF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;main.c,40 :: 		oldstate3 = 0;
	BCF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;main.c,43 :: 		while(1)
L_main0:
;main.c,46 :: 		if (Button(&PORTB, 0, 1, 1))    // Detect logical one
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main2
;main.c,48 :: 		oldstate0 = 1;                              // Update flag
	BSF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;main.c,49 :: 		}
L_main2:
;main.c,50 :: 		if (oldstate0 && Button(&PORTB, 0, 1, 0))    // Detect one-to-zero transition
	BTFSS       main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
	GOTO        L_main5
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	CLRF        FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main5
L__main46:
;main.c,52 :: 		oldstate0 = 0;                              // Update flag
	BCF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;main.c,53 :: 		menu = 4;
	MOVLW       4
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;main.c,54 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVLW       4
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,55 :: 		}
L_main5:
;main.c,57 :: 		if (Button(&PORTB, 1, 1, 1))    // Detect logical one
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main6
;main.c,59 :: 		oldstate1 = 1;                              // Update flag
	BSF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;main.c,60 :: 		}
L_main6:
;main.c,61 :: 		if (oldstate1 && Button(&PORTB, 1, 1, 0))    // Detect one-to-zero transition
	BTFSS       main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
	GOTO        L_main9
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       1
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
L__main45:
;main.c,63 :: 		oldstate1 = 0;                              // Update flag
	BCF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;main.c,64 :: 		menu = 6;
	MOVLW       6
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;main.c,65 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVLW       6
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,66 :: 		}
L_main9:
;main.c,68 :: 		if (Button(&PORTB, 2, 1, 1))    // Detect logical one
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
;main.c,70 :: 		oldstate2 = 1;                              // Update flag
	BSF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;main.c,71 :: 		}
L_main10:
;main.c,72 :: 		if (oldstate2 && Button(&PORTB, 2, 1, 0))    // Detect one-to-zero transition
	BTFSS       main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
	GOTO        L_main13
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       2
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
L__main44:
;main.c,74 :: 		oldstate2 = 0;                              // Update flag
	BCF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;main.c,75 :: 		menu = 8;
	MOVLW       8
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;main.c,76 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVLW       8
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,77 :: 		}
L_main13:
;main.c,79 :: 		if (Button(&PORTB, 3, 1, 1))    // Detect logical one
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	MOVLW       1
	MOVWF       FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main14
;main.c,81 :: 		oldstate3 = 1;                              // Update flag
	BSF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;main.c,82 :: 		}
L_main14:
;main.c,83 :: 		if (oldstate3 && Button(&PORTB, 3, 1, 0))    // Detect one-to-zero transition
	BTFSS       main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
	GOTO        L_main17
	MOVLW       PORTB+0
	MOVWF       FARG_Button_port+0 
	MOVLW       hi_addr(PORTB+0)
	MOVWF       FARG_Button_port+1 
	MOVLW       3
	MOVWF       FARG_Button_pin+0 
	MOVLW       1
	MOVWF       FARG_Button_time_ms+0 
	CLRF        FARG_Button_active_state+0 
	CALL        _Button+0, 0
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main17
L__main43:
;main.c,85 :: 		oldstate3 = 0;                              // Update flag
	BCF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;main.c,86 :: 		menu = 1;
	MOVLW       1
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;main.c,87 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,88 :: 		}
L_main17:
;main.c,90 :: 		if(menu==1)   // préparation du pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main48
	MOVLW       1
	XORWF       main_menu_L0+0, 0 
L__main48:
	BTFSS       STATUS+0, 2 
	GOTO        L_main18
;main.c,92 :: 		n = 1;
	MOVLW       1
	MOVWF       main_n_L0+0 
	MOVLW       0
	MOVWF       main_n_L0+1 
;main.c,93 :: 		ports = 1;
	MOVLW       1
	MOVWF       main_ports_L0+0 
	MOVLW       0
	MOVWF       main_ports_L0+1 
;main.c,94 :: 		delay = 2;
	MOVLW       2
	MOVWF       main_delay_L0+0 
	MOVLW       0
	MOVWF       main_delay_L0+1 
;main.c,96 :: 		initPWM();
	CALL        _initPWM+0, 0
;main.c,97 :: 		initPseudoPWM();
	CALL        _initPseudoPWM+0, 0
;main.c,98 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;main.c,99 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVF        main_menu_L0+0, 0 
	MOVWF       R0 
	MOVF        main_menu_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,100 :: 		}
	GOTO        L_main19
L_main18:
;main.c,101 :: 		else if(menu==2)   // execution du pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main49
	MOVLW       2
	XORWF       main_menu_L0+0, 0 
L__main49:
	BTFSS       STATUS+0, 2 
	GOTO        L_main20
;main.c,103 :: 		PWM2_Set_Duty(0);
	CLRF        FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;main.c,104 :: 		for(n = 0 ; n<200*delay ; n++)
	CLRF        main_n_L0+0 
	CLRF        main_n_L0+1 
L_main21:
	MOVLW       200
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVLW       128
	XORWF       main_n_L0+1, 0 
	MOVWF       R2 
	MOVLW       128
	XORWF       R1, 0 
	SUBWF       R2, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main50
	MOVF        R0, 0 
	SUBWF       main_n_L0+0, 0 
L__main50:
	BTFSC       STATUS+0, 0 
	GOTO        L_main22
;main.c,106 :: 		PWM1_Set_Duty(n/delay);
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	MOVF        main_n_L0+0, 0 
	MOVWF       R0 
	MOVF        main_n_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;main.c,107 :: 		PWMD_Set_Duty(ports,n/delay);
	MOVF        main_ports_L0+0, 0 
	MOVWF       FARG_PWMD_Set_Duty_pins+0 
	MOVF        main_ports_L0+1, 0 
	MOVWF       FARG_PWMD_Set_Duty_pins+1 
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	MOVF        main_n_L0+0, 0 
	MOVWF       R0 
	MOVF        main_n_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_PWMD_Set_Duty_n+0 
	MOVF        R1, 0 
	MOVWF       FARG_PWMD_Set_Duty_n+1 
	CALL        _PWMD_Set_Duty+0, 0
;main.c,104 :: 		for(n = 0 ; n<200*delay ; n++)
	INFSNZ      main_n_L0+0, 1 
	INCF        main_n_L0+1, 1 
;main.c,108 :: 		}
	GOTO        L_main21
L_main22:
;main.c,110 :: 		PWM1_Set_Duty(0);
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;main.c,111 :: 		for(n = 200*delay ; n > 0 ; n--)
	MOVLW       200
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	CALL        _Mul_16x16_U+0, 0
	MOVF        R0, 0 
	MOVWF       main_n_L0+0 
	MOVF        R1, 0 
	MOVWF       main_n_L0+1 
L_main24:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_n_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main51
	MOVF        main_n_L0+0, 0 
	SUBLW       0
L__main51:
	BTFSC       STATUS+0, 0 
	GOTO        L_main25
;main.c,113 :: 		PWM2_Set_Duty(n/delay);
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	MOVF        main_n_L0+0, 0 
	MOVWF       R0 
	MOVF        main_n_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;main.c,114 :: 		PWMD_Set_Duty(ports,n/delay);
	MOVF        main_ports_L0+0, 0 
	MOVWF       FARG_PWMD_Set_Duty_pins+0 
	MOVF        main_ports_L0+1, 0 
	MOVWF       FARG_PWMD_Set_Duty_pins+1 
	MOVF        main_delay_L0+0, 0 
	MOVWF       R4 
	MOVF        main_delay_L0+1, 0 
	MOVWF       R5 
	MOVF        main_n_L0+0, 0 
	MOVWF       R0 
	MOVF        main_n_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_PWMD_Set_Duty_n+0 
	MOVF        R1, 0 
	MOVWF       FARG_PWMD_Set_Duty_n+1 
	CALL        _PWMD_Set_Duty+0, 0
;main.c,111 :: 		for(n = 200*delay ; n > 0 ; n--)
	MOVLW       1
	SUBWF       main_n_L0+0, 1 
	MOVLW       0
	SUBWFB      main_n_L0+1, 1 
;main.c,115 :: 		}
	GOTO        L_main24
L_main25:
;main.c,116 :: 		ports = ports*2 + 1;
	MOVF        main_ports_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ports_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       1
	ADDWF       R0, 0 
	MOVWF       R2 
	MOVLW       0
	ADDWFC      R1, 0 
	MOVWF       R3 
	MOVF        R2, 0 
	MOVWF       main_ports_L0+0 
	MOVF        R3, 0 
	MOVWF       main_ports_L0+1 
;main.c,117 :: 		ports = (ports>0xFF)?1:ports;
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R3, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main52
	MOVF        R2, 0 
	SUBLW       255
L__main52:
	BTFSC       STATUS+0, 0 
	GOTO        L_main27
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	GOTO        L_main28
L_main27:
	MOVF        main_ports_L0+0, 0 
	MOVWF       R0 
	MOVF        main_ports_L0+1, 0 
	MOVWF       R1 
L_main28:
	MOVF        R0, 0 
	MOVWF       main_ports_L0+0 
	MOVF        R1, 0 
	MOVWF       main_ports_L0+1 
;main.c,118 :: 		}
	GOTO        L_main29
L_main20:
;main.c,119 :: 		else if(menu==3)
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main53
	MOVLW       3
	XORWF       main_menu_L0+0, 0 
L__main53:
	BTFSS       STATUS+0, 2 
	GOTO        L_main30
;main.c,121 :: 		PWM1_Stop();
	CALL        _PWM1_Stop+0, 0
;main.c,122 :: 		PWM2_Stop();
	CALL        _PWM2_Stop+0, 0
;main.c,123 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;main.c,124 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVF        main_menu_L0+0, 0 
	MOVWF       R0 
	MOVF        main_menu_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,125 :: 		}
	GOTO        L_main31
L_main30:
;main.c,126 :: 		else if(menu==4)   /// initialisation du glcd
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main54
	MOVLW       4
	XORWF       main_menu_L0+0, 0 
L__main54:
	BTFSS       STATUS+0, 2 
	GOTO        L_main32
;main.c,128 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;main.c,129 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;main.c,130 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVF        main_menu_L0+0, 0 
	MOVWF       R0 
	MOVF        main_menu_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,131 :: 		}
	GOTO        L_main33
L_main32:
;main.c,132 :: 		else if(menu==5)       /// introduction sur LCD
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main55
	MOVLW       5
	XORWF       main_menu_L0+0, 0 
L__main55:
	BTFSS       STATUS+0, 2 
	GOTO        L_main34
;main.c,134 :: 		Glcd_Image(image_ISIMA);
	MOVLW       _image_isima+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;main.c,135 :: 		}
	GOTO        L_main35
L_main34:
;main.c,136 :: 		else if(menu==6)   /// initialisation pour afficher sur LED
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main56
	MOVLW       6
	XORWF       main_menu_L0+0, 0 
L__main56:
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
;main.c,138 :: 		LED_init();
	CALL        _LED_init+0, 0
;main.c,139 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;main.c,140 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVF        main_menu_L0+0, 0 
	MOVWF       R0 
	MOVF        main_menu_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,141 :: 		}
	GOTO        L_main37
L_main36:
;main.c,142 :: 		else if(menu==7)       /// compte à rebours de 9 à 0
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main57
	MOVLW       7
	XORWF       main_menu_L0+0, 0 
L__main57:
	BTFSS       STATUS+0, 2 
	GOTO        L_main38
;main.c,144 :: 		decompte();
	CALL        _decompte+0, 0
;main.c,145 :: 		}
	GOTO        L_main39
L_main38:
;main.c,146 :: 		else if(menu==8)       /// initialisation pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main58
	MOVLW       8
	XORWF       main_menu_L0+0, 0 
L__main58:
	BTFSS       STATUS+0, 2 
	GOTO        L_main40
;main.c,148 :: 		initPWM();
	CALL        _initPWM+0, 0
;main.c,149 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;main.c,150 :: 		menu %= nbEtapes;
	MOVF        main_nbEtapes_L0+0, 0 
	MOVWF       R4 
	MOVF        main_nbEtapes_L0+1, 0 
	MOVWF       R5 
	MOVF        main_menu_L0+0, 0 
	MOVWF       R0 
	MOVF        main_menu_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVF        R0, 0 
	MOVWF       main_menu_L0+0 
	MOVF        R1, 0 
	MOVWF       main_menu_L0+1 
;main.c,151 :: 		}
	GOTO        L_main41
L_main40:
;main.c,152 :: 		else if(menu==9)       /// fondue rgb
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main59
	MOVLW       9
	XORWF       main_menu_L0+0, 0 
L__main59:
	BTFSS       STATUS+0, 2 
	GOTO        L_main42
;main.c,154 :: 		fondu();
	CALL        _fondu+0, 0
;main.c,155 :: 		}
L_main42:
L_main41:
L_main39:
L_main37:
L_main35:
L_main33:
L_main31:
L_main29:
L_main19:
;main.c,156 :: 		}
	GOTO        L_main0
;main.c,157 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
