//
//  main.m
//  Groceries
//
//  Created by Yann's AW Office on 14/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *groceryList = [NSMutableArray array];
        [groceryList addObject:@"Dog food"];
        [groceryList addObject:@"Milk"];
        [groceryList addObject:@"Dog treats"];
        NSLog(@"\n\nMy grocery list is:\n\n");
        for (NSString *currentItem in groceryList) {
            NSLog(@"\n\n%@\n\n", currentItem);
        }
        
    }
    return 0;
}

