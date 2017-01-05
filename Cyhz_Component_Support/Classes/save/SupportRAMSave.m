//
//  CyRAMSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import "SupportRAMSave.h"

@implementation SupportRAMSave{
    NSMutableDictionary *mDic;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        mDic = [NSMutableDictionary new];
    }
    return self;
}

-(void)save:(id<SupportUnitData>)data Key:(NSString *)saveKey{
    [super save:data Key:saveKey];
    [mDic setObject:[data data] forKey:saveKey];
    [mDic setObject:[data extend] forKey:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]]];
}

-(id<SupportUnitData>)query:(NSString *)saveKey{
    id data = [mDic objectForKey:saveKey];
    NSDictionary *ext = [mDic objectForKey:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]]];
    return [[SupportUnitDataDefaultImp alloc] initData:data Extend:ext];
}

-(void)remove:(NSString *)saveKey{
    [mDic removeObjectForKey:saveKey];
}

-(void)removeAll{
    [mDic removeAllObjects];
}

@end
