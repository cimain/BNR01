//
//  main.c
//  Coolness v2
//
//  Created by Yann's AW Office on 25/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#import <readline/readline.h>

int main(int argc, const char * argv[])
{
    //Increment
    int i = 0;
    while (i < 5)
    {
        printf("%d. Coding is Cool\n", i);
        i++;
    }
    
    //For
    printf("\n"); //Return
    
    for (int j = 0; j < 5; j++)
    {
        printf("%d. Coding Rules\n", j);
    }
    
    printf("\n"); //Return
    
    //Break
    int k;
    for (k = 0; k < 12; k++)
    {
        printf("Checking k = %d\n", k);
        if (k + 90 == k * k)
        {
            break;
        }
    }
    printf("The answer is %d.\n", k);
    
    printf("\n"); //Return
    
    //Continue
    int l;
    for (l = 0; l < 15; l++)
    {
        if (l % 3 == 0)
        {
            continue;
        }
        printf("Checking l = %d\n", l);
        if (l + 90 == k * k)
        {
            break;
        }
    }
    
    printf("\n"); //Return
    
    //Do-While
    int m = 0;
    do {
        printf("%d. Coding is Cool\n", m);
        m++;
    }
    while (m < 16);
    
    printf("\n"); //Return

//Extended version with input
    
    printf("Who is cool? ");
    const char *name = readline(NULL);
    printf("%s is cool!\n\n", name);
    
    printf("\n"); //Return

    return 0;
}

