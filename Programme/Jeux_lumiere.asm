
_main:

;Jeux_lumiere.c,29 :: 		void main()
;Jeux_lumiere.c,31 :: 		int n = 1;
	MOVLW       1
	MOVWF       main_n_L0+0 
	MOVLW       0
	MOVWF       main_n_L0+1 
;Jeux_lumiere.c,32 :: 		initPseudoPWM();
	CALL        _initPseudoPWM+0, 0
;Jeux_lumiere.c,35 :: 		while(1)
L_main0:
;Jeux_lumiere.c,48 :: 		initRGB();
	CALL        _initRGB+0, 0
;Jeux_lumiere.c,49 :: 		fondue();
	CALL        _fondue+0, 0
;Jeux_lumiere.c,51 :: 		for(n = 0 ; n<200 ; n++)
	CLRF        main_n_L0+0 
	CLRF        main_n_L0+1 
L_main2:
	MOVLW       128
	XORWF       main_n_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main9
	MOVLW       200
	SUBWF       main_n_L0+0, 0 
L__main9:
	BTFSC       STATUS+0, 0 
	GOTO        L_main3
;Jeux_lumiere.c,53 :: 		pseudoPWM(n);
	MOVF        main_n_L0+0, 0 
	MOVWF       FARG_pseudoPWM_n+0 
	MOVF        main_n_L0+1, 0 
	MOVWF       FARG_pseudoPWM_n+1 
	CALL        _pseudoPWM+0, 0
;Jeux_lumiere.c,51 :: 		for(n = 0 ; n<200 ; n++)
	INFSNZ      main_n_L0+0, 1 
	INCF        main_n_L0+1, 1 
;Jeux_lumiere.c,54 :: 		}
	GOTO        L_main2
L_main3:
;Jeux_lumiere.c,56 :: 		for(n = 200 ; n>0 ; n--)
	MOVLW       200
	MOVWF       main_n_L0+0 
	MOVLW       0
	MOVWF       main_n_L0+1 
L_main5:
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       main_n_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main10
	MOVF        main_n_L0+0, 0 
	SUBLW       0
L__main10:
	BTFSC       STATUS+0, 0 
	GOTO        L_main6
;Jeux_lumiere.c,58 :: 		pseudoPWM(n);
	MOVF        main_n_L0+0, 0 
	MOVWF       FARG_pseudoPWM_n+0 
	MOVF        main_n_L0+1, 0 
	MOVWF       FARG_pseudoPWM_n+1 
	CALL        _pseudoPWM+0, 0
;Jeux_lumiere.c,56 :: 		for(n = 200 ; n>0 ; n--)
	MOVLW       1
	SUBWF       main_n_L0+0, 1 
	MOVLW       0
	SUBWFB      main_n_L0+1, 1 
;Jeux_lumiere.c,59 :: 		}
	GOTO        L_main5
L_main6:
;Jeux_lumiere.c,62 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,63 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
