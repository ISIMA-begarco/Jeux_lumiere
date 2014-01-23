
_main:

;Jeux_lumiere.c,30 :: 		void main() {
;Jeux_lumiere.c,32 :: 		int i = 0;
;Jeux_lumiere.c,35 :: 		PORTA = 0;
	CLRF        PORTA+0 
;Jeux_lumiere.c,36 :: 		PORTB = 0;
	CLRF        PORTB+0 
;Jeux_lumiere.c,37 :: 		PORTC = 0;
	CLRF        PORTC+0 
;Jeux_lumiere.c,38 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Jeux_lumiere.c,39 :: 		PORTE = 0;
	CLRF        PORTE+0 
;Jeux_lumiere.c,42 :: 		TRISA = 0;
	CLRF        TRISA+0 
;Jeux_lumiere.c,43 :: 		TRISB = 0;
	CLRF        TRISB+0 
;Jeux_lumiere.c,44 :: 		TRISC = 0;
	CLRF        TRISC+0 
;Jeux_lumiere.c,45 :: 		TRISD = 0;
	CLRF        TRISD+0 
;Jeux_lumiere.c,48 :: 		while(1){
L_main0:
;Jeux_lumiere.c,49 :: 		compte();
	CALL        _compte+0, 0
;Jeux_lumiere.c,50 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,51 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_LED_zero:

;Jeux_lumiere.c,60 :: 		void LED_zero()
;Jeux_lumiere.c,62 :: 		PORTA = 0xFF;
	MOVLW       255
	MOVWF       PORTA+0 
;Jeux_lumiere.c,63 :: 		PORTB = 0b10000001;
	MOVLW       129
	MOVWF       PORTB+0 
;Jeux_lumiere.c,64 :: 		PORTC = 0b10000001;
	MOVLW       129
	MOVWF       PORTC+0 
;Jeux_lumiere.c,65 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,66 :: 		}
L_end_LED_zero:
	RETURN      0
; end of _LED_zero

_LED_un:

;Jeux_lumiere.c,68 :: 		void LED_un()
;Jeux_lumiere.c,70 :: 		PORTA = 0b1000;
	MOVLW       8
	MOVWF       PORTA+0 
;Jeux_lumiere.c,71 :: 		PORTB = 0b100;
	MOVLW       4
	MOVWF       PORTB+0 
;Jeux_lumiere.c,72 :: 		PORTC = 0b10;
	MOVLW       2
	MOVWF       PORTC+0 
;Jeux_lumiere.c,73 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,74 :: 		}
L_end_LED_un:
	RETURN      0
; end of _LED_un

_LED_deux:

;Jeux_lumiere.c,76 :: 		void LED_deux()
;Jeux_lumiere.c,78 :: 		PORTA = 0b11110001;
	MOVLW       241
	MOVWF       PORTA+0 
;Jeux_lumiere.c,79 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,80 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,81 :: 		PORTD = 0b10011111;
	MOVLW       159
	MOVWF       PORTD+0 
;Jeux_lumiere.c,82 :: 		}
L_end_LED_deux:
	RETURN      0
; end of _LED_deux

_LED_trois:

;Jeux_lumiere.c,84 :: 		void LED_trois()
;Jeux_lumiere.c,86 :: 		PORTA = 0b10000001;
	MOVLW       129
	MOVWF       PORTA+0 
;Jeux_lumiere.c,87 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,88 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,89 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,90 :: 		}
L_end_LED_trois:
	RETURN      0
; end of _LED_trois

_LED_quatre:

;Jeux_lumiere.c,92 :: 		void LED_quatre()
;Jeux_lumiere.c,94 :: 		PORTA = 0b00011111;
	MOVLW       31
	MOVWF       PORTA+0 
;Jeux_lumiere.c,95 :: 		PORTB = 0b00010000;
	MOVLW       16
	MOVWF       PORTB+0 
;Jeux_lumiere.c,96 :: 		PORTC = 0b00010000;
	MOVLW       16
	MOVWF       PORTC+0 
;Jeux_lumiere.c,97 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,98 :: 		}
L_end_LED_quatre:
	RETURN      0
; end of _LED_quatre

_LED_cinq:

;Jeux_lumiere.c,100 :: 		void LED_cinq()
;Jeux_lumiere.c,102 :: 		PORTA = 0b10011111;
	MOVLW       159
	MOVWF       PORTA+0 
;Jeux_lumiere.c,103 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,104 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,105 :: 		PORTD = 0b11110001;
	MOVLW       241
	MOVWF       PORTD+0 
;Jeux_lumiere.c,106 :: 		}
L_end_LED_cinq:
	RETURN      0
; end of _LED_cinq

_LED_six:

;Jeux_lumiere.c,108 :: 		void LED_six()
;Jeux_lumiere.c,110 :: 		PORTA = 0xFF;
	MOVLW       255
	MOVWF       PORTA+0 
;Jeux_lumiere.c,111 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,112 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,113 :: 		PORTD = 0b11110001;
	MOVLW       241
	MOVWF       PORTD+0 
;Jeux_lumiere.c,114 :: 		}
L_end_LED_six:
	RETURN      0
; end of _LED_six

_LED_sept:

;Jeux_lumiere.c,116 :: 		void LED_sept()
;Jeux_lumiere.c,118 :: 		PORTA = 0b1;
	MOVLW       1
	MOVWF       PORTA+0 
;Jeux_lumiere.c,119 :: 		PORTB = 0b1;
	MOVLW       1
	MOVWF       PORTB+0 
;Jeux_lumiere.c,120 :: 		PORTC = 0b1;
	MOVLW       1
	MOVWF       PORTC+0 
;Jeux_lumiere.c,121 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,122 :: 		}
L_end_LED_sept:
	RETURN      0
; end of _LED_sept

_LED_huit:

;Jeux_lumiere.c,124 :: 		void LED_huit()
;Jeux_lumiere.c,126 :: 		PORTA = 0xFF;
	MOVLW       255
	MOVWF       PORTA+0 
;Jeux_lumiere.c,127 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,128 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,129 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,130 :: 		}
L_end_LED_huit:
	RETURN      0
; end of _LED_huit

_LED_neuf:

;Jeux_lumiere.c,132 :: 		void LED_neuf()
;Jeux_lumiere.c,134 :: 		PORTA = 0b10011111;
	MOVLW       159
	MOVWF       PORTA+0 
;Jeux_lumiere.c,135 :: 		PORTB = 0b10010001;
	MOVLW       145
	MOVWF       PORTB+0 
;Jeux_lumiere.c,136 :: 		PORTC = 0b10010001;
	MOVLW       145
	MOVWF       PORTC+0 
;Jeux_lumiere.c,137 :: 		PORTD = 0xFF;
	MOVLW       255
	MOVWF       PORTD+0 
;Jeux_lumiere.c,138 :: 		}
L_end_LED_neuf:
	RETURN      0
; end of _LED_neuf

_LED_raz:

;Jeux_lumiere.c,140 :: 		void LED_raz()
;Jeux_lumiere.c,142 :: 		PORTA = 0;
	CLRF        PORTA+0 
;Jeux_lumiere.c,143 :: 		PORTB = 0;
	CLRF        PORTB+0 
;Jeux_lumiere.c,144 :: 		PORTC = 0;
	CLRF        PORTC+0 
;Jeux_lumiere.c,145 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Jeux_lumiere.c,146 :: 		}
L_end_LED_raz:
	RETURN      0
; end of _LED_raz

_compte:

;Jeux_lumiere.c,148 :: 		void compte()
;Jeux_lumiere.c,150 :: 		int i = 0;
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
;Jeux_lumiere.c,151 :: 		for(i=0; i<10; i++)
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
L_compte2:
	MOVLW       128
	XORWF       compte_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__compte28
	MOVLW       10
	SUBWF       compte_i_L0+0, 0 
L__compte28:
	BTFSC       STATUS+0, 0 
	GOTO        L_compte3
;Jeux_lumiere.c,153 :: 		LED_zero();
	CALL        _LED_zero+0, 0
;Jeux_lumiere.c,154 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte5:
	DECFSZ      R13, 1, 1
	BRA         L_compte5
	DECFSZ      R12, 1, 1
	BRA         L_compte5
	DECFSZ      R11, 1, 1
	BRA         L_compte5
	NOP
	NOP
;Jeux_lumiere.c,155 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,156 :: 		LED_un();
	CALL        _LED_un+0, 0
;Jeux_lumiere.c,157 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte6:
	DECFSZ      R13, 1, 1
	BRA         L_compte6
	DECFSZ      R12, 1, 1
	BRA         L_compte6
	DECFSZ      R11, 1, 1
	BRA         L_compte6
	NOP
	NOP
;Jeux_lumiere.c,158 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,159 :: 		LED_deux();
	CALL        _LED_deux+0, 0
;Jeux_lumiere.c,160 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte7:
	DECFSZ      R13, 1, 1
	BRA         L_compte7
	DECFSZ      R12, 1, 1
	BRA         L_compte7
	DECFSZ      R11, 1, 1
	BRA         L_compte7
	NOP
	NOP
;Jeux_lumiere.c,161 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,162 :: 		LED_trois();
	CALL        _LED_trois+0, 0
;Jeux_lumiere.c,163 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte8:
	DECFSZ      R13, 1, 1
	BRA         L_compte8
	DECFSZ      R12, 1, 1
	BRA         L_compte8
	DECFSZ      R11, 1, 1
	BRA         L_compte8
	NOP
	NOP
;Jeux_lumiere.c,164 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,165 :: 		LED_quatre();
	CALL        _LED_quatre+0, 0
;Jeux_lumiere.c,166 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte9:
	DECFSZ      R13, 1, 1
	BRA         L_compte9
	DECFSZ      R12, 1, 1
	BRA         L_compte9
	DECFSZ      R11, 1, 1
	BRA         L_compte9
	NOP
	NOP
;Jeux_lumiere.c,167 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,168 :: 		LED_cinq();
	CALL        _LED_cinq+0, 0
;Jeux_lumiere.c,169 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte10:
	DECFSZ      R13, 1, 1
	BRA         L_compte10
	DECFSZ      R12, 1, 1
	BRA         L_compte10
	DECFSZ      R11, 1, 1
	BRA         L_compte10
	NOP
	NOP
;Jeux_lumiere.c,170 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,171 :: 		LED_six();
	CALL        _LED_six+0, 0
;Jeux_lumiere.c,172 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte11:
	DECFSZ      R13, 1, 1
	BRA         L_compte11
	DECFSZ      R12, 1, 1
	BRA         L_compte11
	DECFSZ      R11, 1, 1
	BRA         L_compte11
	NOP
	NOP
;Jeux_lumiere.c,173 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,174 :: 		LED_sept();
	CALL        _LED_sept+0, 0
;Jeux_lumiere.c,175 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte12:
	DECFSZ      R13, 1, 1
	BRA         L_compte12
	DECFSZ      R12, 1, 1
	BRA         L_compte12
	DECFSZ      R11, 1, 1
	BRA         L_compte12
	NOP
	NOP
;Jeux_lumiere.c,176 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,177 :: 		LED_huit();
	CALL        _LED_huit+0, 0
;Jeux_lumiere.c,178 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte13:
	DECFSZ      R13, 1, 1
	BRA         L_compte13
	DECFSZ      R12, 1, 1
	BRA         L_compte13
	DECFSZ      R11, 1, 1
	BRA         L_compte13
	NOP
	NOP
;Jeux_lumiere.c,179 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,180 :: 		LED_neuf();
	CALL        _LED_neuf+0, 0
;Jeux_lumiere.c,181 :: 		Delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte14:
	DECFSZ      R13, 1, 1
	BRA         L_compte14
	DECFSZ      R12, 1, 1
	BRA         L_compte14
	DECFSZ      R11, 1, 1
	BRA         L_compte14
	NOP
	NOP
;Jeux_lumiere.c,182 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,151 :: 		for(i=0; i<10; i++)
	INFSNZ      compte_i_L0+0, 1 
	INCF        compte_i_L0+1, 1 
;Jeux_lumiere.c,184 :: 		}
	GOTO        L_compte2
L_compte3:
;Jeux_lumiere.c,185 :: 		}
L_end_compte:
	RETURN      0
; end of _compte
