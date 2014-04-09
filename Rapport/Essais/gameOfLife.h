#ifndef GAMEOFLIFE_H_INCLUDED
#define GAMEOFLIFE_H_INCLUDED

/*******************
                   *
      DEFINE       *
                   *
********************/

#define SCREEN_W       128
#define SCREEN_H       64

/*******************
                   *
      PROTOTYPES   *
                   *
********************/

// convertit les images standart en image pour nous
void image_to_matrix(const char * entree, unsigned char ** retour);
// imprime nos images
void print_glcd(unsigned char ** image);
// effectue une étape du célèbre jeu de la vie
void game_of_life(unsigned char ** p_monTab);
// inversement
void matrix_to_image(unsigned char ** entree, char retour[1024]);

#endif // GAMEOFLIFE_H_INCLUDED

