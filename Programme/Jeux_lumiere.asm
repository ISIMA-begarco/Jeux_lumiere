
_main:

;Jeux_lumiere.c,61 :: 		void main()
;Jeux_lumiere.c,69 :: 		while(1)
L_main0:
;Jeux_lumiere.c,81 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;Jeux_lumiere.c,82 :: 		Glcd_Image(image_ISIMA);
	MOVLW       _image_isima+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(_image_isima+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;Jeux_lumiere.c,83 :: 		Delay_ms(5000);
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
;Jeux_lumiere.c,97 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,99 :: 		decompte();
	CALL        _decompte+0, 0
;Jeux_lumiere.c,100 :: 		LED_init();
	CALL        _LED_init+0, 0
;Jeux_lumiere.c,101 :: 		}
	GOTO        L_main0
;Jeux_lumiere.c,102 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
