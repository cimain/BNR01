//
//  main.c
//  Adresses
//
//  Created by Yann's AW Office on 25/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its %d value at %p\n", i, addressOfI);
    printf("And this function starts at %p\n", main);

    printf("\n");
    
    int j = 28;
    int *addressOfJ = &j;
    printf("j stores its %d value at %p\n", j, addressOfJ);
    printf("The int stored at the addressOfJ is %d\n", *addressOfJ);
    
    printf("\n");
    
    int k = 39;
    int *addressOfK = &k;
    printf("k stores its %d value at %p\n", k, addressOfK);
    *addressOfK = 93;
    printf("Now k is %d\n", k);
    printf("The int stored at the addressOfK is %d\n", *addressOfK);
    
    printf("\n");
    
    int l = 50;
    int *addressOfL = &l;
    printf("l stores its %d value at %p\n", l, addressOfL);
    *addressOfL = 5;
    printf("Now l is %d\n", l);
    printf("The int stored at the addressOfK is %d\n", *addressOfL);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int*));
    
    printf("\n");
    //Challenge01:how much memory?
    int m = 61;
    int *addressOfM = &m;
    printf("m of value %d stores its value at %p\n", m, addressOfM);
    printf("%p holds %zu memory\n", addressOfM, sizeof (int));
    
//Challenge 1 alternative
//    int t = 17;
//    printf("t stores its value at %p\n", &t);
//    printf("%zu holds %zu memory\n", t, sizeof (int));
    
    printf("\n");
    //Challenge02:how much memory?
        short x = 0;
        while (x > -1) {
            x++;
        }
        x--;
        printf("The largest value of short is %d.\n", x);
        x = 0;
        while (x < 1)
        {
            x--;
        }
        x++;
        printf("The smallest value of short is %d.\n", x);
        
        unsigned short y = 1;
        while (y > 0)
        {
            y++;
        }
        y--;
        printf("The largest value of unsigned short is %d.\n", y);
    
    printf("\n");

    return 0;
}

