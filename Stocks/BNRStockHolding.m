//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Yann's AW Office on 15/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c
{
    _currentSharePrice = c;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}

- (float)costInDollars
{
    float p = [self purchaseSharePrice];
    return [self numberOfShares] * p;
}

- (float)valueInDollars
{
    float c = [self currentSharePrice];
    return [self numberOfShares] * c;
}

@end
