//
//  main.c
//  Triangle
//
//  Created by Yann's AW Office on 20/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

//New function here
//Pourquoi on a () avec ces variables a la suite du nom de la fonction?

float remainingAngle (angleA, angleB)
{
    float result = 180 - (angleA + angleB);
    return result;
}

//Main below
int main(int argc, const char * argv[])
{
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

