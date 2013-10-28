//
//  Plist+Add.m
//  BRSD
//
//  Created by Alex on 12-11-26.
//
//

#import "JSONLocal+Add.h"
#import "GroupInfo.h"
@implementation JSONLocal (Add)

#pragma mark itemList
+(NSMutableArray*)loadGroupList{
    NSMutableArray *groupList=[[NSMutableArray alloc] init];
    NSDictionary *dict=[JSONLocal plistLoadDict:@"groupList"];
    NSArray *list=[[dict objectForKey:@"data"] objectForKey:@"groups"];
    for (int i=0; i<list.count; i++) {
        GroupInfo *obj=[[GroupInfo alloc] initWithDicionary:[list objectAtIndex:i]];
        [groupList addObject:obj];
    }
    return groupList;
}

#pragma mark other


@end
