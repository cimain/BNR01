//
//  main.c
//  PBR
//
//  Created by Yann's AW Office on 26/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>
#include <math.h>

//Second exercise - First at the bottom in /*Comments

void metersToFeetAndInches (double meters, unsigned int *ftPtr, double *inPtr)
{
    //This function assumes meters is non-negative.
    
    //Convert the number of meters into a floating-point point number of feet
    double rawFeet = meters * 3.281; //e.g. 2.4536
    
    //How many complete feets as an unsigned int?
    unsigned int feet = (unsigned int)floor(rawFeet);
    
    //Store the number of feet at the supplied address
    if (ftPtr)
    {
        printf("Storing %u to the address %p\n", feet, ftPtr);
        *ftPtr = feet;
    }
    //From First iteration: printf("Storing %u to the address %p\n", feet, ftPtr);
    //From First iteration: *ftPtr = feet;
    
    //Calculate inches
    double fractionalFoot = rawFeet - feet;
    double inches = fractionalFoot * 12.0;
    
    //Store the number of inches at the supplied address
    if (inPtr)
    {
        printf("Storing %2.f to the address %p\n", inches, inPtr);
        *inPtr = inches;
    }
    
    //From First iteration: printf("Storing %2.f to the address %p\n", inches, inPtr);
    //From First iteration:*inPtr = inches;
    
}

int main(int argc, const char * argv[])
{
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    printf("%.1f meters is equal to %d feet and %.1f inches.", meters, feet, inches);
    
    printf("\n");

/*
    //First exercise
    double pi = 3.14;
    double integerPart;
    double fractionPart;
    
    //Pass the address of the integerpart as an argument
    fractionPart = modf(pi, &integerPart);
    
    //Find the value stored in integerPart
    printf("integerPart = %.0f, fractionPart = %.2f\n", integerPart, fractionPart);

    printf("\n");
*/
    
    return 0;
}

