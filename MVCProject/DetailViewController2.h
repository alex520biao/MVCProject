//
//  DetailViewController.h
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController2 : UIViewController

@property (assign, nonatomic) int style;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
