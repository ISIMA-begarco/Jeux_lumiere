
_print_logo_ISIMA:

;glcd.c,8 :: 		void print_logo_ISIMA()
;glcd.c,26 :: 		Glcd_Init();
	CALL        _Glcd_Init+0, 0
;glcd.c,29 :: 		Glcd_Image(isima64);
	MOVLW       print_logo_ISIMA_isima64_L0+0
	MOVWF       FARG_Glcd_Image_image+0 
	MOVLW       hi_addr(print_logo_ISIMA_isima64_L0+0)
	MOVWF       FARG_Glcd_Image_image+1 
	MOVLW       higher_addr(print_logo_ISIMA_isima64_L0+0)
	MOVWF       FARG_Glcd_Image_image+2 
	CALL        _Glcd_Image+0, 0
;glcd.c,30 :: 		}
L_end_print_logo_ISIMA:
	RETURN      0
; end of _print_logo_ISIMA
