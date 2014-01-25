
_LED_zero:

;chiffre.c,9 :: 		void LED_zero()
;chiffre.c,11 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;chiffre.c,12 :: 		LATB = 0b10000001;
	MOVLW       129
	MOVWF       LATB+0 
;chiffre.c,13 :: 		LATC = 0b10000001;
	MOVLW       129
	MOVWF       LATC+0 
;chiffre.c,14 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,15 :: 		}
L_end_LED_zero:
	RETURN      0
; end of _LED_zero

_LED_un:

;chiffre.c,17 :: 		void LED_un()
;chiffre.c,19 :: 		LATA = 0b1000;
	MOVLW       8
	MOVWF       LATA+0 
;chiffre.c,20 :: 		LATB = 0b100;
	MOVLW       4
	MOVWF       LATB+0 
;chiffre.c,21 :: 		LATC = 0b10;
	MOVLW       2
	MOVWF       LATC+0 
;chiffre.c,22 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,23 :: 		}
L_end_LED_un:
	RETURN      0
; end of _LED_un

_LED_deux:

;chiffre.c,25 :: 		void LED_deux()
;chiffre.c,27 :: 		LATA = 0b11111001;
	MOVLW       249
	MOVWF       LATA+0 
;chiffre.c,28 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,29 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,30 :: 		LATD = 0b10001111;
	MOVLW       143
	MOVWF       LATD+0 
;chiffre.c,31 :: 		}
L_end_LED_deux:
	RETURN      0
; end of _LED_deux

_LED_trois:

;chiffre.c,33 :: 		void LED_trois()
;chiffre.c,35 :: 		LATA = 0b10000001;
	MOVLW       129
	MOVWF       LATA+0 
;chiffre.c,36 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,37 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,38 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,39 :: 		}
L_end_LED_trois:
	RETURN      0
; end of _LED_trois

_LED_quatre:

;chiffre.c,41 :: 		void LED_quatre()
;chiffre.c,43 :: 		LATA = 0b00001111;
	MOVLW       15
	MOVWF       LATA+0 
;chiffre.c,44 :: 		LATB = 0b00001000;
	MOVLW       8
	MOVWF       LATB+0 
;chiffre.c,45 :: 		LATC = 0b00001000;
	MOVLW       8
	MOVWF       LATC+0 
;chiffre.c,46 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,47 :: 		}
L_end_LED_quatre:
	RETURN      0
; end of _LED_quatre

_LED_cinq:

;chiffre.c,49 :: 		void LED_cinq()
;chiffre.c,51 :: 		LATA = 0b10001111;
	MOVLW       143
	MOVWF       LATA+0 
;chiffre.c,52 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,53 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,54 :: 		LATD = 0b11111001;
	MOVLW       249
	MOVWF       LATD+0 
;chiffre.c,55 :: 		}
L_end_LED_cinq:
	RETURN      0
; end of _LED_cinq

_LED_six:

;chiffre.c,57 :: 		void LED_six()
;chiffre.c,59 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;chiffre.c,60 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,61 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,62 :: 		LATD = 0b11111001;
	MOVLW       249
	MOVWF       LATD+0 
;chiffre.c,63 :: 		}
L_end_LED_six:
	RETURN      0
; end of _LED_six

_LED_sept:

;chiffre.c,65 :: 		void LED_sept()
;chiffre.c,67 :: 		LATA = 0b1;
	MOVLW       1
	MOVWF       LATA+0 
;chiffre.c,68 :: 		LATB = 0b1;
	MOVLW       1
	MOVWF       LATB+0 
;chiffre.c,69 :: 		LATC = 0b1;
	MOVLW       1
	MOVWF       LATC+0 
;chiffre.c,70 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,71 :: 		}
L_end_LED_sept:
	RETURN      0
; end of _LED_sept

_LED_huit:

;chiffre.c,73 :: 		void LED_huit()
;chiffre.c,75 :: 		LATA = 0xFF;
	MOVLW       255
	MOVWF       LATA+0 
;chiffre.c,76 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,77 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,78 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,79 :: 		}
L_end_LED_huit:
	RETURN      0
; end of _LED_huit

_LED_neuf:

;chiffre.c,81 :: 		void LED_neuf()
;chiffre.c,83 :: 		LATA = 0b10001111;
	MOVLW       143
	MOVWF       LATA+0 
;chiffre.c,84 :: 		LATB = 0b10001001;
	MOVLW       137
	MOVWF       LATB+0 
;chiffre.c,85 :: 		LATC = 0b10001001;
	MOVLW       137
	MOVWF       LATC+0 
;chiffre.c,86 :: 		LATD = 0xFF;
	MOVLW       255
	MOVWF       LATD+0 
;chiffre.c,87 :: 		}
L_end_LED_neuf:
	RETURN      0
; end of _LED_neuf

_LED_raz:

;chiffre.c,89 :: 		void LED_raz()
;chiffre.c,91 :: 		LATA = 0;
	CLRF        LATA+0 
;chiffre.c,92 :: 		LATB = 0;
	CLRF        LATB+0 
;chiffre.c,93 :: 		LATC = 0;
	CLRF        LATC+0 
;chiffre.c,94 :: 		LATD = 0;
	CLRF        LATD+0 
;chiffre.c,95 :: 		}
L_end_LED_raz:
	RETURN      0
; end of _LED_raz

_compte:

;chiffre.c,97 :: 		void compte()
;chiffre.c,99 :: 		int i = 0;
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
;chiffre.c,100 :: 		for(i=0; i<10; i++)
	CLRF        compte_i_L0+0 
	CLRF        compte_i_L0+1 
L_compte0:
	MOVLW       128
	XORWF       compte_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__compte33
	MOVLW       10
	SUBWF       compte_i_L0+0, 0 
L__compte33:
	BTFSC       STATUS+0, 0 
	GOTO        L_compte1
;chiffre.c,102 :: 		chiffre(i);
	MOVF        compte_i_L0+0, 0 
	MOVWF       FARG_chiffre_i+0 
	MOVF        compte_i_L0+1, 0 
	MOVWF       FARG_chiffre_i+1 
	CALL        _chiffre+0, 0
;chiffre.c,103 :: 		WAIT;
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_compte3:
	DECFSZ      R13, 1, 1
	BRA         L_compte3
	DECFSZ      R12, 1, 1
	BRA         L_compte3
	DECFSZ      R11, 1, 1
	BRA         L_compte3
	NOP
	NOP
;chiffre.c,100 :: 		for(i=0; i<10; i++)
	INFSNZ      compte_i_L0+0, 1 
	INCF        compte_i_L0+1, 1 
;chiffre.c,104 :: 		}
	GOTO        L_compte0
L_compte1:
;chiffre.c,105 :: 		}
L_end_compte:
	RETURN      0
; end of _compte

_chiffre:

;chiffre.c,107 :: 		void chiffre(int i)
;chiffre.c,109 :: 		switch(i)
	GOTO        L_chiffre4
;chiffre.c,111 :: 		case 0:
L_chiffre6:
;chiffre.c,112 :: 		LED_zero();
	CALL        _LED_zero+0, 0
;chiffre.c,113 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,114 :: 		case 1:
L_chiffre7:
;chiffre.c,115 :: 		LED_un();
	CALL        _LED_un+0, 0
;chiffre.c,116 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,117 :: 		case 2:
L_chiffre8:
;chiffre.c,118 :: 		LED_deux();
	CALL        _LED_deux+0, 0
;chiffre.c,119 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,120 :: 		case 3:
L_chiffre9:
;chiffre.c,121 :: 		LED_trois();
	CALL        _LED_trois+0, 0
;chiffre.c,122 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,123 :: 		case 4:
L_chiffre10:
;chiffre.c,124 :: 		LED_quatre();
	CALL        _LED_quatre+0, 0
;chiffre.c,125 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,126 :: 		case 5:
L_chiffre11:
;chiffre.c,127 :: 		LED_cinq();
	CALL        _LED_cinq+0, 0
;chiffre.c,128 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,129 :: 		case 6:
L_chiffre12:
;chiffre.c,130 :: 		LED_six();
	CALL        _LED_six+0, 0
;chiffre.c,131 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,132 :: 		case 7:
L_chiffre13:
;chiffre.c,133 :: 		LED_sept();
	CALL        _LED_sept+0, 0
;chiffre.c,134 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,135 :: 		case 8:
L_chiffre14:
;chiffre.c,136 :: 		LED_huit();
	CALL        _LED_huit+0, 0
;chiffre.c,137 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,138 :: 		case 9:
L_chiffre15:
;chiffre.c,139 :: 		LED_neuf();
	CALL        _LED_neuf+0, 0
;chiffre.c,140 :: 		break;
	GOTO        L_chiffre5
;chiffre.c,141 :: 		default:
L_chiffre16:
;chiffre.c,142 :: 		LED_raz();
	CALL        _LED_raz+0, 0
;chiffre.c,143 :: 		}
	GOTO        L_chiffre5
L_chiffre4:
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre35
	MOVLW       0
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre35:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre6
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre36
	MOVLW       1
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre36:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre7
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre37
	MOVLW       2
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre37:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre8
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre38
	MOVLW       3
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre38:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre9
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre39
	MOVLW       4
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre39:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre10
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre40
	MOVLW       5
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre40:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre11
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre41
	MOVLW       6
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre41:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre12
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre42
	MOVLW       7
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre42:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre13
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre43
	MOVLW       8
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre43:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre14
	MOVLW       0
	XORWF       FARG_chiffre_i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__chiffre44
	MOVLW       9
	XORWF       FARG_chiffre_i+0, 0 
L__chiffre44:
	BTFSC       STATUS+0, 2 
	GOTO        L_chiffre15
	GOTO        L_chiffre16
L_chiffre5:
;chiffre.c,144 :: 		}
L_end_chiffre:
	RETURN      0
; end of _chiffre

_decompte:

;chiffre.c,146 :: 		void decompte()
;chiffre.c,148 :: 		int i = 0;
	CLRF        decompte_i_L0+0 
	CLRF        decompte_i_L0+1 
;chiffre.c,149 :: 		for(i = 9 ; i >= 0 ; i--)
	MOVLW       9
	MOVWF       decompte_i_L0+0 
	MOVLW       0
	MOVWF       decompte_i_L0+1 
L_decompte17:
	MOVLW       128
	XORWF       decompte_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__decompte46
	MOVLW       0
	SUBWF       decompte_i_L0+0, 0 
L__decompte46:
	BTFSS       STATUS+0, 0 
	GOTO        L_decompte18
;chiffre.c,151 :: 		chiffre(i);
	MOVF        decompte_i_L0+0, 0 
	MOVWF       FARG_chiffre_i+0 
	MOVF        decompte_i_L0+1, 0 
	MOVWF       FARG_chiffre_i+1 
	CALL        _chiffre+0, 0
;chiffre.c,152 :: 		WAIT;
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_decompte20:
	DECFSZ      R13, 1, 1
	BRA         L_decompte20
	DECFSZ      R12, 1, 1
	BRA         L_decompte20
	DECFSZ      R11, 1, 1
	BRA         L_decompte20
	NOP
	NOP
;chiffre.c,149 :: 		for(i = 9 ; i >= 0 ; i--)
	MOVLW       1
	SUBWF       decompte_i_L0+0, 1 
	MOVLW       0
	SUBWFB      decompte_i_L0+1, 1 
;chiffre.c,153 :: 		}
	GOTO        L_decompte17
L_decompte18:
;chiffre.c,154 :: 		}
L_end_decompte:
	RETURN      0
; end of _decompte

_LED_init:

;chiffre.c,156 :: 		void LED_init()
;chiffre.c,159 :: 		PORTA = 0;
	CLRF        PORTA+0 
;chiffre.c,160 :: 		PORTB = 0;
	CLRF        PORTB+0 
;chiffre.c,161 :: 		PORTC = 0;
	CLRF        PORTC+0 
;chiffre.c,162 :: 		PORTD = 0;
	CLRF        PORTD+0 
;chiffre.c,163 :: 		PORTE = 0;
	CLRF        PORTE+0 
;chiffre.c,166 :: 		TRISA = 0;
	CLRF        TRISA+0 
;chiffre.c,167 :: 		TRISB = 0;
	CLRF        TRISB+0 
;chiffre.c,168 :: 		TRISC = 0;
	CLRF        TRISC+0 
;chiffre.c,169 :: 		TRISD = 0;
	CLRF        TRISD+0 
;chiffre.c,170 :: 		TRISE = 0b1111;
	MOVLW       15
	MOVWF       TRISE+0 
;chiffre.c,171 :: 		}
L_end_LED_init:
	RETURN      0
; end of _LED_init
