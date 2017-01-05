//
//  CyDiskSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/13.
//
//

#import "SupportDiskSave.h"
#import "SupportFileUtil.h"
#import "SupportDicUtil.h"
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

-(void)saveReal:(id)data Key:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    BOOL create = [mCyFileUtil createFile:saveKey Data:data];
    NSString *content = create?@"ok":@"no";
    NSLog(@"CyDiskSave...saveReal...%@",content);
}

-(id)queryReal:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    return [mCyFileUtil fecthContent:saveKey];
}

-(void)removeReal:(NSString *)saveKey{
    saveKey = [NSString stringWithFormat:@"%@.txt",saveKey];
    [mCyFileUtil removeFile:saveKey];
}

-(void)save:(id<SupportUnitData>)data Key:(NSString *)saveKey{
    if ([[data data] isKindOfClass:[NSData class]]) {
        [mCyFileUtil createFile:saveKey Data:[data data]];
        [mCyFileUtil createFile:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]] Data:[SupportDicUtil toData:[data extend]]];
    }
}

-(id<SupportUnitData>)query:(NSString *)saveKey{
    id data = [mCyFileUtil fecthContent:saveKey];
    NSDictionary *ext = [SupportDicUtil toDic:[mCyFileUtil fecthContent:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]]]];
    return [[SupportUnitDataDefaultImp alloc] initData:data Extend:ext];
}
@end
