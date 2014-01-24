
_main:

;Jeux_lumiere.c,45 :: 		void main()
;Jeux_lumiere.c,48 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,49 :: 		OSCCON = 0b01110011;
	MOVLW       115
	MOVWF       OSCCON+0 
;Jeux_lumiere.c,52 :: 		while(1)
L_main0:
;Jeux_lumiere.c,54 :: 		decompte();
	CALL        _decompte+0, 0
;Jeux_lumiere.c,55 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,56 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

_LED_zero:

;Jeux_lumiere.c,65 :: 		void LED_zero()
;Jeux_lumiere.c,67 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;Jeux_lumiere.c,68 :: 		LATB = 0b10000001;
	MOVLW       129
	MOVWF       LATB+0 
;Jeux_lumiere.c,69 :: 		LATC = 0b10000001;
	MOVLW       129
	MOVWF       LATC+0 
;Jeux_lumiere.c,70 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,71 :: 		}
L_end_LED_zero:
	RETURN      0
; end of _LED_zero

_LED_un:

;Jeux_lumiere.c,73 :: 		void LED_un()
;Jeux_lumiere.c,75 :: 		LATA = 0b1000;
	MOVLW       8
	MOVWF       LATA+0 
;Jeux_lumiere.c,76 :: 		LATB = 0b100;
	MOVLW       4
	MOVWF       LATB+0 
;Jeux_lumiere.c,77 :: 		LATC = 0b10;
	MOVLW       2
	MOVWF       LATC+0 
;Jeux_lumiere.c,78 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,79 :: 		}
L_end_LED_un:
	RETURN      0
; end of _LED_un

_LED_deux:

;Jeux_lumiere.c,81 :: 		void LED_deux()
;Jeux_lumiere.c,83 :: 		LATA = 0b11111001;
	MOVLW       249
	MOVWF       LATA+0 
;Jeux_lumiere.c,84 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,85 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,86 :: 		LATD = 0b10001111;
	MOVLW       143
	MOVWF       LATD+0 
;Jeux_lumiere.c,87 :: 		}
L_end_LED_deux:
	RETURN      0
; end of _LED_deux

_LED_trois:

;Jeux_lumiere.c,89 :: 		void LED_trois()
;Jeux_lumiere.c,91 :: 		LATA = 0b10000001;
	MOVLW       129
	MOVWF       LATA+0 
;Jeux_lumiere.c,92 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,93 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,94 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,95 :: 		}
L_end_LED_trois:
	RETURN      0
; end of _LED_trois

_LED_quatre:

;Jeux_lumiere.c,97 :: 		void LED_quatre()
;Jeux_lumiere.c,99 :: 		LATA = 0b00001111;
	MOVLW       15
	MOVWF       LATA+0 
;Jeux_lumiere.c,100 :: 		LATB = 0b00001000;
	MOVLW       8
	MOVWF       LATB+0 
;Jeux_lumiere.c,101 :: 		LATC = 0b00001000;
	MOVLW       8
	MOVWF       LATC+0 
;Jeux_lumiere.c,102 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,103 :: 		}
L_end_LED_quatre:
	RETURN      0
; end of _LED_quatre

_LED_cinq:

;Jeux_lumiere.c,105 :: 		void LED_cinq()
;Jeux_lumiere.c,107 :: 		LATA = 0b10001111;
	MOVLW       143
	MOVWF       LATA+0 
;Jeux_lumiere.c,108 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,109 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,110 :: 		LATD = 0b11111001;
	MOVLW       249
	MOVWF       LATD+0 
;Jeux_lumiere.c,111 :: 		}
L_end_LED_cinq:
	RETURN      0
; end of _LED_cinq

_LED_six:

;Jeux_lumiere.c,113 :: 		void LED_six()
;Jeux_lumiere.c,115 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;Jeux_lumiere.c,116 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,117 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,118 :: 		LATD = 0b11111001;
	MOVLW       249
	MOVWF       LATD+0 
;Jeux_lumiere.c,119 :: 		}
L_end_LED_six:
	RETURN      0
; end of _LED_six

_LED_sept:

;Jeux_lumiere.c,121 :: 		void LED_sept()
;Jeux_lumiere.c,123 :: 		LATA = 0b1;
	MOVLW       1
	MOVWF       LATA+0 
;Jeux_lumiere.c,124 :: 		LATB = 0b1;
	MOVLW       1
	MOVWF       LATB+0 
;Jeux_lumiere.c,125 :: 		LATC = 0b1;
	MOVLW       1
	MOVWF       LATC+0 
;Jeux_lumiere.c,126 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,127 :: 		}
L_end_LED_sept:
	RETURN      0
; end of _LED_sept

_LED_huit:

;Jeux_lumiere.c,129 :: 		void LED_huit()
;Jeux_lumiere.c,131 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;Jeux_lumiere.c,132 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,133 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,134 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,135 :: 		}
L_end_LED_huit:
	RETURN      0
; end of _LED_huit

_LED_neuf:

;Jeux_lumiere.c,137 :: 		void LED_neuf()
;Jeux_lumiere.c,139 :: 		LATA = 0b10001111;
	MOVLW       143
	MOVWF       LATA+0 
;Jeux_lumiere.c,140 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;Jeux_lumiere.c,141 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;Jeux_lumiere.c,142 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;Jeux_lumiere.c,143 :: 		}
L_end_LED_neuf:
	RETURN      0
; end of _LED_neuf

_LED_raz:

;Jeux_lumiere.c,145 :: 		void LED_raz()
;Jeux_lumiere.c,147 :: 		LATA = 0;
	CLRF        LATA+0 
;Jeux_lumiere.c,148 :: 		LATB = 0;
	CLRF        LATB+0 
;Jeux_lumiere.c,149 :: 		LATC = 0;
	CLRF        LATC+0 
;Jeux_lumiere.c,150 :: 		LATD = 0;
	CLRF        LATD+0 
;Jeux_lumiere.c,151 :: 		}
L_end_LED_raz:
	RETURN      0
; end of _LED_raz

_compte:

;Jeux_lumiere.c,153 :: 		void compte()
;Jeux_lumiere.c,155 :: 		int i = 0;
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
;Jeux_lumiere.c,156 :: 		for(i=0; i<10; i++)
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
L_compte2:
	MOVLW       128
	XORWF       compte_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__compte36
	MOVLW       10
	SUBWF       compte_i_L0+0, 0 
L__compte36:
	BTFSC       STATUS+0, 0 
	GOTO        L_compte3
;Jeux_lumiere.c,158 :: 		chiffre(i);
	MOVF        compte_i_L0+0, 0 
	MOVWF       FARG_chiffre_i+0 
	MOVF        compte_i_L0+1, 0 
	MOVWF       FARG_chiffre_i+1 
	CALL        _chiffre+0, 0
;Jeux_lumiere.c,159 :: 		WAIT;
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
;Jeux_lumiere.c,156 :: 		for(i=0; i<10; i++)
	INFSNZ      compte_i_L0+0, 1 
	INCF        compte_i_L0+1, 1 
;Jeux_lumiere.c,160 :: 		}
	GOTO        L_compte2
L_compte3:
;Jeux_lumiere.c,161 :: 		}
L_end_compte:
	RETURN      0
; end of _compte

_chiffre:

;Jeux_lumiere.c,163 :: 		void chiffre(int i)
;Jeux_lumiere.c,165 :: 		switch(i)
	GOTO        L_chiffre6
;Jeux_lumiere.c,167 :: 		case 0:
L_chiffre8:
;Jeux_lumiere.c,168 :: 		LED_zero();
	CALL        _LED_zero+0, 0
;Jeux_lumiere.c,169 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,170 :: 		case 1:
L_chiffre9:
;Jeux_lumiere.c,171 :: 		LED_un();
	CALL        _LED_un+0, 0
;Jeux_lumiere.c,172 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,173 :: 		case 2:
L_chiffre10:
;Jeux_lumiere.c,174 :: 		LED_deux();
	CALL        _LED_deux+0, 0
;Jeux_lumiere.c,175 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,176 :: 		case 3:
L_chiffre11:
;Jeux_lumiere.c,177 :: 		LED_trois();
	CALL        _LED_trois+0, 0
;Jeux_lumiere.c,178 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,179 :: 		case 4:
L_chiffre12:
;Jeux_lumiere.c,180 :: 		LED_quatre();
	CALL        _LED_quatre+0, 0
;Jeux_lumiere.c,181 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,182 :: 		case 5:
L_chiffre13:
;Jeux_lumiere.c,183 :: 		LED_cinq();
	CALL        _LED_cinq+0, 0
;Jeux_lumiere.c,184 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,185 :: 		case 6:
L_chiffre14:
;Jeux_lumiere.c,186 :: 		LED_six();
	CALL        _LED_six+0, 0
;Jeux_lumiere.c,187 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,188 :: 		case 7:
L_chiffre15:
;Jeux_lumiere.c,189 :: 		LED_sept();
	CALL        _LED_sept+0, 0
;Jeux_lumiere.c,190 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,191 :: 		case 8:
L_chiffre16:
;Jeux_lumiere.c,192 :: 		LED_huit();
	CALL        _LED_huit+0, 0
;Jeux_lumiere.c,193 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,194 :: 		case 9:
L_chiffre17:
;Jeux_lumiere.c,195 :: 		LED_neuf();
	CALL        _LED_neuf+0, 0
;Jeux_lumiere.c,196 :: 		break;
	GOTO        L_chiffre7
;Jeux_lumiere.c,197 :: 		default:
L_chiffre18:
;Jeux_lumiere.c,198 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;Jeux_lumiere.c,199 :: 		}
	GOTO        L_chiffre7
L_chiffre6:
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre38
	MOVLW       0
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre38:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre8
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre39
	MOVLW       1
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre39:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre9
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre40
	MOVLW       2
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre40:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre10
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre41
	MOVLW       3
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre41:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre11
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre42
	MOVLW       4
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre42:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre12
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre43
	MOVLW       5
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre43:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre13
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre44
	MOVLW       6
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre44:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre14
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre45
	MOVLW       7
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre45:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre15
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre46
	MOVLW       8
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre46:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre16
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre47
	MOVLW       9
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre47:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre17
	GOTO        L_chiffre18
L_chiffre7:
;Jeux_lumiere.c,200 :: 		}
L_end_chiffre:
	RETURN      0
; end of _chiffre

_decompte:

;Jeux_lumiere.c,202 :: 		void decompte()
;Jeux_lumiere.c,204 :: 		int i = 0;
	CLRF        decompte_i_L0+0 
	CLRF        decompte_i_L0+1 
;Jeux_lumiere.c,205 :: 		for(i = 9 ; i >= 0 ; i--)
	MOVLW       9
	MOVWF       decompte_i_L0+0 
	MOVLW       0
	MOVWF       decompte_i_L0+1 
L_decompte19:
	MOVLW       128
	XORWF       decompte_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decompte49
	MOVLW       0
	SUBWF       decompte_i_L0+0, 0 
L__decompte49:
	BTFSS       STATUS+0, 0 
	GOTO        L_decompte20
;Jeux_lumiere.c,207 :: 		chiffre(i);
	MOVF        decompte_i_L0+0, 0 
	MOVWF       FARG_chiffre_i+0 
	MOVF        decompte_i_L0+1, 0 
	MOVWF       FARG_chiffre_i+1 
	CALL        _chiffre+0, 0
;Jeux_lumiere.c,208 :: 		WAIT;
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_decompte22:
	DECFSZ      R13, 1, 1
	BRA         L_decompte22
	DECFSZ      R12, 1, 1
	BRA         L_decompte22
	DECFSZ      R11, 1, 1
	BRA         L_decompte22
	NOP
	NOP
;Jeux_lumiere.c,205 :: 		for(i = 9 ; i >= 0 ; i--)
	MOVLW       1
	SUBWF       decompte_i_L0+0, 1 
	MOVLW       0
	SUBWFB      decompte_i_L0+1, 1 
;Jeux_lumiere.c,209 :: 		}
	GOTO        L_decompte19
L_decompte20:
;Jeux_lumiere.c,210 :: 		}
L_end_decompte:
	RETURN      0
; end of _decompte

_LED_init:

;Jeux_lumiere.c,212 :: 		void LED_init()
;Jeux_lumiere.c,215 :: 		PORTA = 0;
	CLRF        PORTA+0 
;Jeux_lumiere.c,216 :: 		PORTB = 0;
	CLRF        PORTB+0 
;Jeux_lumiere.c,217 :: 		PORTC = 0;
	CLRF        PORTC+0 
;Jeux_lumiere.c,218 :: 		PORTD = 0;
	CLRF        PORTD+0 
;Jeux_lumiere.c,219 :: 		PORTE = 0;
	CLRF        PORTE+0 
;Jeux_lumiere.c,222 :: 		TRISA = 0;
	CLRF        TRISA+0 
;Jeux_lumiere.c,223 :: 		TRISB = 0;
	CLRF        TRISB+0 
;Jeux_lumiere.c,224 :: 		TRISC = 0;
	CLRF        TRISC+0 
;Jeux_lumiere.c,225 :: 		TRISD = 0;
	CLRF        TRISD+0 
;Jeux_lumiere.c,226 :: 		}
L_end_LED_init:
	RETURN      0
; end of _LED_init
