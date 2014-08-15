//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Yann's AW Office on 14/08/2014.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

//Declare a helper function that you will user to get a path to the location on disl where you can save to the to-do list
NSString *BNRDocPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource  >

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;
- (void)addTask:(id)sender;

@end
