//
//  SupportTableEngine.m
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/8/6.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import "SupportTableEngine.h"
#import "SupportUtils.h"

@implementation SupportTableEngine

//-(id)save{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    [realm addObject:self];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)saveAll:(NSArray*)items{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    [realm addObjects:items];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)saveAllAsync:(NSArray *)items{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm transactionWithBlock:^{
//        [realm addObjects:items];
//    }];
//    return self;
//}
//
//-(id)remove{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    [realm deleteObject:self];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)remove:(NSArray*)conditions{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    [realm deleteObjects:conditions];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)removeAll{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    [realm deleteAllObjects];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)update:(SupportDBUpdateAction)action{
//    RLMRealm *realm = [RLMRealm defaultRealm];
//    [realm beginWriteTransaction];
//    action();
//    [realm addOrUpdateObject:self];
//    [realm commitWriteTransaction];
//    return self;
//}
//
//-(id)updateAll:(NSArray *)actions{
////    RLMRealm *realm = [RLMRealm defaultRealm];
////    [realm beginWriteTransaction];
////    [realm addOrUpdateObjectsFromArray:conditions];
////    [realm commitWriteTransaction];
//    return self;
//}
//
//-(NSArray *)querys:(SupportDBCondition*)conditions{
//    RLMResults *results = [self parseConditon:conditions Ob:self.class];
//    NSMutableArray *datas = [NSMutableArray new];
//    if (results) {
//        for (RLMObject *object in results) {
//            [datas addObject:object];
//        }
//    }
//    return datas;
//}
//
//-(NSArray *)queryAll{
//    RLMResults *res =[self.class allObjects];
//    NSMutableArray *datas = [NSMutableArray new];
//    for (RLMObject *object in res) {
//        [datas addObject:object];
//    }
//    return datas;
//}
//
//-(RLMResults*)parseConditon:(SupportDBCondition*)conditions Ob:(id)target{
//    if (!conditions.fieldIf) {
//        return NULL;
//    }
//    NSString *character;
//    if (conditions.operatorIf == ENUM_Equal) {
//        character = @"=";
//    }else if (conditions.operatorIf == ENUM_Greater){
//        character = @">";
//    }else if (conditions.operatorIf == ENUM_Less){
//        character = @"<";
//    }else{
//        return NULL;
//    }
//    if (!conditions.valueIf) {
//        return NULL;
//    }
//    if ([conditions.valueIf isKindOfClass:[NSString class]]) {
//        conditions.valueIf = [NSString stringWithFormat:@"'%@'",conditions.valueIf];
//    }
//    NSString *condi = [NSString stringWithFormat:@"%@ %@ %@",conditions.fieldIf,character,conditions.valueIf];
//    if (conditions.sort != 0 && conditions.fieldSort) {
//        if (conditions.sort == ENUM_ASC) {
//            return [[target objectsWhere:condi] sortedResultsUsingProperty:conditions.fieldSort ascending:YES];
//        }else if (conditions.sort == ENUM_DESC){
//            return [[target objectsWhere:condi] sortedResultsUsingProperty:conditions.fieldSort ascending:NO];
//        }
//    }
//    return [target objectsWhere:condi];
//}
//
//+(NSString *)primaryKey{
//    return @"mId";
//}
//
//+(NSDictionary *)defaultPropertyValues{
//    return @{@"mId":[SupportStringUtil GetUUIDString]};
//}

@end
