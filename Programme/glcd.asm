
_image_to_matrix:

;glcd.c,3 :: 		void image_to_matrix(const char * entree, unsigned char ** retour)
;glcd.c,5 :: 		int i = 0;
	CLRF        image_to_matrix_i_L0+0 
	CLRF        image_to_matrix_i_L0+1 
;glcd.c,7 :: 		for(i = 0 ; i < 1024 ; i++)
	CLRF        image_to_matrix_i_L0+0 
	CLRF        image_to_matrix_i_L0+1 
L_image_to_matrix0:
	MOVLW       128
	XORWF       image_to_matrix_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORLW       4
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__image_to_matrix64
	MOVLW       0
	SUBWF       image_to_matrix_i_L0+0, 0 
L__image_to_matrix64:
	BTFSC       STATUS+0, 0 
	GOTO        L_image_to_matrix1
;glcd.c,9 :: 		int j = 0;
	CLRF        image_to_matrix_j_L1+0 
	CLRF        image_to_matrix_j_L1+1 
;glcd.c,11 :: 		for(j = 0 ; j < 8 ; j++)
	CLRF        image_to_matrix_j_L1+0 
	CLRF        image_to_matrix_j_L1+1 
L_image_to_matrix3:
	MOVLW       128
	XORWF       image_to_matrix_j_L1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__image_to_matrix65
	MOVLW       8
	SUBWF       image_to_matrix_j_L1+0, 0 
L__image_to_matrix65:
	BTFSC       STATUS+0, 0 
	GOTO        L_image_to_matrix4
;glcd.c,13 :: 		retour[j+8*(i/SCREEN_W)][i%SCREEN_W] = (entree[i] & (0b00000001 << j)) ? 1 : 0;
	MOVLW       7
	MOVWF       R0 
	MOVF        image_to_matrix_i_L0+0, 0 
	MOVWF       R3 
	MOVF        image_to_matrix_i_L0+1, 0 
	MOVWF       R4 
	MOVF        R0, 0 
L__image_to_matrix66:
	BZ          L__image_to_matrix67
	RRCF        R4, 1 
	RRCF        R3, 1 
	BCF         R4, 7 
	BTFSC       R4, 6 
	BSF         R4, 7 
	ADDLW       255
	GOTO        L__image_to_matrix66
L__image_to_matrix67:
	MOVLW       3
	MOVWF       R2 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__image_to_matrix68:
	BZ          L__image_to_matrix69
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__image_to_matrix68
L__image_to_matrix69:
	MOVF        R0, 0 
	ADDWF       image_to_matrix_j_L1+0, 0 
	MOVWF       R3 
	MOVF        R1, 0 
	ADDWFC      image_to_matrix_j_L1+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_image_to_matrix_retour+0, 0 
	MOVWF       FLOC__image_to_matrix+0 
	MOVF        R1, 0 
	ADDWFC      FARG_image_to_matrix_retour+1, 0 
	MOVWF       FLOC__image_to_matrix+1 
	MOVLW       128
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        image_to_matrix_i_L0+0, 0 
	MOVWF       R0 
	MOVF        image_to_matrix_i_L0+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	MOVFF       FLOC__image_to_matrix+0, FSR0
	MOVFF       FLOC__image_to_matrix+1, FSR0H
	MOVF        R0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	ADDWFC      POSTINC0+0, 0 
	MOVWF       R5 
	MOVF        image_to_matrix_i_L0+0, 0 
	ADDWF       FARG_image_to_matrix_entree+0, 0 
	MOVWF       TBLPTRL 
	MOVF        image_to_matrix_i_L0+1, 0 
	ADDWFC      FARG_image_to_matrix_entree+1, 0 
	MOVWF       TBLPTRH 
	MOVLW       0
	BTFSC       image_to_matrix_i_L0+1, 7 
	MOVLW       255
	ADDWFC      FARG_image_to_matrix_entree+2, 0 
	MOVWF       TBLPTRU 
	TBLRD*+
	MOVFF       TABLAT+0, R3
	MOVF        image_to_matrix_j_L1+0, 0 
	MOVWF       R2 
	MOVLW       1
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVF        R2, 0 
L__image_to_matrix70:
	BZ          L__image_to_matrix71
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__image_to_matrix70
L__image_to_matrix71:
	MOVF        R3, 0 
	ANDWF       R0, 1 
	MOVLW       0
	ANDWF       R1, 1 
	MOVF        R0, 0 
	IORWF       R1, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_image_to_matrix6
	MOVLW       1
	MOVWF       R0 
	GOTO        L_image_to_matrix7
L_image_to_matrix6:
	CLRF        R0 
L_image_to_matrix7:
	MOVFF       R4, FSR1
	MOVFF       R5, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,11 :: 		for(j = 0 ; j < 8 ; j++)
	INFSNZ      image_to_matrix_j_L1+0, 1 
	INCF        image_to_matrix_j_L1+1, 1 
;glcd.c,14 :: 		}
	GOTO        L_image_to_matrix3
L_image_to_matrix4:
;glcd.c,7 :: 		for(i = 0 ; i < 1024 ; i++)
	INFSNZ      image_to_matrix_i_L0+0, 1 
	INCF        image_to_matrix_i_L0+1, 1 
;glcd.c,15 :: 		}
	GOTO        L_image_to_matrix0
L_image_to_matrix1:
;glcd.c,16 :: 		}
L_end_image_to_matrix:
	RETURN      0
; end of _image_to_matrix

_matrix_to_image:

;glcd.c,18 :: 		void matrix_to_image(unsigned char ** entree, char retour[1024])
;glcd.c,20 :: 		int i = 0;
	CLRF        matrix_to_image_i_L0+0 
	CLRF        matrix_to_image_i_L0+1 
;glcd.c,22 :: 		for(i = 0 ; i < 128 ; i++)
	CLRF        matrix_to_image_i_L0+0 
	CLRF        matrix_to_image_i_L0+1 
L_matrix_to_image8:
	MOVLW       128
	XORWF       matrix_to_image_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__matrix_to_image73
	MOVLW       128
	SUBWF       matrix_to_image_i_L0+0, 0 
L__matrix_to_image73:
	BTFSC       STATUS+0, 0 
	GOTO        L_matrix_to_image9
;glcd.c,24 :: 		int j = 0;
	CLRF        matrix_to_image_j_L1+0 
	CLRF        matrix_to_image_j_L1+1 
;glcd.c,25 :: 		retour[i+(j/8)*SCREEN_W] = 0;
	MOVLW       3
	MOVWF       R0 
	MOVF        matrix_to_image_j_L1+0, 0 
	MOVWF       R3 
	MOVF        matrix_to_image_j_L1+1, 0 
	MOVWF       R4 
	MOVF        R0, 0 
L__matrix_to_image74:
	BZ          L__matrix_to_image75
	RRCF        R4, 1 
	RRCF        R3, 1 
	BCF         R4, 7 
	BTFSC       R4, 6 
	BSF         R4, 7 
	ADDLW       255
	GOTO        L__matrix_to_image74
L__matrix_to_image75:
	MOVLW       7
	MOVWF       R2 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__matrix_to_image76:
	BZ          L__matrix_to_image77
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__matrix_to_image76
L__matrix_to_image77:
	MOVF        matrix_to_image_i_L0+0, 0 
	ADDWF       R0, 1 
	MOVF        matrix_to_image_i_L0+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_matrix_to_image_retour+0, 0 
	MOVWF       FSR1 
	MOVF        R1, 0 
	ADDWFC      FARG_matrix_to_image_retour+1, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
;glcd.c,26 :: 		for(j = 0 ; j < 64 ; j++)
	CLRF        matrix_to_image_j_L1+0 
	CLRF        matrix_to_image_j_L1+1 
L_matrix_to_image11:
	MOVLW       128
	XORWF       matrix_to_image_j_L1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__matrix_to_image78
	MOVLW       64
	SUBWF       matrix_to_image_j_L1+0, 0 
L__matrix_to_image78:
	BTFSC       STATUS+0, 0 
	GOTO        L_matrix_to_image12
;glcd.c,28 :: 		retour[i+(j/8)*SCREEN_W] += entree[j][i]*pow(2,j%8);
	MOVLW       3
	MOVWF       R0 
	MOVF        matrix_to_image_j_L1+0, 0 
	MOVWF       R3 
	MOVF        matrix_to_image_j_L1+1, 0 
	MOVWF       R4 
	MOVF        R0, 0 
L__matrix_to_image79:
	BZ          L__matrix_to_image80
	RRCF        R4, 1 
	RRCF        R3, 1 
	BCF         R4, 7 
	BTFSC       R4, 6 
	BSF         R4, 7 
	ADDLW       255
	GOTO        L__matrix_to_image79
L__matrix_to_image80:
	MOVLW       7
	MOVWF       R2 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__matrix_to_image81:
	BZ          L__matrix_to_image82
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__matrix_to_image81
L__matrix_to_image82:
	MOVF        matrix_to_image_i_L0+0, 0 
	ADDWF       R0, 1 
	MOVF        matrix_to_image_i_L0+1, 0 
	ADDWFC      R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_matrix_to_image_retour+0, 0 
	MOVWF       FLOC__matrix_to_image+5 
	MOVF        R1, 0 
	ADDWFC      FARG_matrix_to_image_retour+1, 0 
	MOVWF       FLOC__matrix_to_image+6 
	MOVF        matrix_to_image_j_L1+0, 0 
	MOVWF       R0 
	MOVF        matrix_to_image_j_L1+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_matrix_to_image_entree+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_matrix_to_image_entree+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        matrix_to_image_i_L0+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        matrix_to_image_i_L0+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       FLOC__matrix_to_image+4 
	MOVLW       0
	MOVWF       FARG_pow_x+0 
	MOVLW       0
	MOVWF       FARG_pow_x+1 
	MOVLW       0
	MOVWF       FARG_pow_x+2 
	MOVLW       128
	MOVWF       FARG_pow_x+3 
	MOVLW       8
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVF        matrix_to_image_j_L1+0, 0 
	MOVWF       R0 
	MOVF        matrix_to_image_j_L1+1, 0 
	MOVWF       R1 
	CALL        _Div_16x16_S+0, 0
	MOVF        R8, 0 
	MOVWF       R0 
	MOVF        R9, 0 
	MOVWF       R1 
	CALL        _Int2Double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_pow_y+0 
	MOVF        R1, 0 
	MOVWF       FARG_pow_y+1 
	MOVF        R2, 0 
	MOVWF       FARG_pow_y+2 
	MOVF        R3, 0 
	MOVWF       FARG_pow_y+3 
	CALL        _pow+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__matrix_to_image+0 
	MOVF        R1, 0 
	MOVWF       FLOC__matrix_to_image+1 
	MOVF        R2, 0 
	MOVWF       FLOC__matrix_to_image+2 
	MOVF        R3, 0 
	MOVWF       FLOC__matrix_to_image+3 
	MOVF        FLOC__matrix_to_image+4, 0 
	MOVWF       R0 
	CALL        _Byte2Double+0, 0
	MOVF        FLOC__matrix_to_image+0, 0 
	MOVWF       R4 
	MOVF        FLOC__matrix_to_image+1, 0 
	MOVWF       R5 
	MOVF        FLOC__matrix_to_image+2, 0 
	MOVWF       R6 
	MOVF        FLOC__matrix_to_image+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__matrix_to_image+0 
	MOVF        R1, 0 
	MOVWF       FLOC__matrix_to_image+1 
	MOVF        R2, 0 
	MOVWF       FLOC__matrix_to_image+2 
	MOVF        R3, 0 
	MOVWF       FLOC__matrix_to_image+3 
	MOVFF       FLOC__matrix_to_image+5, FSR0
	MOVFF       FLOC__matrix_to_image+6, FSR0H
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	CALL        _Byte2Double+0, 0
	MOVF        FLOC__matrix_to_image+0, 0 
	MOVWF       R4 
	MOVF        FLOC__matrix_to_image+1, 0 
	MOVWF       R5 
	MOVF        FLOC__matrix_to_image+2, 0 
	MOVWF       R6 
	MOVF        FLOC__matrix_to_image+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _Double2Byte+0, 0
	MOVFF       FLOC__matrix_to_image+5, FSR1
	MOVFF       FLOC__matrix_to_image+6, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,26 :: 		for(j = 0 ; j < 64 ; j++)
	INFSNZ      matrix_to_image_j_L1+0, 1 
	INCF        matrix_to_image_j_L1+1, 1 
;glcd.c,29 :: 		}
	GOTO        L_matrix_to_image11
L_matrix_to_image12:
;glcd.c,22 :: 		for(i = 0 ; i < 128 ; i++)
	INFSNZ      matrix_to_image_i_L0+0, 1 
	INCF        matrix_to_image_i_L0+1, 1 
;glcd.c,30 :: 		}
	GOTO        L_matrix_to_image8
L_matrix_to_image9:
;glcd.c,31 :: 		}
L_end_matrix_to_image:
	RETURN      0
; end of _matrix_to_image

_game_of_life:

;glcd.c,33 :: 		void game_of_life(unsigned char ** p_monTab)
;glcd.c,36 :: 		int i = 0;
	CLRF        game_of_life_i_L0+0 
	CLRF        game_of_life_i_L0+1 
;glcd.c,37 :: 		for(i = 0 ; i < SCREEN_H ; i++)
	CLRF        game_of_life_i_L0+0 
	CLRF        game_of_life_i_L0+1 
L_game_of_life14:
	MOVLW       128
	XORWF       game_of_life_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life84
	MOVLW       64
	SUBWF       game_of_life_i_L0+0, 0 
L__game_of_life84:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life15
;glcd.c,39 :: 		int j = 0;
	CLRF        game_of_life_j_L1+0 
	CLRF        game_of_life_j_L1+1 
;glcd.c,40 :: 		for(j = 0 ; j < SCREEN_W ; j++)
	CLRF        game_of_life_j_L1+0 
	CLRF        game_of_life_j_L1+1 
L_game_of_life17:
	MOVLW       128
	XORWF       game_of_life_j_L1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life85
	MOVLW       128
	SUBWF       game_of_life_j_L1+0, 0 
L__game_of_life85:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life18
;glcd.c,42 :: 		p_monTab[i][j] *= 10;
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        game_of_life_j_L1+0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_j_L1+1, 0 
	ADDWFC      POSTINC0+0, 0 
	MOVWF       R2 
	MOVFF       R1, FSR0
	MOVFF       R2, FSR0H
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVLW       10
	MULWF       R0 
	MOVF        PRODL+0, 0 
	MOVWF       R0 
	MOVFF       R1, FSR1
	MOVFF       R2, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,40 :: 		for(j = 0 ; j < SCREEN_W ; j++)
	INFSNZ      game_of_life_j_L1+0, 1 
	INCF        game_of_life_j_L1+1, 1 
;glcd.c,43 :: 		}
	GOTO        L_game_of_life17
L_game_of_life18:
;glcd.c,37 :: 		for(i = 0 ; i < SCREEN_H ; i++)
	INFSNZ      game_of_life_i_L0+0, 1 
	INCF        game_of_life_i_L0+1, 1 
;glcd.c,44 :: 		}
	GOTO        L_game_of_life14
L_game_of_life15:
;glcd.c,46 :: 		i = 0;
	CLRF        game_of_life_i_L0+0 
	CLRF        game_of_life_i_L0+1 
;glcd.c,47 :: 		for(i = 0 ; i < SCREEN_H ; i++)
	CLRF        game_of_life_i_L0+0 
	CLRF        game_of_life_i_L0+1 
L_game_of_life20:
	MOVLW       128
	XORWF       game_of_life_i_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life86
	MOVLW       64
	SUBWF       game_of_life_i_L0+0, 0 
L__game_of_life86:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life21
;glcd.c,49 :: 		int j = 0;
	CLRF        game_of_life_j_L1_L1+0 
	CLRF        game_of_life_j_L1_L1+1 
;glcd.c,50 :: 		for(j = 0 ; j < SCREEN_W ; j++)
	CLRF        game_of_life_j_L1_L1+0 
	CLRF        game_of_life_j_L1_L1+1 
L_game_of_life23:
	MOVLW       128
	XORWF       game_of_life_j_L1_L1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life87
	MOVLW       128
	SUBWF       game_of_life_j_L1_L1+0, 0 
L__game_of_life87:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life24
;glcd.c,53 :: 		if((n=j-1)<0){n = SCREEN_W - 1;}
	MOVLW       1
	SUBWF       game_of_life_j_L1_L1+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      game_of_life_j_L1_L1+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       game_of_life_n_L2+0 
	MOVF        R2, 0 
	MOVWF       game_of_life_n_L2+1 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life88
	MOVLW       0
	SUBWF       R1, 0 
L__game_of_life88:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life26
	MOVLW       127
	MOVWF       game_of_life_n_L2+0 
	MOVLW       0
	MOVWF       game_of_life_n_L2+1 
L_game_of_life26:
;glcd.c,54 :: 		if((o=i-1)<0){o = SCREEN_H - 1;}
	MOVLW       1
	SUBWF       game_of_life_i_L0+0, 0 
	MOVWF       R1 
	MOVLW       0
	SUBWFB      game_of_life_i_L0+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       game_of_life_o_L2+0 
	MOVF        R2, 0 
	MOVWF       game_of_life_o_L2+1 
	MOVLW       128
	XORWF       R2, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life89
	MOVLW       0
	SUBWF       R1, 0 
L__game_of_life89:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life27
	MOVLW       63
	MOVWF       game_of_life_o_L2+0 
	MOVLW       0
	MOVWF       game_of_life_o_L2+1 
L_game_of_life27:
;glcd.c,55 :: 		if((s=j+1)>SCREEN_W){s = 0;}
	MOVLW       1
	ADDWF       game_of_life_j_L1_L1+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      game_of_life_j_L1_L1+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       game_of_life_s_L2+0 
	MOVF        R2, 0 
	MOVWF       game_of_life_s_L2+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life90
	MOVF        R1, 0 
	SUBLW       128
L__game_of_life90:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life28
	CLRF        game_of_life_s_L2+0 
	CLRF        game_of_life_s_L2+1 
L_game_of_life28:
;glcd.c,56 :: 		if((e=i+1)>SCREEN_H){e = 0;}
	MOVLW       1
	ADDWF       game_of_life_i_L0+0, 0 
	MOVWF       R1 
	MOVLW       0
	ADDWFC      game_of_life_i_L0+1, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	MOVWF       game_of_life_e_L2+0 
	MOVF        R2, 0 
	MOVWF       game_of_life_e_L2+1 
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       R2, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__game_of_life91
	MOVF        R1, 0 
	SUBLW       64
L__game_of_life91:
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life29
	CLRF        game_of_life_e_L2+0 
	CLRF        game_of_life_e_L2+1 
L_game_of_life29:
;glcd.c,60 :: 		p_monTab[i][j] += (p_monTab[o][n]>9 ? 1 : 0) + (p_monTab[i][n]>9 ? 1 : 0) +
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       R4 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      POSTINC0+0, 0 
	MOVWF       R5 
	MOVF        game_of_life_o_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_o_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_n_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_n_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life30
	MOVLW       1
	MOVWF       R3 
	GOTO        L_game_of_life31
L_game_of_life30:
	CLRF        R3 
L_game_of_life31:
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_n_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_n_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life32
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life33
L_game_of_life32:
	CLRF        R0 
L_game_of_life33:
	MOVF        R0, 0 
	ADDWF       R3, 1 
;glcd.c,61 :: 		(p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][j]>9 ? 1 : 0) +
	MOVF        game_of_life_e_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_e_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_n_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_n_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life34
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life35
L_game_of_life34:
	CLRF        R0 
L_game_of_life35:
	MOVF        R0, 0 
	ADDWF       R3, 1 
	MOVF        game_of_life_o_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_o_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life36
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life37
L_game_of_life36:
	CLRF        R0 
L_game_of_life37:
	MOVF        R0, 0 
	ADDWF       R3, 1 
;glcd.c,62 :: 		(p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][s]>9 ? 1 : 0) +
	MOVF        game_of_life_e_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_e_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_n_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_n_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life38
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life39
L_game_of_life38:
	CLRF        R0 
L_game_of_life39:
	MOVF        R0, 0 
	ADDWF       R3, 1 
	MOVF        game_of_life_o_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_o_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_s_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_s_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life40
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life41
L_game_of_life40:
	CLRF        R0 
L_game_of_life41:
	MOVF        R0, 0 
	ADDWF       R3, 1 
;glcd.c,63 :: 		(p_monTab[i][s]>9 ? 1 : 0) + (p_monTab[e][s]>9 ? 1 : 0);
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_s_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_s_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life42
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life43
L_game_of_life42:
	CLRF        R0 
L_game_of_life43:
	MOVF        R0, 0 
	ADDWF       R3, 1 
	MOVF        game_of_life_e_L2+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_e_L2+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_s_L2+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_s_L2+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	SUBLW       9
	BTFSC       STATUS+0, 0 
	GOTO        L_game_of_life44
	MOVLW       1
	MOVWF       R0 
	GOTO        L_game_of_life45
L_game_of_life44:
	CLRF        R0 
L_game_of_life45:
	MOVF        R3, 0 
	ADDWF       R0, 1 
	MOVFF       R4, FSR0
	MOVFF       R5, FSR0H
	MOVF        POSTINC0+0, 0 
	ADDWF       R0, 1 
	MOVFF       R4, FSR1
	MOVFF       R5, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;glcd.c,82 :: 		if((p_monTab[i][j] == 12) || (p_monTab[i][j] == 3))
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L__game_of_life62
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L__game_of_life62
	GOTO        L_game_of_life48
L__game_of_life62:
;glcd.c,84 :: 		p_monTab[i][j] = 1;
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       FSR1 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      POSTINC0+0, 0 
	MOVWF       FSR1H 
	MOVLW       1
	MOVWF       POSTINC1+0 
;glcd.c,85 :: 		}
	GOTO        L_game_of_life49
L_game_of_life48:
;glcd.c,86 :: 		else {p_monTab[i][j] = 0;}
	MOVF        game_of_life_i_L0+0, 0 
	MOVWF       R0 
	MOVF        game_of_life_i_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_game_of_life_p_monTab+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_game_of_life_p_monTab+1, 0 
	MOVWF       FSR0H 
	MOVF        game_of_life_j_L1_L1+0, 0 
	ADDWF       POSTINC0+0, 0 
	MOVWF       FSR1 
	MOVF        game_of_life_j_L1_L1+1, 0 
	ADDWFC      POSTINC0+0, 0 
	MOVWF       FSR1H 
	CLRF        POSTINC1+0 
L_game_of_life49:
;glcd.c,50 :: 		for(j = 0 ; j < SCREEN_W ; j++)
	INFSNZ      game_of_life_j_L1_L1+0, 1 
	INCF        game_of_life_j_L1_L1+1, 1 
;glcd.c,87 :: 		}
	GOTO        L_game_of_life23
L_game_of_life24:
;glcd.c,47 :: 		for(i = 0 ; i < SCREEN_H ; i++)
	INFSNZ      game_of_life_i_L0+0, 1 
	INCF        game_of_life_i_L0+1, 1 
;glcd.c,88 :: 		}
	GOTO        L_game_of_life20
L_game_of_life21:
;glcd.c,89 :: 		}
L_end_game_of_life:
	RETURN      0
; end of _game_of_life

_print_glcd:

;glcd.c,91 :: 		void print_glcd(unsigned char ** image)
;glcd.c,93 :: 		int side = 0;
	CLRF        print_glcd_side_L0+0 
	CLRF        print_glcd_side_L0+1 
;glcd.c,94 :: 		for(side = 0 ; side < 2 ; side++)
	CLRF        print_glcd_side_L0+0 
	CLRF        print_glcd_side_L0+1 
L_print_glcd50:
	MOVLW       128
	XORWF       print_glcd_side_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__print_glcd93
	MOVLW       2
	SUBWF       print_glcd_side_L0+0, 0 
L__print_glcd93:
	BTFSC       STATUS+0, 0 
	GOTO        L_print_glcd51
;glcd.c,96 :: 		int k = 0;
	CLRF        print_glcd_k_L1+0 
	CLRF        print_glcd_k_L1+1 
;glcd.c,97 :: 		Glcd_Set_Side(side);
	MOVF        print_glcd_side_L0+0, 0 
	MOVWF       FARG_Glcd_Set_Side_x_pos+0 
	CALL        _Glcd_Set_Side+0, 0
;glcd.c,98 :: 		for(k = 0 ; k < 64 ; k = k+8)
	CLRF        print_glcd_k_L1+0 
	CLRF        print_glcd_k_L1+1 
L_print_glcd53:
	MOVLW       128
	XORWF       print_glcd_k_L1+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__print_glcd94
	MOVLW       64
	SUBWF       print_glcd_k_L1+0, 0 
L__print_glcd94:
	BTFSC       STATUS+0, 0 
	GOTO        L_print_glcd54
;glcd.c,100 :: 		int i = 0;
	CLRF        print_glcd_i_L2+0 
	CLRF        print_glcd_i_L2+1 
;glcd.c,101 :: 		Glcd_Set_Page(k/8);
	MOVLW       3
	MOVWF       R2 
	MOVF        print_glcd_k_L1+0, 0 
	MOVWF       R0 
	MOVF        print_glcd_k_L1+1, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__print_glcd95:
	BZ          L__print_glcd96
	RRCF        R1, 1 
	RRCF        R0, 1 
	BCF         R1, 7 
	BTFSC       R1, 6 
	BSF         R1, 7 
	ADDLW       255
	GOTO        L__print_glcd95
L__print_glcd96:
	MOVF        R0, 0 
	MOVWF       FARG_Glcd_Set_Page_page+0 
	CALL        _Glcd_Set_Page+0, 0
;glcd.c,102 :: 		for(i = 0 ; i < 64 ; i++)
	CLRF        print_glcd_i_L2+0 
	CLRF        print_glcd_i_L2+1 
L_print_glcd56:
	MOVLW       128
	XORWF       print_glcd_i_L2+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__print_glcd97
	MOVLW       64
	SUBWF       print_glcd_i_L2+0, 0 
L__print_glcd97:
	BTFSC       STATUS+0, 0 
	GOTO        L_print_glcd57
;glcd.c,104 :: 		int j = 0;
	CLRF        print_glcd_j_L3+0 
	CLRF        print_glcd_j_L3+1 
	CLRF        print_glcd_pix_L3+0 
;glcd.c,106 :: 		for(j = 0 ; j < 8 ; j++)
	CLRF        print_glcd_j_L3+0 
	CLRF        print_glcd_j_L3+1 
L_print_glcd59:
	MOVLW       128
	XORWF       print_glcd_j_L3+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__print_glcd98
	MOVLW       8
	SUBWF       print_glcd_j_L3+0, 0 
L__print_glcd98:
	BTFSC       STATUS+0, 0 
	GOTO        L_print_glcd60
;glcd.c,108 :: 		pix += (image[j+k][i+(side*64)]*pow(2,j));
	MOVF        print_glcd_k_L1+0, 0 
	ADDWF       print_glcd_j_L3+0, 0 
	MOVWF       R3 
	MOVF        print_glcd_k_L1+1, 0 
	ADDWFC      print_glcd_j_L3+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_print_glcd_image+0, 0 
	MOVWF       FSR0 
	MOVF        R1, 0 
	ADDWFC      FARG_print_glcd_image+1, 0 
	MOVWF       FSR0H 
	MOVLW       6
	MOVWF       R2 
	MOVF        print_glcd_side_L0+0, 0 
	MOVWF       R0 
	MOVF        print_glcd_side_L0+1, 0 
	MOVWF       R1 
	MOVF        R2, 0 
L__print_glcd99:
	BZ          L__print_glcd100
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	ADDLW       255
	GOTO        L__print_glcd99
L__print_glcd100:
	MOVF        R0, 0 
	ADDWF       print_glcd_i_L2+0, 0 
	MOVWF       R2 
	MOVF        R1, 0 
	ADDWFC      print_glcd_i_L2+1, 0 
	MOVWF       R3 
	MOVF        POSTINC0+0, 0 
	MOVWF       R0 
	MOVF        POSTINC0+0, 0 
	MOVWF       R1 
	MOVF        R2, 0 
	ADDWF       R0, 0 
	MOVWF       FSR0 
	MOVF        R3, 0 
	ADDWFC      R1, 0 
	MOVWF       FSR0H 
	MOVF        POSTINC0+0, 0 
	MOVWF       FLOC__print_glcd+4 
	MOVLW       0
	MOVWF       FARG_pow_x+0 
	MOVLW       0
	MOVWF       FARG_pow_x+1 
	MOVLW       0
	MOVWF       FARG_pow_x+2 
	MOVLW       128
	MOVWF       FARG_pow_x+3 
	MOVF        print_glcd_j_L3+0, 0 
	MOVWF       R0 
	MOVF        print_glcd_j_L3+1, 0 
	MOVWF       R1 
	CALL        _Int2Double+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_pow_y+0 
	MOVF        R1, 0 
	MOVWF       FARG_pow_y+1 
	MOVF        R2, 0 
	MOVWF       FARG_pow_y+2 
	MOVF        R3, 0 
	MOVWF       FARG_pow_y+3 
	CALL        _pow+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__print_glcd+0 
	MOVF        R1, 0 
	MOVWF       FLOC__print_glcd+1 
	MOVF        R2, 0 
	MOVWF       FLOC__print_glcd+2 
	MOVF        R3, 0 
	MOVWF       FLOC__print_glcd+3 
	MOVF        FLOC__print_glcd+4, 0 
	MOVWF       R0 
	CALL        _Byte2Double+0, 0
	MOVF        FLOC__print_glcd+0, 0 
	MOVWF       R4 
	MOVF        FLOC__print_glcd+1, 0 
	MOVWF       R5 
	MOVF        FLOC__print_glcd+2, 0 
	MOVWF       R6 
	MOVF        FLOC__print_glcd+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__print_glcd+0 
	MOVF        R1, 0 
	MOVWF       FLOC__print_glcd+1 
	MOVF        R2, 0 
	MOVWF       FLOC__print_glcd+2 
	MOVF        R3, 0 
	MOVWF       FLOC__print_glcd+3 
	MOVF        print_glcd_pix_L3+0, 0 
	MOVWF       R0 
	CALL        _Byte2Double+0, 0
	MOVF        FLOC__print_glcd+0, 0 
	MOVWF       R4 
	MOVF        FLOC__print_glcd+1, 0 
	MOVWF       R5 
	MOVF        FLOC__print_glcd+2, 0 
	MOVWF       R6 
	MOVF        FLOC__print_glcd+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	CALL        _Double2Byte+0, 0
	MOVF        R0, 0 
	MOVWF       print_glcd_pix_L3+0 
;glcd.c,106 :: 		for(j = 0 ; j < 8 ; j++)
	INFSNZ      print_glcd_j_L3+0, 1 
	INCF        print_glcd_j_L3+1, 1 
;glcd.c,109 :: 		}
	GOTO        L_print_glcd59
L_print_glcd60:
;glcd.c,110 :: 		Glcd_Write_Data(pix);
	MOVF        print_glcd_pix_L3+0, 0 
	MOVWF       FARG_Glcd_Write_Data_ddata+0 
	CALL        _Glcd_Write_Data+0, 0
;glcd.c,102 :: 		for(i = 0 ; i < 64 ; i++)
	INFSNZ      print_glcd_i_L2+0, 1 
	INCF        print_glcd_i_L2+1, 1 
;glcd.c,111 :: 		}
	GOTO        L_print_glcd56
L_print_glcd57:
;glcd.c,98 :: 		for(k = 0 ; k < 64 ; k = k+8)
	MOVLW       8
	ADDWF       print_glcd_k_L1+0, 1 
	MOVLW       0
	ADDWFC      print_glcd_k_L1+1, 1 
;glcd.c,112 :: 		}
	GOTO        L_print_glcd53
L_print_glcd54:
;glcd.c,94 :: 		for(side = 0 ; side < 2 ; side++)
	INFSNZ      print_glcd_side_L0+0, 1 
	INCF        print_glcd_side_L0+1, 1 
;glcd.c,113 :: 		}
	GOTO        L_print_glcd50
L_print_glcd51:
;glcd.c,114 :: 		}
L_end_print_glcd:
	RETURN      0
; end of _print_glcd
