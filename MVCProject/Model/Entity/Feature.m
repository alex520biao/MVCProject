//
//  Feature.m
//  BRSD
//
//  Created by Alex on 12-11-26.
//
//

#import "Feature.h"
@implementation Feature
@synthesize sequence;
@synthesize feature_id;
@synthesize city_id;
@synthesize name;
@synthesize description;
@synthesize icon;
//@synthesize spotTypeId;

-(id) init{
	self = [super init];
	if (self) {
//        //初始化自定义类型的属性
//        SpotType *type=[[SpotType alloc] init];
//        self.spotType=type;
	}
	return self;
}

#pragma mark FMDB
//重写initWithJSONStr方法
-(id) initWithFMResultSet:(FMResultSet *)set{
	self = [super initWithFMResultSet:set];
	if (self) {
        //从数据库表中加载数据之后处理
	}
	return self;
}
@end
