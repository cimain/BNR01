//
//  BNRAppliance.m
//  Appliances
//
//  Created by Yann's AW Office on 19/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAppliance.h"

@implementation BNRAppliance

- (instancetype)initWithProductName:(NSString *)pn
{
    // Call NSObject's init method
    self = [super init];
    
    // Did it return something non-nil?
    if (self) {
        
        // Set the product name
        _productName = [pn copy];
        
        // Give voltage a starting value
        _voltage = 120;
    }
    return self;
}

- (instancetype)init
{
    return [self initWithProductName:@"Unknown"];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: %d volts>",
            _productName, self.voltage];
}

- (void)setVoltage:(int)x
{
    NSLog(@"setting voltage to %d", x);
    _voltage = x;
}

@end
