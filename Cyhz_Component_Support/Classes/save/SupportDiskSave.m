//
//  CyDiskSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/13.
//
//

#import "SupportDiskSave.h"
#import "SupportFileUtil.h"
#import "SupportLog.h"

@implementation SupportDiskSave{
    SupportFileUtil *mCyFileUtil;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        mCyFileUtil = [[SupportFileUtil alloc] init];
    }
    return self;
}

-(void)saveReal:(NSData *)data Key:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    BOOL create = [mCyFileUtil createFile:saveKey Data:data];
    NSString *content = create?@"ok":@"no";
    NSLog(@"CyDiskSave...saveReal...%@",content);
}

-(NSData *)queryReal:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    return [mCyFileUtil fecthContent:saveKey];
}

-(void)removeReal:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    [mCyFileUtil removeFile:saveKey];
}

@end
