//
//  Theme.h
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entity.h"
@interface Theme : BaseEntity<NSCoding>
@property (nonatomic, strong) NSString *themeId;
@property (nonatomic, strong) NSString *themeName;

@end
