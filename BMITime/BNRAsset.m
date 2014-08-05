//
//  BNRAsset.m
//  BMITime
//
//  Created by Yann's AW Office on 01/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    //return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resalValue];
    //Is holder non-nil?
    if (self.holder)
    {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resalValue, self.holder];
    }

    else
    {
        return [NSString stringWithFormat:@"<%@: $%d unsagnied>", self.label, self.resalValue];
    }

}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
