//
//  CyFileUtil.m
//  Pods
//
//  Created by liuxiaolong on 16/6/7.
//
//

#import "SupportFileUtil.h"

@implementation SupportFileUtil{
    NSFileManager *mFileManager;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        mFileManager = [NSFileManager defaultManager];
    }
    return self;
}
-(BOOL)createDir:(NSString *)path{
    NSString *documentsPath = path;
    // 创建目录
    BOOL res=[mFileManager createDirectoryAtPath:documentsPath withIntermediateDirectories:YES attributes:nil error:nil];
    return res;
}

-(BOOL)createFile:(NSString *)path Data:(NSData *)data{
    NSString *documentsPath = path;
    BOOL res=[mFileManager createFileAtPath:documentsPath contents:data attributes:nil];
    return res;
}

-(NSData *)fecthContent:(NSString *)path{
    return [mFileManager contentsAtPath:path];
}

-(NSError*)removeFile:(NSString*)path{
     NSError *error;
    [mFileManager removeItemAtPath:path error:&error];
    return error;
}

@end
