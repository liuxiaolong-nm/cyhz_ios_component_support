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

 -(id)supportSave;

 -(id)supportRemove;

 -(id)supportUpdate:(id)value Key:(NSString*)key;

 +(id)supportRemoveAll;

 +(NSArray*)supportQueryAll;

@end



#endif /* SupportDB_h */
