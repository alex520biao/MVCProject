//
//  UserDefaultsService.h
//  BookStore
//
//  Created by Ye Zhu on 8/24/12.
//
//

#import <Foundation/Foundation.h>
#import "Theme.h"

//UserDefaultsManager用于存放程序设置相关信息，存储配置信息而不要存储业务信息。
@interface UserDefaultsManager : NSObject

+ (UserDefaultsManager*)instance;

#pragma mark UserInfo(用户信息)CRUD操作
-(void)syncToDisk;
- (NSInteger)getUserId;
- (void)setUserId:(NSInteger)userId;
- (NSString*)getUsername;
- (void)setUsername:(NSString*)username;

//ThemeList(皮肤主题)使用plist文件保存，使用Plist操作
#pragma mark currentTheme(当前皮肤主题)CRUD操作
-(Theme*)loadCurrentTheme;
-(void)saveCurrentTheme:(Theme*)currentTheme;



@end
