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
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        
/* Original BMI version
 
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

*/
 
        //Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        //Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc]init];
        
        
        
        for (int i = 0; i < 10; i++)
        {
            //Create an instance for BNREmployee
            BNREmployee *yann = [[BNREmployee alloc] init];
            
            //Give the instance variables interesting values
            yann.weightInKilos = 63 + i;
            yann.heightInMeters = 1.79 - i/10.0;
            yann.employeeID = i;
            
            //Put the employee in the employees array
            [employees addObject:yann];
            
            //IS this the first employee?
            if (i == 0)
            {
                [executives setObject:yann forKey:@"CTO"];
            }
            
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //Create 10 assests
        for (int i = 0; i < 10; i++)
        {
            //Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            //Give an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resalValue = 350 + i * 17;
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign the asset to the employee
            [randomEmployee addAsset:asset];
            
            [allAssets addObject:asset];
            
            NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
            NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
            [employees sortUsingDescriptors:@[voa, eid]];
            
        }
 
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"allAssets: %@", allAssets);
        
        //Print out the entire dictionary
        NSLog(@"CEO: %@", executives);
        
        //Print out the CEO's information
        NSLog(@"CEO: %@", executives[@"CEO"]);
              executives = nil;
        
        NSPredicate *predicate = [NSPredicate predicateWithFormat:
                                   @"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of arrays");
        allAssets = nil;
        employees = nil;
        
    }
    return 0;
}

