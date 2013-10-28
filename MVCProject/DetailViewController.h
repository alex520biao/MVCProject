//
//  DetailViewController.h
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
