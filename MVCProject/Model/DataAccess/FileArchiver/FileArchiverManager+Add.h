//
//  FileArchiverManager+Add.h
//  MVCProject
//
//  Created by baidu on 13-10-28.
//  Copyright (c) 2013年 alex. All rights reserved.
//

#import "FileArchiverManager.h"

//save(持久化)/load(重新载入)
@interface FileArchiverManager (Add)

#pragma mark ShoppingCart(购物车)CRUD操作
- (NSArray*)loadShoppingCart;
- (void)saveShoppingCart:(NSArray*)lists;

#pragma mark Favorite(收藏)CRUD操作
- (NSArray*)loadFavorite;
- (void)saveFavorite:(NSArray*)lists;

@end
