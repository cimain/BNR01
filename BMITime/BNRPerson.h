//
//  BNRPerson.h
//  BMITime
//
//  Created by Yann's AW Office on 15/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

/*
{
    //BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}

//BNRPerson has methods to read and set its instance variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;
*/

//BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;








@end
