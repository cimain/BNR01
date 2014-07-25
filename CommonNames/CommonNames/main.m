//
//  main.m
//  CommonNames
//
//  Created by Yann's AW Office on 14/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int numMatches = 0;
        int numChecks = 0;
        
        // Read in the propernames file as a large string.
        NSString *properNames = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL];
        // Create an array of proper names (all are capitalized).
        NSArray *namesAr = [properNames componentsSeparatedByString:@"\n"];
        
        // Read in the words file as a large string.
        NSString *words = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                    encoding:NSUTF8StringEncoding
                                                       error:NULL];
        // Create an array of words.
        NSArray *wordsAr = [words componentsSeparatedByString:@"\n"];
        
        // Find proper names that match lower case equivalents in the words array.
        for (NSString *pn in namesAr) {
            NSString *pn_lc = [pn lowercaseString];
            
            for (NSString *wd in wordsAr) {
                numChecks++;
                
                if ([pn_lc isEqualToString:wd] && [wd isNotEqualTo:@""]) {
                    numMatches++;
                    NSLog(@"Match %i: %@ / %@", numMatches, pn, wd);
                    break;
                }
            }
        }
        NSLog(@"Total number of proper names: %lu", (unsigned long)[namesAr count]);
        NSLog(@"Number of words checked: %lu", (unsigned long)[wordsAr count]);
        NSLog(@"\nTotal number of checks: %i", numChecks);
   
    }
    return 0;
}

