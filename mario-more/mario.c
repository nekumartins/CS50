#include<stdio.h>
#include<cs50.h>

int main()
{
    int num;
    do
    {
       num = get_int("Choose a height from 1 - 8: ");
       

    }while(num <= 0 || num >= 8);

    for(int i = 1; i <=num; i++)
    {
        for(int j = 1; j <= num - i ; j++)
        {
            printf(" ");
        }
        for (int k = 0; k < i ; k++)
        {
            printf("#");
        }
        printf("  ");
        for (int k = 0; k < i ; k++)
        {
            printf("#");
        }
        printf("\n");
    }
    
}