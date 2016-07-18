//
//  CyRAMSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import "CyRAMSave.h"

@implementation CyRAMSave{
    NSMutableDictionary *mDic;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        mDic = [NSMutableDictionary new];
    }
    return self;
}

-(void)saveReal:(NSData *)data Key:(NSString *)saveKey{
    [mDic setObject:data forKey:saveKey];
}

-(NSData *)queryReal:(NSString *)saveKey{
    return [mDic objectForKey:saveKey];
}

-(void)removeReal:(NSString *)saveKey{
    [mDic removeObjectForKey:saveKey];
}

-(void)remove:(NSString *)saveKey{
    [mDic removeObjectForKey:saveKey];
}

-(void)removeAll{
    [mDic removeAllObjects];
}

@end
