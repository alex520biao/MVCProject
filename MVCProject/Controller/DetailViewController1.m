//
//  DetailViewController.m
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "DetailViewController2.h"
#import "Plist+Add.h"
#import "JSONLocal+Add.h"
#import "DBManagerAdd.h"
#import "GroupInfo.h"
#import "ItemObj.h"
#import "Theme.h"
#import "FileArchiverManager.h"
#import "UserDefaultsManager.h"
@interface DetailViewController2 ()
- (void)configureView;
@end

@implementation DetailViewController2
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
        NSMutableArray *itemList= [Plist loadItemList];
        for (ItemObj *itemObj in itemList) {
            NSLog(@"%@",itemObj.itemTitle);
        }
    }else if (self.style==2){
        NSMutableArray *groupList=[JSONLocal loadGroupList];
        for (GroupInfo *froup in groupList) {
            NSLog(@"%@",froup.group_name);
        }
    }else if (self.style==4){
        //保存当前主题
        Theme *theme=[[Theme alloc] init];
        theme.themeName=@"酷黑";
        [[UserDefaultsManager instance] saveCurrentTheme:theme];
        //读取当前主题
        Theme *currentTheme=[[UserDefaultsManager instance] loadCurrentTheme];
        NSLog(@"%@",currentTheme.themeName);
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
