//
//  main.m
//  VowelMovement
//
//  Created by Yann's AW Office on 13/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create array of strings and a container for devowelized ones
        NSArray *originalStrings = @[@"Sauerkraut", @"Raygun", @"Big Nerd Ranch", @"Mississippi"];
        NSLog(@"original strings: %@", originalStrings);
        NSMutableArray *devowelizedStrings = [NSMutableArray array];
        
        //Create a list of characters to be removed from the string
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u", @"y"];
        
        //Declare the block variable
            //void (^devowelizer)(id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        // Compose a block and assign it to the variable
        devowelizer = ^(id string, NSUInteger i, BOOL *stop) {
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            // Iterate over the array of vowels, replacing occurrences of each
            // with an empty string
            for (NSString *s in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:s
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            
            [devowelizedStrings addObject:newString];
            
        }; // End of block assignment
    
        //Iterate over the array with your block
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"devowelized stringd: %@", devowelizedStrings);
        
    }
    return 0;
}

