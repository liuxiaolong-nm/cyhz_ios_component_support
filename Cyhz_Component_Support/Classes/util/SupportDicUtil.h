//
//  CyDicUtil.h
//  Pods
//
//  Created by liuxiaolong on 16/6/6.
//
//

#import <Foundation/Foundation.h>

@interface SupportDicUtil : NSObject

/**
 *  NSDictionary --> NSData。
 *
 *  @param dic
 *
 *  @return nsdata
 *
 *  liuxiaolong 2016-06-06 11:50
 */
+(NSData*)toData:(NSDictionary*)dic;

/**
 *  nsdata --> NSDictionary。
 *
 *  @param data
 *
 *  @return NSDictionary
 *
 *  liuxiaolong 2016-06-06 11:50
 */
+(NSDictionary*)toDic:(NSData*)data;

@end
