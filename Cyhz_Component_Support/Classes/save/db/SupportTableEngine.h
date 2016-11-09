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

@interface SupportTableEngine : RLMObject<SupportDBTable>

@property NSString *mId;

//设置数据变化监听者。
//liuxiaolong 201611091634
-(void)setDataObServer:(id<SupportDBTable>)observer;

@end

