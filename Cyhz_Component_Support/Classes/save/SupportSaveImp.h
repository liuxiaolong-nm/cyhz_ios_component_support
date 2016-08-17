//
//  CySaveImp.h
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import <Foundation/Foundation.h>
#import "SupportSave.h"

extern NSString * const EXPIRYDATE;
extern NSString * const SAVEDATE;
extern NSString * const EXTEND;


@interface SupportUnitDataDefaultImp : NSObject<SupportUnitData>

- (instancetype)initData:(NSData*)data Extend:(NSDictionary*)extend;

@end

@interface SupportSaveImp : NSObject<SupportDataSave>

/**
 *  真正存储的动作(子类需要重写，如：内存存储和硬盘存储实现不一样)。
 *
 *  @param data    nadata
 *  @param saveKey savekey
 *
 *  liuxiaolong 2016-06-06 11:20
 */
-(void)saveReal:(NSData*)data Key:(NSString *)saveKey;

/**
 *  真正查询的动作(子类需要重写)。
 *
 *  @param saveKey 
 *
 *  liuxiaolong 2016-06-06 12:01
 */
-(NSData*)queryReal:(NSString *)saveKey;

/**
 *  真正删除的动作(子类需要重写)。
 *
 *  @param saveKey
 *
 *  liuxiaolong 2016-06-06 14:15
 */
-(void)removeReal:(NSString *)saveKey;

@end
