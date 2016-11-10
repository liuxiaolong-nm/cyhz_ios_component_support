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
    SupportDBTableObServer mDataObserver;
    RLMNotificationToken *token;
}

-(id)supportSave{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm addObject:self];
    [realm commitWriteTransaction];
    return self;
}

-(id)supportRemove{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [realm deleteObject:self];
    [realm commitWriteTransaction];
    return self;
}

-(id)supportUpdate:(id)value Key:(NSString*)key;{
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [self setValue:value forKey:key];
    [realm commitWriteTransaction];
    return self;
}

-(void)setDataObServer:(SupportDBTableObServer)observer{
    mDataObserver = observer;
    token = [[self.class objectsWhere:@"mId != '1'"] addNotificationBlock:^(RLMResults * _Nullable results, RLMCollectionChange * _Nullable change, NSError * _Nullable error) {
        RLMResults *res =[self.class allObjects];
        NSMutableArray *datas = [NSMutableArray new];
        for (RLMObject *object in res) {
            [datas addObject:object];
        }
        if (observer) {
            observer(datas);
        }
    }];
}

-(void)cancelDataObServer{
    if (token) {
        [token stop];
    }
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
