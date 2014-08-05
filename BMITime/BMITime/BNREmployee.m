//
//  BNREmployee.m
//  BMITime
//
//  Created by Yann's AW Office on 22/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

//A class extension
@interface BNREmployee ()
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officeAlarmCode;
@end

@implementation BNREmployee

//Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets)
    {
        //Create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    a.holder = self;
}

- (unsigned int)valueOfAssets
{
    //Sum up the resale value of assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets)
    {
        sum += [a resalValue];
    }
    return sum;
}

- (NSString *)description
{
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
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
