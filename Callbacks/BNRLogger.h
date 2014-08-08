//
//  BNRLogger.h
//  Callbacks
//
//  Created by Yann's AW Office on 08/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRLogger : NSObject
<NSURLConnectionDelegate, NSURLConnectionDataDelegate>
@property (nonatomic) NSDate *LastTime;
- (NSString *)lastTimeString;
- (void)updateLastTime:(NSTimer *)t;
@end
