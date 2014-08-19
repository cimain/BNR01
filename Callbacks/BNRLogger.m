//
//  BNRLogger.m
//  Callbacks
//
//  Created by Yann's AW Office on 08/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRLogger.h"

@implementation BNRLogger

- (NSString *)lastTimeString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dataFormatter");
    }
    return [dateFormatter stringFromDate:self.LastTime];
}

//Notification pour zoneChange
- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

- (void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self willChangeValueForKey:@"lastTime"];
    _LastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    NSLog(@"Just set time to %@", self.lastTimeString);
}

//Called each time a chunk of data  arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
//Create a mutable data if it does not already exist
if (!_incomingData)
{
    _incomingData = [[NSMutableData alloc] init];
}
    
[_incomingData appendData:data];
    
}

//Called when the last chunk of data has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:_incomingData encoding:NSUTF8StringEncoding];
    _incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //UNcomment the next line to see the entire fetched file
    //NSLog(@"The whole string is %@", string);
}

//Called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    _incomingData = nil;
}

@end
