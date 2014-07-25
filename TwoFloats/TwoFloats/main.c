//
//  main.c
//  TwoFloats
//
//  Created by Yann's AW Office on 19/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    //Declare Variable 1
    float var1;
    var1 = 3.14;
    
    //Declare Variable 2
    float var2;
    var2 = 42.1;

    //Declare Double
    double Sum;
    
    //Double the shit out of it
    Sum = var1+var2;
    
    //printf
    printf("Double the shit out of it!: %f $\n", Sum);
    
    return 0;

}

