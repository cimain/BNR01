//
//  main.c
//  Numbers
//
//  Created by Yann's AW Office on 23/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    //All the math instructions compiled one after the other
    int x = 255;
    printf("x is %d.\n", x);
    printf("In octal, x is %o.\n", x);
    printf("In hexadecimal, x is %x.\n", x);
    printf("\n"); //Space
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d\n", 11 / 3);
    printf("11 / 3 = %d remainder of %d \n", 11 / 3, 11 % 3);
    printf("11 / 3.0 = %f\n", 11 / (float)3);
    printf("The absolute value of -5 is %d\n", abs(-5));
    printf("\n");//Space
    
    //Float display test
    float r = 1234.56789;
    printf("Display r = %f.\n", r);
    printf("Display r = %e.\n", r);
    printf("\n"); //Space
    
    //The challenge with integer - check floating point again
    double s = 1;
    printf("Display of sin function of 1 is:%.3f.\n", sin(s));
    
    printf("\n"); //Space
    return 0;
}

