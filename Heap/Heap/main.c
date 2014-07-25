//
//  main.c
//  Heap
//
//  Created by Yann's AW Office on 27/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

//BMI with Heap

#include <stdio.h>
#include <stdlib.h> // malloc() and free() are in stdlib.h

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person *p)
{
    return p->weightInKilos / (p->heightInMeters * p->heightInMeters);
}

int main(int argc, const char * argv[])
{

    // Allocate memory for one Person struct
    Person *mikey = (Person *)malloc(sizeof(Person));
    
    // Fill in two members of the struct
    mikey->weightInKilos = 96;
    mikey->heightInMeters = 1.7;
    
    // Print out the BMI of the original Person
    float mikeyBMI = bodyMassIndex(mikey);
    printf("mikey has a BMI of %f\n", mikeyBMI);
    
    // Let the memory be recycled
    free(mikey);
    
    // Forget where it was
    mikey = NULL;
    
    printf("\n");
    return 0;
}

