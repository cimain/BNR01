//
//  main.m
//  Host
//
//  Created by Yann's AW Office on 02/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [NSHost currentHost];
        NSString *name = [host localizedName];
        NSLog(@"%@", name);
        
    }
    return 0;
}

