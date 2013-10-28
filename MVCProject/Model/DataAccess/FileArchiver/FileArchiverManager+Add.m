//
//  FileArchiverManager+Add.m
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "FileArchiverManager+Add.h"
#import "FileArchiverManager.h"
#define kShoppingCartFile               @"shoppingcarts.archive"//归档文件名称
#define kShoppingCartFileDataKey        @"shoppingcarts"//DataKey

@implementation FileArchiverManager (Add)

- (NSString *)dataFilePath
{
	return [[self documentsDirectory] stringByAppendingPathComponent:kShoppingCartFile];
}

- (void)saveShoppingCart:(NSArray*)lists
{
	NSMutableData *data = [[NSMutableData alloc] init];
	NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
	[archiver encodeObject:lists forKey:kShoppingCartFileDataKey];
	[archiver finishEncoding];
	[data writeToFile:[self dataFilePath] atomically:YES];
}

- (NSArray*)loadShoppingCart
{
	NSString *path = [self dataFilePath];
	if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
		NSData *data = [[NSData alloc] initWithContentsOfFile:path];
		NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
		NSArray *lists = [unarchiver decodeObjectForKey:kShoppingCartFileDataKey];
		[unarchiver finishDecoding];
        return lists;
    }
    return nil;
}

#pragma mark Favorite(收藏)CRUD操作
- (NSArray*)loadFavorite{
    return nil;
}

- (void)saveFavorite:(NSArray*)lists{

}


@end
