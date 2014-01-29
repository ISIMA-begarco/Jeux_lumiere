#line 1 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/glcd.c"
#line 1 "c:/users/benji/documents/github/jeux_lumiere/programme/glcd.h"






void game_of_life(unsigned char ** p_monTab);

void image_to_matrix(const char * entree, unsigned char ** retour);
void matrix_to_image(unsigned char ** entree, char retour[1024]);
void print_glcd(unsigned char ** image);
#line 3 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/glcd.c"
void image_to_matrix(const char * entree, unsigned char ** retour)
{
 int i = 0;

 for(i = 0 ; i < 1024 ; i++)
 {
 int j = 0;

 for(j = 0 ; j < 8 ; j++)
 {
 retour[j+8*(i/ 128 )][i% 128 ] = (entree[i] & (0b00000001 << j)) ? 1 : 0;
 }
 }
}

void matrix_to_image(unsigned char ** entree, char retour[1024])
{
 int i = 0;

 for(i = 0 ; i < 128 ; i++)
 {
 int j = 0;
 retour[i+(j/8)* 128 ] = 0;
 for(j = 0 ; j < 64 ; j++)
 {
 retour[i+(j/8)* 128 ] += entree[j][i]*pow(2,j%8);
 }
 }
}

void game_of_life(unsigned char ** p_monTab)
{

 int i = 0;
 for(i = 0 ; i <  64  ; i++)
 {
 int j = 0;
 for(j = 0 ; j <  128  ; j++)
 {
 p_monTab[i][j] *= 10;
 }
 }

 i = 0;
 for(i = 0 ; i <  64  ; i++)
 {
 int j = 0;
 for(j = 0 ; j <  128  ; j++)
 {
 int n,s,e,o;
 if((n=j-1)<0){n =  128  - 1;}
 if((o=i-1)<0){o =  64  - 1;}
 if((s=j+1)> 128 ){s = 0;}
 if((e=i+1)> 64 ){e = 0;}



 p_monTab[i][j] += (p_monTab[o][n]>9 ? 1 : 0) + (p_monTab[i][n]>9 ? 1 : 0) +
 (p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][j]>9 ? 1 : 0) +
 (p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][s]>9 ? 1 : 0) +
 (p_monTab[i][s]>9 ? 1 : 0) + (p_monTab[e][s]>9 ? 1 : 0);
#line 82 "C:/Users/Benji/Documents/GitHub/Jeux_lumiere/Programme/glcd.c"
 if((p_monTab[i][j] == 12) || (p_monTab[i][j] == 3))
 {
 p_monTab[i][j] = 1;
 }
 else {p_monTab[i][j] = 0;}
 }
 }
}

void print_glcd(unsigned char ** image)
{
 int side = 0;
 for(side = 0 ; side < 2 ; side++)
 {
 int k = 0;
 Glcd_Set_Side(side);
 for(k = 0 ; k < 64 ; k = k+8)
 {
 int i = 0;
 Glcd_Set_Page(k/8);
 for(i = 0 ; i < 64 ; i++)
 {
 int j = 0;
 char pix = 0;
 for(j = 0 ; j < 8 ; j++)
 {
 pix += (image[j+k][i+(side*64)]*pow(2,j));
 }
 Glcd_Write_Data(pix);
 }
 }
 }
}
