//
//  MasterViewController.h
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
