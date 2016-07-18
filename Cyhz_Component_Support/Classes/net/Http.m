//
//  Http.m
//  jinpaizhushou
//
//  Created by liuxiaolong on 15/9/6.
//  Copyright (c) 2015年 liuxiaolong. All rights reserved.
//

#import "Http.h"
#import "sys/utsname.h"
#import "Reachability.h"

@implementation Http{
    Reachability *conn;
    int timeOut;
    AFHTTPRequestOperationManager *manager;
    bool isBack;
}

-(Http*)init{
    self = [super init];
    conn = [Reachability reachabilityForInternetConnection];
    isBack = false;
    manager = [[AFHTTPRequestOperationManager alloc] init];
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
        [OMGToast showWithText:@"请连接网络！"];
        return;
    }
    [manager GET:host parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (!isBack) {
            NSDictionary *data = responseObject;
            back(data);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"连接服务器失败：%@",error);
        if (errer) {
            errer(error);
        }
    }];
}

//原始的http post请求.
//liuxiaolong 201604181618.
-(void)postOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer{
    if ([conn currentReachabilityStatus] == NotReachable) {
        [OMGToast showWithText:@"请连接网络！"];
        return;
    }
    [manager POST:host parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (!isBack) {
            NSDictionary *data = responseObject;
            back(data);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"连接服务器失败：%@",error);
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
