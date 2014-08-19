//
//  BNRAppliance.h
//  Appliances
//
//  Created by Yann's AW Office on 19/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject
{
    NSString *_productName;
}
@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;

//The designated intializer
- (instancetype)initWithProductName:(NSString *)pn;

@end
