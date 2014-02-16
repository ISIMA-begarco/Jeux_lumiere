
_main:

;Jeux_lumiere.c,29 :: 		void main()
;Jeux_lumiere.c,37 :: 		while(1)
L_main0:
;Jeux_lumiere.c,50 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;Jeux_lumiere.c,51 :: 		Glcd_Image(image_ISIMA);
	MOVLW       _image_isima+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Jeux_lumiere.c,52 :: 		Delay_ms(5000);
	MOVLW       51
	MOVWF       R11, 0
	MOVLW       187
	MOVWF       R12, 0
	MOVLW       223
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;Jeux_lumiere.c,68 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,70 :: 		decompte();
	CALL        _decompte+0, 0
;Jeux_lumiere.c,71 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,73 :: 		initRGB();
	CALL        _initRGB+0, 0
;Jeux_lumiere.c,74 :: 		fondue();
	CALL        _fondue+0, 0
;Jeux_lumiere.c,75 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,76 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
