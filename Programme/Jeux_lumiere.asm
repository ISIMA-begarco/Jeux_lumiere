
_main:

;Jeux_lumiere.c,31 :: 		void main()
;Jeux_lumiere.c,34 :: 		int n = 1;
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
	CLRF        main_menu_L0+0 
	CLRF        main_menu_L0+1 
;Jeux_lumiere.c,47 :: 		ADCON0  = 0;                                    // Configure AN pins as digital I/O
	CLRF        ADCON0+0 
;Jeux_lumiere.c,48 :: 		ADCON1 = 0;
	CLRF        ADCON1+0 
;Jeux_lumiere.c,49 :: 		TRISB0_bit = 1;                                // set RB0 pin as input
	BSF         TRISB0_bit+0, BitPos(TRISB0_bit+0) 
;Jeux_lumiere.c,50 :: 		TRISE1_bit = 1;                                // set RB1 pin as input
	BSF         TRISE1_bit+0, BitPos(TRISE1_bit+0) 
;Jeux_lumiere.c,51 :: 		TRISB2_bit = 1;                                // set RB2 pin as input
	BSF         TRISB2_bit+0, BitPos(TRISB2_bit+0) 
;Jeux_lumiere.c,52 :: 		TRISB3_bit = 1;                                // set RB3 pin as input
	BSF         TRISB3_bit+0, BitPos(TRISB3_bit+0) 
;Jeux_lumiere.c,54 :: 		oldstate0 = 0;
	BCF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;Jeux_lumiere.c,55 :: 		oldstate1 = 0;
	BCF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;Jeux_lumiere.c,56 :: 		oldstate2 = 0;
	BCF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;Jeux_lumiere.c,57 :: 		oldstate3 = 0;
	BCF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;Jeux_lumiere.c,60 :: 		while(1)
L_main0:
;Jeux_lumiere.c,63 :: 		if (Button(&PORTB, 0, 1, 1))    // Detect logical one
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
;Jeux_lumiere.c,65 :: 		oldstate0 = 1;                              // Update flag
	BSF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;Jeux_lumiere.c,66 :: 		}
L_main2:
;Jeux_lumiere.c,67 :: 		if (oldstate0 && Button(&PORTB, 0, 1, 0))    // Detect one-to-zero transition
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
;Jeux_lumiere.c,69 :: 		oldstate0 = 0;                              // Update flag
	BCF         main_oldstate0_L0+0, BitPos(main_oldstate0_L0+0) 
;Jeux_lumiere.c,70 :: 		menu = 4;
	MOVLW       4
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;Jeux_lumiere.c,71 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,72 :: 		}
L_main5:
;Jeux_lumiere.c,74 :: 		if (Button(&PORTB, 1, 1, 1))    // Detect logical one
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
;Jeux_lumiere.c,76 :: 		oldstate1 = 1;                              // Update flag
	BSF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;Jeux_lumiere.c,77 :: 		}
L_main6:
;Jeux_lumiere.c,78 :: 		if (oldstate1 && Button(&PORTB, 1, 1, 0))    // Detect one-to-zero transition
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
;Jeux_lumiere.c,80 :: 		oldstate1 = 0;                              // Update flag
	BCF         main_oldstate1_L0+0, BitPos(main_oldstate1_L0+0) 
;Jeux_lumiere.c,81 :: 		menu = 6;
	MOVLW       6
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;Jeux_lumiere.c,82 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,83 :: 		}
L_main9:
;Jeux_lumiere.c,85 :: 		if (Button(&PORTB, 2, 1, 1))    // Detect logical one
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
;Jeux_lumiere.c,87 :: 		oldstate2 = 1;                              // Update flag
	BSF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;Jeux_lumiere.c,88 :: 		}
L_main10:
;Jeux_lumiere.c,89 :: 		if (oldstate2 && Button(&PORTB, 2, 1, 0))    // Detect one-to-zero transition
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
;Jeux_lumiere.c,91 :: 		oldstate2 = 0;                              // Update flag
	BCF         main_oldstate2_L0+0, BitPos(main_oldstate2_L0+0) 
;Jeux_lumiere.c,92 :: 		menu = 8;
	MOVLW       8
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;Jeux_lumiere.c,93 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,94 :: 		}
L_main13:
;Jeux_lumiere.c,96 :: 		if (Button(&PORTB, 3, 1, 1))    // Detect logical one
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
;Jeux_lumiere.c,98 :: 		oldstate3 = 1;                              // Update flag
	BSF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;Jeux_lumiere.c,99 :: 		}
L_main14:
;Jeux_lumiere.c,100 :: 		if (oldstate3 && Button(&PORTB, 3, 1, 0))    // Detect one-to-zero transition
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
;Jeux_lumiere.c,102 :: 		oldstate3 = 0;                              // Update flag
	BCF         main_oldstate3_L0+0, BitPos(main_oldstate3_L0+0) 
;Jeux_lumiere.c,103 :: 		menu = 1;
	MOVLW       1
	MOVWF       main_menu_L0+0 
	MOVLW       0
	MOVWF       main_menu_L0+1 
;Jeux_lumiere.c,104 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,105 :: 		}
L_main17:
;Jeux_lumiere.c,107 :: 		if(menu==1)   // préparation du pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main48
	MOVLW       1
	XORWF       main_menu_L0+0, 0 
L__main48:
	BTFSS       STATUS+0, 2 
	GOTO        L_main18
;Jeux_lumiere.c,109 :: 		n = 1;
	MOVLW       1
	MOVWF       main_n_L0+0 
	MOVLW       0
	MOVWF       main_n_L0+1 
;Jeux_lumiere.c,110 :: 		ports = 1;
	MOVLW       1
	MOVWF       main_ports_L0+0 
	MOVLW       0
	MOVWF       main_ports_L0+1 
;Jeux_lumiere.c,111 :: 		delay = 2;
	MOVLW       2
	MOVWF       main_delay_L0+0 
	MOVLW       0
	MOVWF       main_delay_L0+1 
;Jeux_lumiere.c,113 :: 		initPWM();
	CALL        _initPWM+0, 0
;Jeux_lumiere.c,114 :: 		initPseudoPWM();
	CALL        _initPseudoPWM+0, 0
;Jeux_lumiere.c,115 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;Jeux_lumiere.c,116 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,117 :: 		}
	GOTO        L_main19
L_main18:
;Jeux_lumiere.c,118 :: 		else if(menu==2)   // execution du pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main49
	MOVLW       2
	XORWF       main_menu_L0+0, 0 
L__main49:
	BTFSS       STATUS+0, 2 
	GOTO        L_main20
;Jeux_lumiere.c,120 :: 		PWM2_Set_Duty(0);
	CLRF        FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;Jeux_lumiere.c,121 :: 		for(n = 0 ; n<200*delay ; n++)
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
;Jeux_lumiere.c,123 :: 		PWM1_Set_Duty(n/delay);
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
;Jeux_lumiere.c,124 :: 		PWMD_Set_Duty(ports,n/delay);
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
;Jeux_lumiere.c,121 :: 		for(n = 0 ; n<200*delay ; n++)
	INFSNZ      main_n_L0+0, 1 
	INCF        main_n_L0+1, 1 
;Jeux_lumiere.c,125 :: 		}
	GOTO        L_main21
L_main22:
;Jeux_lumiere.c,127 :: 		PWM1_Set_Duty(0);
	CLRF        FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;Jeux_lumiere.c,128 :: 		for(n = 200*delay ; n > 0 ; n--)
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
;Jeux_lumiere.c,130 :: 		PWM2_Set_Duty(n/delay);
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
;Jeux_lumiere.c,131 :: 		PWMD_Set_Duty(ports,n/delay);
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
;Jeux_lumiere.c,128 :: 		for(n = 200*delay ; n > 0 ; n--)
	MOVLW       1
	SUBWF       main_n_L0+0, 1 
	MOVLW       0
	SUBWFB      main_n_L0+1, 1 
;Jeux_lumiere.c,132 :: 		}
	GOTO        L_main24
L_main25:
;Jeux_lumiere.c,133 :: 		ports = ports*2 + 1;
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
;Jeux_lumiere.c,134 :: 		ports = (ports>0xFF)?1:ports;
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
;Jeux_lumiere.c,135 :: 		}
	GOTO        L_main29
L_main20:
;Jeux_lumiere.c,136 :: 		else if(menu==3)
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main53
	MOVLW       3
	XORWF       main_menu_L0+0, 0 
L__main53:
	BTFSS       STATUS+0, 2 
	GOTO        L_main30
;Jeux_lumiere.c,138 :: 		PWM1_Stop();
	CALL        _PWM1_Stop+0, 0
;Jeux_lumiere.c,139 :: 		PWM2_Stop();
	CALL        _PWM2_Stop+0, 0
;Jeux_lumiere.c,140 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;Jeux_lumiere.c,141 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,142 :: 		}
	GOTO        L_main31
L_main30:
;Jeux_lumiere.c,143 :: 		else if(menu==4)   /// initialisation du glcd
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main54
	MOVLW       4
	XORWF       main_menu_L0+0, 0 
L__main54:
	BTFSS       STATUS+0, 2 
	GOTO        L_main32
;Jeux_lumiere.c,145 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;Jeux_lumiere.c,146 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;Jeux_lumiere.c,147 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,148 :: 		}
	GOTO        L_main33
L_main32:
;Jeux_lumiere.c,149 :: 		else if(menu==5)       /// introduction sur LCD
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main55
	MOVLW       5
	XORWF       main_menu_L0+0, 0 
L__main55:
	BTFSS       STATUS+0, 2 
	GOTO        L_main34
;Jeux_lumiere.c,151 :: 		Glcd_Image(image_ISIMA);
	MOVLW       _image_isima+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Jeux_lumiere.c,152 :: 		}
	GOTO        L_main35
L_main34:
;Jeux_lumiere.c,153 :: 		else if(menu==6)   /// initialisation pour afficher sur LED
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main56
	MOVLW       6
	XORWF       main_menu_L0+0, 0 
L__main56:
	BTFSS       STATUS+0, 2 
	GOTO        L_main36
;Jeux_lumiere.c,155 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,156 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;Jeux_lumiere.c,157 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,158 :: 		}
	GOTO        L_main37
L_main36:
;Jeux_lumiere.c,159 :: 		else if(menu==7)       /// compte à rebours de 9 à 0
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main57
	MOVLW       7
	XORWF       main_menu_L0+0, 0 
L__main57:
	BTFSS       STATUS+0, 2 
	GOTO        L_main38
;Jeux_lumiere.c,161 :: 		decompte();
	CALL        _decompte+0, 0
;Jeux_lumiere.c,162 :: 		}
	GOTO        L_main39
L_main38:
;Jeux_lumiere.c,163 :: 		else if(menu==8)       /// initialisation pwm
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main58
	MOVLW       8
	XORWF       main_menu_L0+0, 0 
L__main58:
	BTFSS       STATUS+0, 2 
	GOTO        L_main40
;Jeux_lumiere.c,165 :: 		initPWM();
	CALL        _initPWM+0, 0
;Jeux_lumiere.c,166 :: 		menu++;
	INFSNZ      main_menu_L0+0, 1 
	INCF        main_menu_L0+1, 1 
;Jeux_lumiere.c,167 :: 		menu %= nbEtapes;
	MOVF        _nbEtapes+0, 0 
	MOVWF       R4 
	MOVF        _nbEtapes+1, 0 
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
;Jeux_lumiere.c,168 :: 		}
	GOTO        L_main41
L_main40:
;Jeux_lumiere.c,169 :: 		else if(menu==9)       /// fondue rgb
	MOVLW       0
	XORWF       main_menu_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main59
	MOVLW       9
	XORWF       main_menu_L0+0, 0 
L__main59:
	BTFSS       STATUS+0, 2 
	GOTO        L_main42
;Jeux_lumiere.c,171 :: 		fondue();
	CALL        _fondue+0, 0
;Jeux_lumiere.c,172 :: 		}
L_main42:
L_main41:
L_main39:
L_main37:
L_main35:
L_main33:
L_main31:
L_main29:
L_main19:
;Jeux_lumiere.c,173 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,174 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
