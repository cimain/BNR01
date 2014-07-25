//
//  main.m
//  Stocks
//
//  Created by Yann's AW Office on 15/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        BNRStockHolding *stock0 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *stock2 = [[BNRStockHolding alloc] init];
        
        [stock0 setPurchaseSharePrice:2.30];
        [stock0 setCurrentSharePrice:4.50];
        [stock0 setNumberOfShares:40];
        
        [stock1 setPurchaseSharePrice:12.19];
        [stock1 setCurrentSharePrice:10.56];
        [stock1 setNumberOfShares:90];
        
        [stock2 setPurchaseSharePrice:45.10];
        [stock2 setCurrentSharePrice:49.51];
        [stock2 setNumberOfShares:210];
        
        NSMutableArray *listOfStocks = [NSMutableArray array];
        
        [listOfStocks addObject:stock0];
        [listOfStocks addObject:stock1];
        [listOfStocks addObject:stock2];
        
        int stockNumber = 1;
        
        for (BNRStockHolding *s in listOfStocks) {
            float finalValue = [s valueInDollars] - [s costInDollars];
            NSLog(@"Your stake in stock #%d is currently worth %f", stockNumber, finalValue);
            stockNumber++;
        }      
    }
    return 0;
}

