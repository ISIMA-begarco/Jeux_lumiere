#ifndef GLCD_H_INCLUDED
#define GLCD_H_INCLUDED

#define SCREEN_W       128
#define SCREEN_H       64

void game_of_life(unsigned char ** p_monTab); /// effectue une étape du célèbre jeu de la vie

void image_to_matrix(const char * entree, unsigned char ** retour); /// convertit les images standart en image pour nous
void matrix_to_image(unsigned char ** entree, char retour[1024]); /// inversement
void print_glcd(unsigned char ** image); /// imprime nos images

#endif // GLCD_H_INCLUDED