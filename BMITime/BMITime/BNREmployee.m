//
//  BNREmployee.m
//  BMITime
//
//  Created by Yann's AW Office on 22/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

- (double)yearsofEmployment
{
    //Do I have a non-nil hireDate?
    if (self.hireDate)
    {
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; //Seconds per year    
    }
    else
    {
        return 0;
    }
}



@end
