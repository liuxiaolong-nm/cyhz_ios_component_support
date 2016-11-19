//
//  SupportTableEngine.h
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/8/6.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SupportDB.h"
#import "SupportDBCondition.h"
#import <Realm/Realm.h>

typedef void(^SupportDBTableObServer)(NSArray<id> *datas);

@interface SupportTableEngine : RLMObject<SupportDBTable,SupportDBTableExt>

@property NSString *mId;

//设置数据变化监听者。
//liuxiaolong 201611091634
-(void)setDataObServer:(SupportDBTableObServer)observer;

//取消数据变化监听者。
//liuxiaolong 201611101813
-(void)cancelDataObServer;

@end

