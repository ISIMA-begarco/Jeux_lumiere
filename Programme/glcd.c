#include "glcd.h"

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
