#include "glcd.h"

void image_to_matrix(const char * entree, unsigned char ** retour)
{
    int i = 0;

    for(i = 0 ; i < 1024 ; i++)
    {
        int j = 0;

        for(j = 0 ; j < 8 ; j++)
        {
            retour[j+8*(i/SCREEN_W)][i%SCREEN_W] = (entree[i] & (0b00000001 << j)) ? 1 : 0;
        }
    }
}

void matrix_to_image(unsigned char ** entree, char retour[1024])
{
    int i = 0;

    for(i = 0 ; i < 128 ; i++)
    {
        int j = 0;
        retour[i+(j/8)*SCREEN_W] = 0;
        for(j = 0 ; j < 64 ; j++)
        {
            retour[i+(j/8)*SCREEN_W] += entree[j][i]*pow(2,j%8);
        }
    }
}

void game_of_life(unsigned char ** p_monTab)
{
    // compter le nombre de voisin et mettre dans p_monTab et mettre à jour p_monTab
    int i = 0;
    for(i = 0 ; i < SCREEN_H ; i++)
    {
        int j = 0;
        for(j = 0 ; j < SCREEN_W ; j++)
        {
            p_monTab[i][j] *= 10;
        }
    }
    
    i = 0;
    for(i = 0 ; i < SCREEN_H ; i++)
    {
        int j = 0;
        for(j = 0 ; j < SCREEN_W ; j++)
        {
            int n,s,e,o;
            if((n=j-1)<0){n = SCREEN_W - 1;}
            if((o=i-1)<0){o = SCREEN_H - 1;}
            if((s=j+1)>SCREEN_W){s = 0;}
            if((e=i+1)>SCREEN_H){e = 0;}
            


            p_monTab[i][j] += (p_monTab[o][n]>9 ? 1 : 0) + (p_monTab[i][n]>9 ? 1 : 0) +
                              (p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][j]>9 ? 1 : 0) +
                              (p_monTab[e][n]>9 ? 1 : 0) + (p_monTab[o][s]>9 ? 1 : 0) +
                              (p_monTab[i][s]>9 ? 1 : 0) + (p_monTab[e][s]>9 ? 1 : 0);

            /*
                if(i>0)
                {
                    if(j>0){newTab[i][j] += p_monTab[i-1][j-1];}
                    newTab[i][j] += p_monTab[i-1][j];
                    if(j<SCREEN_W - 1){newTab[i][j] += p_monTab[i-1][j+1];}
                }
                if(j>0){newTab[i][j] += p_monTab[i][j-1];}
                if(j<SCREEN_W - 1){newTab[i][j] += p_monTab[i][j+1];}
                if(i<SCREEN_H - 1)
                {
                    if(j>0){newTab[i][j] += p_monTab[i+1][j-1];}
                    newTab[i][j] += p_monTab[i+1][j];
                    if(j<SCREEN_W - 1){newTab[i][j] += p_monTab[i+1][j+1];}
                }
            */

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