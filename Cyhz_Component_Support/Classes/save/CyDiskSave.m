//
//  CyDiskSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/13.
//
//

#import "CyDiskSave.h"
#import "CyFileUtil.h"
#import "CyLog.h"

@implementation CyDiskSave{
    CyFileUtil *mCyFileUtil;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        mCyFileUtil = [[CyFileUtil alloc] init];
    }
    return self;
}

-(void)saveReal:(NSData *)data Key:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    BOOL create = [mCyFileUtil createFile:saveKey Data:data];
    NSString *content = create?@"ok":@"no";
    CyLog(@"asklvnasvasv");
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
