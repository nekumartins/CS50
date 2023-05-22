#include <stdio.h>

void sayhello(char * name, int num);
int main(void)
{   char name[20];
    printf("What is your name: ");
    scanf("%s",name);
    int num; 
    printf("Hello %s, enter a random number:) : ", name);
    scanf("%d", &num);
    sayhello(name, num);


    
}

void sayhello(char * name, int num)
{
    for (int i = 0; i < num; i++)
    {
        printf("Hello, %s\n", name);
    }
}