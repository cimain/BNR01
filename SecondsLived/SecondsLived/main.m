//
//  main.m
//  SecondsLived
//
//  Created by Yann's AW Office on 03/07/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *birthComp = [[NSDateComponents alloc]init];
        [birthComp setYear:1982];
        [birthComp setMonth:9];
        [birthComp setDay:12];
        [birthComp setHour:0];
        [birthComp setMinute:30];
        [birthComp setSecond:0];
        
        NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *birthDay = [gregorian dateFromComponents:birthComp];
        
        NSLog(@"My birthday date is %@", birthDay);
        
        printf("\n");

        NSDate *now = [[NSDate alloc]init];
        //NSDate *now = [NSDate date];
        double SecondsLived = [now timeIntervalSinceDate:birthDay];
        NSLog(@"I lived %.0f seconds since my birthday", SecondsLived);
        
    }
    printf("\n");

    return 0;
}

