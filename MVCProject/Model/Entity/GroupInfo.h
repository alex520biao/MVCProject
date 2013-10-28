//
//  GroupInfo.h
//  CloudAlbum
//
//  Created by alex on 13-4-19.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entity.h"

@interface GroupInfo : BaseEntity
@property (nonatomic, copy) NSString *group_id;
@property (nonatomic, copy) NSString *group_name;
@property (nonatomic, copy) NSString *posts_num;
@property (nonatomic, copy) NSString *users_num;
@property (nonatomic, copy) NSString *group_ann;
@property (nonatomic, copy) NSString *identity;
@property (nonatomic, copy) NSString *pictures_num;
@property (nonatomic, copy) NSString *cover_picture_url;
@property (nonatomic, copy) NSString *create_time;



@end
