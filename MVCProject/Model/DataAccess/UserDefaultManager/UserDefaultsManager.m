//
//  UserDefaultsService.m
//  BookStore
//
//  Created by Ye Zhu on 8/24/12.
//
//

#import "UserDefaultsManager.h"

#define kUserDefaults_Userid                    @"kUserDefaults_Userid"
#define kUserDefaults_Username                  @"kUserDefaults_Username"

@implementation UserDefaultsManager


+ (UserDefaultsManager*) instance
{
    static UserDefaultsManager* instance = nil;

    @synchronized(self){
		if (nil == instance) {
			instance = [[self alloc] init];
		}
	}
	
    return instance;
}

- (id)init
{
    if (self = [super init])
    {
         [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(willTerminate:) name:UIApplicationWillTerminateNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    }
    
    return self;
}

-(void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillTerminateNotification object:nil];

    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:nil];
}

-(void)willTerminate:(id)sender
{
    [self syncToDisk];
}

-(void)didEnterBackground:(id)sender
{
    [self syncToDisk];
}

-(void)syncToDisk
{
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (NSInteger)getUserId
{
    return [[NSUserDefaults standardUserDefaults] integerForKey:kUserDefaults_Userid];
}

- (void)setUserId:(NSInteger)userId
{
    [[NSUserDefaults standardUserDefaults] setInteger:userId forKey:kUserDefaults_Userid];
    [self syncToDisk];
}

- (NSString*)getUsername
{
    return [[NSUserDefaults standardUserDefaults] stringForKey:kUserDefaults_Username];
}

- (void)setUsername:(NSString*)username
{
    [[NSUserDefaults standardUserDefaults] setObject:username forKey:kUserDefaults_Username];
}


#define kCurrentTheme   @"kCurrentTheme"
#pragma mark currentTheme
-(Theme*)loadCurrentTheme{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSData *themeData = [userDefault objectForKey:kCurrentTheme];
    Theme *theme = [NSKeyedUnarchiver unarchiveObjectWithData:themeData];
    return theme;
}

-(void)saveCurrentTheme:(Theme*)currentTheme{
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    NSData *themeData = [NSKeyedArchiver archivedDataWithRootObject:currentTheme];
    [userDefault setObject:themeData forKey:kCurrentTheme];
    [userDefault synchronize];    
}
@end
