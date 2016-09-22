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

@interface SupportTableEngine : NSObject<SupportDBTable>

@property NSString *mId;

@end

