//
//  main.c
//  Turkey
//
//  Created by Yann's AW Office on 19/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //Declare the variable called 'weight' of type float
    float weight;
    
    //Store a number in that variable
    weight = 14.2;
    
    //log it to the user
    printf("The turkey weighs %f.\n", weight);
    
    //Declare an other variable of type float
    float cookingTime;
    
    //Calculate the cooking time and store it in the variable
    //In this case, '*' means 'multiplied by'
    cookingTime = 15.0+15.0*weight;
    
    //Log that to the user
    printf("Cook it for %f minutes.\n", cookingTime);
    
    //End this function and indicate success
    return 0;
    
}

