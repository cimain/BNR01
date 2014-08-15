//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Yann's AW Office on 15/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument
    <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;

@property (nonatomic) IBOutlet NSTableView *taskTable;

- (IBAction)addTask:(id)sender;

@end
