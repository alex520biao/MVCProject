//
//  FileArchiverManager.h
//  BookStore
//
//  Created by Ye Zhu on 8/26/12.
//
//

#import <Foundation/Foundation.h>

//数据访问类(文件归档)
@interface FileArchiverManager : NSObject
+ (FileArchiverManager*)instance;
- (NSString *)documentsDirectory;
@end
