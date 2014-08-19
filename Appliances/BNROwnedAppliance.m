//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Yann's AW Office on 19/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

- (instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

- (instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    //Call the superclass's initializer
    if (self = [super initWithProductName:pn])
    {
        //Create a set to hold owners names
        _ownerNames = [[NSMutableSet alloc] init];
        
        //Is the first owner name non-nil?
        if (n)
        {
            [_ownerNames addObject:n];
        }
    }
    //Return a pointer to the new object
    return self;
}

- (void)addOwnerNames:(NSString *)n
{
    [_ownerNames addObject:n];
}

- (void)removeOwnerNames:(NSString *)n
{
    [_ownerNames removeObject:n];
}

- (NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
