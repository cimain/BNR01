//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Yann's AW Office on 15/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    //These are the instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// BNRPerson has methods to read and set its instance variables
- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)c;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

// These are instance methods
- (float)costInDollars;   // purchaseSharePrice * numberOfShares
- (float)valueInDollars;  // currentSharePrice * numberOfShares

@end
