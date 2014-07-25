//
//  main.m
//  TimeAfterTime
//
//  Created by Yann's AW Office on 30/06/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
  //NSDate *now = [NSDate date];
    NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);

    printf("\n");
    double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);
    
        /*Sending bogus messages
        double testSeconds = [NSDate timeIntervalSince1970];
        NSDate *testSeconds = [now date];
        */
        
    printf("\n");
        
    NSDate *later = [now dateByAddingTimeInterval:1000000];
        NSLog(@"In 1,000,000 seconds it will be %@", later);
    
    printf("\n");
        
    NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calendar is %@", [cal calendarIdentifier]);
    
    printf("\n");

    unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                       inUnit:NSMonthCalendarUnit
                                      forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        
        
        
    
    }
    printf("\n");
    return 0;
}

