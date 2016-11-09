//
//  SupportTableEngine.m
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/8/6.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import "SupportTableEngine.h"
#import "SupportUtils.h"

@implementation SupportTableEngine{
    id<SupportDBTable> mDataObserver;
}

-(id)supportSave{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:self];
    [realm commitWriteTransaction];
    if(mDataObserver && [mDataObserver respondsToSelector:@selector(supportSave)]){
        [mDataObserver supportSave];
    }
    return self;
}

-(id)supportRemove{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm deleteObject:self];
    [realm commitWriteTransaction];
    if(mDataObserver && [mDataObserver respondsToSelector:@selector(supportRemove)]){
        [mDataObserver supportRemove];
    }
    return self;
}

-(id)supportUpdate:(id)value Key:(NSString*)key;{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [self setValue:value forKey:key];
    [realm commitWriteTransaction];
    if(mDataObserver && [mDataObserver respondsToSelector:@selector(supportUpdate:Key:)]){
        [mDataObserver supportUpdate:value Key:key];
    }
    return self;
}

-(void)setDataObServer:(id<SupportDBTable>)observer{
    mDataObserver = observer;
}

+(id)supportRemoveAll{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm deleteAllObjects];
    [realm commitWriteTransaction];
    return self;
}

+(NSArray *)supportQueryAll{
  RLMResults *res =[self.class allObjects];
  NSMutableArray *datas = [NSMutableArray new];
    for (RLMObject *object in res) {
        [datas addObject:object];
    }
    return datas;
}

+(NSString *)primaryKey{
    return @"mId";
}

+(NSDictionary *)defaultPropertyValues{
    return @{@"mId":[SupportStringUtil GetUUIDString]};
}
@end
