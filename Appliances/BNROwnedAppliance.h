//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Yann's AW Office on 19/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNROwnedAppliance : NSObject
@property (readonly) NSSet *ownerNames;

//The designated initializer
- (instancetype)initWithProductName:(NSString *)pn firstOwnerName: (NSString *)n;
- (void)addOwnerNames:(NSString *)n;
- (void)removeOwnerNames:(NSString *)n;

@end
