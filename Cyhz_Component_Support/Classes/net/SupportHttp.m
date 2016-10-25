//
//  Http.m
//  jinpaizhushou
//
//  Created by liuxiaolong on 15/9/6.
//  Copyright (c) 2015年 liuxiaolong. All rights reserved.
//

#import "SupportHttp.h"
#import "sys/utsname.h"
#import "SupportReachability.h"

#define ERRER_CODE_NOTNETWORK -250
#define ERRER_MESSAGE_NOTNETWORK @"没有网络"

@implementation SupportHttp{
    SupportReachability *conn;
    int timeOut;
    AFHTTPSessionManager *manager;
    bool isBack;
}

-(SupportHttp*)init{
    self = [super init];
    conn = [SupportReachability reachabilityForInternetConnection];
    isBack = false;
    manager = [AFHTTPSessionManager manager];
    [self setTimeout:15];
    return self;
}

-(void)setTimeout:(int)time{
    if (time) {
        manager.requestSerializer.timeoutInterval  = time;
    }
}

-(void)setHeadParam:(NSString*)value Field:(NSString*)field{
    [manager.requestSerializer setValue:value forHTTPHeaderField:field];
}

//原始的http get请求.
//liuxiaolong 201604161637.
-(void)getOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer{
    if ([conn currentReachabilityStatus] == NotReachable) {
        NSError *er = [NSError errorWithDomain:ERRER_MESSAGE_NOTNETWORK code:ERRER_CODE_NOTNETWORK userInfo:@{}];
        errer(er);
        return;
    }
    [manager GET:host parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (!isBack) {
            NSDictionary *data = responseObject;
            back(data);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (errer) {
            errer(error);
        }
    }];
}

//原始的http post请求.
//liuxiaolong 201604181618.
-(void)postOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer{
    if ([conn currentReachabilityStatus] == NotReachable) {
        NSError *er = [NSError errorWithDomain:@"没有网络" code:-250 userInfo:@{}];
        errer(er);
        return;
    }
    [manager POST:host parameters:dic progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (!isBack) {
            NSDictionary *data = responseObject;
            back(data);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (errer) {
            errer(error);
        }
    }];
}

-(void)cancelAll{
    [manager.operationQueue cancelAllOperations];
    isBack = true;
}

@end
