//
//  GroupInfo.m
//  CloudAlbum
//
//  Created by alex on 13-4-19.
//  Copyright (c) 2013年 com.baidu. All rights reserved.
//

#import "GroupInfo.h"

@implementation GroupInfo
@synthesize group_id=_group_id;
@synthesize group_name=_group_name;
@synthesize cover_picture_url=_cover_picture_url;
@synthesize create_time=_create_time;
@synthesize pictures_num=_pictures_num;
@synthesize posts_num=_posts_num;
@synthesize users_num=_users_num;
@synthesize group_ann=_group_ann;

//-(void)dealloc{
//    [_group_id release];
//    _group_id = nil;
//    [_group_name release];
//    _group_name = nil;
//    [_cover_picture_url release];
//    _cover_picture_url = nil;
//    [_create_time release];
//    _create_time = nil;
//    [_pictures_num release];
//    _pictures_num=nil;
//    
//    [_posts_num release];
//    _posts_num=nil;
//    
//    [_users_num release];
//    _users_num=nil;
//    
//    [_group_ann release];
//    _group_ann=nil;
//    
//    [_identity release];
//    _identity=nil;
//    
//    [super dealloc];
//}

#pragma mark JSON
//重写initWithJSONStr方法
-(id) initWithJSONStr:(NSString*)str{
	self = [super initWithJSONStr:str];
	if (self) {
        //从JSON字符串加载数据之后处理
        //NSDictionary *dict=(NSDictionary*)[self valueForKey:@"imgSeq"];
		//self.imgSeq=[[ImgSeq alloc] initWithDicionary:dict];
	}
	return self;
}

//通过NSDictionary创建BaseEntity对象
-(id) initWithDicionary:(NSDictionary*)dict{
	self = [super initWithDicionary:dict];
	if (self) {
        NSLog(@"group_id:%@",self.group_id);
        NSLog(@"group_name:%@",self.group_name);
        NSLog(@"posts_num:%@",self.posts_num);
        NSLog(@"users_num:%@",self.users_num);
        NSLog(@"cover_picture_url:%@",self.cover_picture_url);
        NSLog(@"group_ann:%@",self.group_ann);
        NSLog(@"identity:%@",self.identity);
        
//        //根据dictionary的key自定义
//        self.group_id=[dict objectForKey:@"album_id"];
//        self.group_name=[dict objectForKey:@"album_name"];
//        self.cover_picture_url=[dict objectForKey:@"cover_picture_url"];
//        self.create_time=[dict objectForKey:@"create_time"];
//        self.pictures_num=[dict objectForKey:@"picture_num"];
	}
	return self;
}



@end
