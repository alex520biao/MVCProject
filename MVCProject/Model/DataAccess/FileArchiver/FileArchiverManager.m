//
//  FileArchiverManager.m
//  BookStore
//
//  Created by Ye Zhu on 8/26/12.
//
//

#import "FileArchiverManager.h"

@implementation FileArchiverManager


+ (FileArchiverManager*) instance
{
    static FileArchiverManager* instance = nil;

    @synchronized(self){
		if (nil == instance) {
			instance = [[self alloc] init];
		}
	}
	
    return instance;
}

- (NSString *)documentsDirectory
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	return documentsDirectory;
}




@end
