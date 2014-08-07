//
//  main.m
//  Stringz
//
//  Created by Yann's AW Office on 07/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableString *str = [[NSMutableString alloc] init];
        
        for (int i = 0; i < 10; i++) {
            [str appendString:@"Yann is cool!\n"];
        }

        //Declare a pointer to an NSError object, but do not instantiate it.
        //The NSError instance will only be created if there is, in fact, an error.
        NSError *error;
        
        //Pass the NSError pointer by reference to the NSString method
        BOOL succes = [str writeToFile:@"/tmp/cool.txt"
         atomically:YES
                encoding:NSUTF8StringEncoding
                                 error:NULL];
        
        //Test the returned BOOL, and query the NSError if the write failed
        if (succes)
        {
            NSLog(@"done writing /tmp/cool.txt");
        }
        else
        {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }
        /*
        NSLog(@"done writing /tmp/cool.txt");
        */
    }
    return 0;
}

