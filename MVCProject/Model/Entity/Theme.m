//
//  Theme.m
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "Theme.h"
#import "JSON.h"
@implementation Theme

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if ((self = [super init])) {
        self.themeId=(NSString*)[aDecoder decodeObjectForKey:@"themeId"];
		self.themeName = (NSString*)[aDecoder decodeObjectForKey:@"themeName"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.themeName forKey:@"themeId"];
	[aCoder encodeObject:self.themeName forKey:@"themeName"];
}

- (NSString *)description
{
    return [self toJson];
}


@end
