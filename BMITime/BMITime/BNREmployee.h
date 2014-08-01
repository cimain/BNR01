//
//  BNREmployee.h
//  BMITime
//
//  Created by Yann's AW Office on 22/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson
{
    NSMutableArray *_assets;
}
@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;
- (double)yearsofEmployment;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
