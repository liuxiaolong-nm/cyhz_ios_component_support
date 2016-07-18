//
//  CySave.h
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//
#import <Foundation/Foundation.h>
/**
 *  所有要储存的数据必须实现此协议。
 *
 *  liuxiaolong 2016-06-03 14:51
 */
@protocol CyUnitData <NSObject>

/**
 *  数据的扩展属性。
 *
 *  @return 扩展属性。
 *
 *  liuxiaolong 2016-06-06 11:02
 */
-(NSDictionary*)extend;
/**
 *  储存的具体数据。
 *
 *  @return 数据。
 *
 *  liuxiaolong 2016-06-03 14:50
 */
-(NSData*)data;

@end

@protocol CyDataSave <NSObject>

@optional

+(id<CyDataSave>)instance;
/**
 *  储存数据。
 *
 *  @param data    CyUnitData。
 *  @param saveKey 数据存储key。
 *
 *  liuxiaolong 2016-06-03 14:59
 */
-(void)save:(id<CyUnitData>)data Key:(NSString*)saveKey;
/**
 *  删除数据。
 *
 *  @param saveKey 数据存储key。
 *
 *  liuxiaolong 2016-06-03 15:00
 */
-(void)remove:(NSString*)saveKey;
/**
 *  删除所有的数据(线程堵塞)。
 *
 *  liuxiaolong 2016-06-03 15:11
 */
-(void)removeAll;
/**
 *  查询数据。
 *
 *  @param saveKey 数据存储key。
 *
 *  @return CyUnitData。
 *
 *  liuxiaolong 2016-06-03 15:00
 */
-(id<CyUnitData>)query:(NSString*)saveKey;

@end