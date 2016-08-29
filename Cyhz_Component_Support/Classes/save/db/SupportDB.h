//
//  SupportDB.h
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/8/2.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#ifndef SupportDB_h
#define SupportDB_h

#import "SupportDBCondition.h"
/**
 *  数据表的抽象，实现者可以直接对表操作。
 *
 *  liuxiaolong 2016-08-04 13:38
 */
typedef void(^SupportDBUpdateAction)();

@protocol SupportDBTable <NSObject>

@optional
 -(id)save;

 -(id)saveAll:(NSArray*)items;

 -(id)remove;

 -(id)remove:(NSArray*)conditions;

 -(id)removeAll;

 -(id)update:(SupportDBUpdateAction)action;

 -(id)updateAll:(NSArray*)actions;

 -(NSArray*)querys:(SupportDBCondition*)conditions;

 -(NSArray*)queryAll;

@end



#endif /* SupportDB_h */
