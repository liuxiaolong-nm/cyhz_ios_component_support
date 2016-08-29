//
//  Http.h
//  jinpaizhushou
//
//  Created by liuxiaolong on 15/9/6.
//  Copyright (c) 2015年 liuxiaolong. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

typedef void(^Back)(id model);
typedef void(^Errer)(NSError *error);


@interface SupportHttp : NSObject

/**
 *  设置超时时间。
 *
 *  @param timeout 超时时间（单位是秒）。
 *
 *  liuxiaolong 2016-07-16 14:31
 */
-(void)setTimeout:(int)timeout;

/**
 *  添加http请求的头信息。
 *
 *  @param value
 *  @param field
 *
 *  liuxiaolong 2016-07-16 14:30
 */
-(void)setHeadParam:(NSString*)value Field:(NSString*)field;

/**
 *  get请求。
 *
 *  @param host  url地址。
 *  @param dic   参数。
 *  @param back  请求成功的回调。
 *  @param errer 请求失败的回调。
 *
 *  liuxiaolong 2016-07-16 14:32
 */
-(void)getOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer;

/**
 *  post请求
 *
 *  @param host  url地址。
 *  @param dic   参数
 *  @param back  请求成功的回调。
 *  @param errer 请求失败的回调。
 *
 *  liuxiaolong 2016-07-16 14:34
 */
-(void)postOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer;

/**
 *  取消所有请求。
 *
 *  liuxiaolong 2016-07-16 14:35
 */
-(void)cancelAll;

@end
