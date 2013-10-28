//
//  DetailViewController.m
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "DetailViewController.h"
#import "Plist+Add.h"
#import "JSONLocal+Add.h"
#import "DBManagerAdd.h"
#import "GroupInfo.h"
#import "ItemObj.h"
@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController
@synthesize style=_style;

#pragma mark - Managing the detail item
-(void)setStyle:(int)style{
    if (_style != style) {
        _style = style;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    if (self.style==0) {
        NSMutableArray *featureList=[[DBManager sharedDBManager] queryFeatureList];
        for (Feature *feature in featureList) {
            NSLog(@"%@",feature.name);
        }
    }else if (self.style==1){
        NSMutableArray *itemList= [Plist plistLoadItemList];
        for (ItemObj *itemObj in itemList) {
            NSLog(@"%@",itemObj.itemTitle);
        }
    }else if (self.style==2){
        NSMutableArray *groupList=[JSONLocal plistLoadItemList];
        for (GroupInfo *froup in groupList) {
            NSLog(@"%@",froup.group_name);
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Detail", @"Detail");
    }
    return self;
}
							
@end
