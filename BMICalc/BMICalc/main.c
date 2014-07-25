//
//  main.c
//  BMICalc
//
//  Created by Yann's AW Office on 27/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#include <stdio.h>

/*
//Here is the declaration of the structure
struct Person
{
    float heightInMeters;
    int weightInKilos;
};
*/

//Here is the declaration of the type Person
typedef struct
    {
        float heightInMeters;
        int weightInKilos;
    } Person;

float bodyMassIndex (Person p)
    {
        return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
    }

int main(int argc, const char * argv[])
{
    //struct Person mikey;
    Person mikey;
    mikey.heightInMeters = 1.7;
    mikey.weightInKilos = 96;
    
    //struct Person aaron;
    Person aaron;
    aaron.heightInMeters = 1.97;
    aaron.weightInKilos = 84;
    
    //struct Person yann;
    Person yann;
    yann.heightInMeters = 1.79;
    yann.weightInKilos = 63;

/*
    printf("mikey is %.2f meters tall\n", mikey.heightInMeters);
    printf("mikey is %d kilograms\n", mikey.weightInKilos);
    
    printf("\n");
    
    printf("aaron is %.2f meters tall\n", aaron.heightInMeters);
    printf("aaron is %d kilograms\n", aaron.weightInKilos);
    
    printf("\n");
    
    printf("yann is %.2f meters tall\n", yann.heightInMeters);
    printf("yann is %d kilograms\n", yann.weightInKilos);
*/
  
    float bmi;
    bmi = bodyMassIndex(mikey);
    printf("mikey has a BMI of %.2f\n", bmi);
    printf("\n");

    bmi = bodyMassIndex(aaron);
    printf("aaron has a BMI of %.2f\n", bmi);
    printf("\n");
    
    bmi = bodyMassIndex(yann);
    printf("yann has a BMI of %.2f\n", bmi);
    printf("\n");

    printf("\n");
    
    return 0;
}

