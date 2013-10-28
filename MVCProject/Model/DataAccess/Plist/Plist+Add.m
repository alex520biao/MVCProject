//
//  Plist+Add.m
//  BRSD
//
//  Created by Alex on 12-11-26.
//
//

#import "Plist+Add.h"
#import "Theme.h"
@implementation Plist (Add)

#pragma mark itemList
+(NSMutableArray*)loadItemList{
    NSMutableArray *itemList=[[NSMutableArray alloc] init];
    NSArray *list=[self plistLoadArray:@"itemList"];
    for (int i=0; i<list.count; i++) {
        ItemObj *obj=[[ItemObj alloc] initWithDicionary:[list objectAtIndex:i]];
        [itemList addObject:obj];
    }
    return itemList;
}

#pragma mark themeList
+(NSMutableArray*)loadThemeList{
    NSMutableArray *themeList=[[NSMutableArray alloc] init];
    NSArray *list=[self plistLoadArray:@"themeList"];
    for (int i=0; i<list.count; i++) {
        Theme *theme=[[Theme alloc] initWithDicionary:[list objectAtIndex:i]];
        [themeList addObject:theme];
    }
    return themeList;
}

@end
