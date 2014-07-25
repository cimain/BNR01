//
//  main.c
//  Count-Down
//
//  Created by Yann's AW Office on 24/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //With While
/*
    int x = 99;
    while (x >= 0)
    {
        printf("%d. \n", x);
        x -= 3;
    }
*/
    
    //With For
    int x = 99;
    for (x = 99; x >= 0; x -= 3)
    {
        printf("%d\n", x);
        if (x % 5)
        {
            continue;
        }
        printf("Found one here!\n");
    }
    
    printf("\n"); //Return
    return 0;
}

