//
//  main.m
//  BMITime
//
//  Created by Yann's AW Office on 15/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "BNRPerson.h"
#import "BNREmployee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
   
    //Create an instance of BNREmployee
        BNREmployee *yann = [[BNREmployee alloc] init];
        
    //Give the instance variables interesting values using setters
//        [yann setWeightInKilos:63];
//        [yann setHeightInMeters:1.79];
        yann.WeightInKilos = 63;
        yann.heightInMeters = 1.79;
        yann.employeeID = 12;
        yann.hireDate = [NSDate dateWithNaturalLanguageString:@"July 22nd, 2014"];
        
    //Log the instance variables using the getters
//        float height = [yann heightInMeters];
//        int weight = [yann weightInKilos];
        float height = yann.heightInMeters;
        int weight = yann.weightInKilos;
        
        //NSlogs of the program
        NSLog(@"yann is %.2f meters tall and weighs %d kilograms", height, weight);
        NSDate *date = yann.hireDate;
        NSLog(@"Employee %@ hired on %@", yann, date);
        
    //Log some values using custom methods
        float bmi = [yann bodyMassIndex];
        double years = [yann yearsofEmployment];
        NSLog(@"BMI of %.2f, has worked with us for %.2f years", bmi, years);
        //NSLog(@"yann has a BMI index of %f", bmi);
    
    }
    return 0;
}

