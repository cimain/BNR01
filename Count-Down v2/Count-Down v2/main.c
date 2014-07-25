//
//  main.c
//  Count-Down v2
//
//  Created by Yann's AW Office on 25/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#import <readline/readline.h>

int main(int argc, const char * argv[])
{
    //With While - you have to use While as with For you need to define x in the expression which doesn't work because of the none available atoi
    printf("Where should I start counting?: ");
    const char *input = readline(NULL);
    int x = atoi(input);
    //int x = atoi(const char *x = readline(NULL));
    while (x >= 0)
    {
        printf("%d \n", x);
        x -= 3;
        if (x % 5)
        {
            continue;
        }
        printf("Found one here!\n");
    }
    
    printf("\n"); //Return
    return 0;
}

