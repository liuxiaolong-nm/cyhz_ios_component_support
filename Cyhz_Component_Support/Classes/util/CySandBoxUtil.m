//
//  CySandBoxUtil.m
//  Pods
//
//  Created by liuxiaolong on 16/6/6.
//
//

#import "CySandBoxUtil.h"

@implementation CySandBoxUtil

+(NSString*)dirHome{
    NSString *dirHome=NSHomeDirectory();
    return dirHome;
}

+(NSString *)dirDoc{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}

+(NSString*)dirLib{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *libraryDirectory = [paths objectAtIndex:0];
    return libraryDirectory;
}

+(NSString*)dirCache{
    NSArray *cacPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cachePath = [cacPath objectAtIndex:0];
    return cachePath;
}

+(NSString*)dirTmp{
    NSString *tmpDirectory = NSTemporaryDirectory();
    return tmpDirectory;
}
@end
