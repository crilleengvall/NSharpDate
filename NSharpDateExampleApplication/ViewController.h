//
//  ViewController.h
//  NSharpDateExampleApplication
//
//  Created by Christian Engvall on 2012-03-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *methodsTable;
@property (strong, nonatomic) NSArray * dateList;
@property (strong, nonatomic) NSArray * methodAndPropertyList;

@end
