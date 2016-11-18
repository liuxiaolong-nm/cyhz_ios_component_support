//
//  AppServiceTimer.h
//  ArrayTest
//
//  Created by liuxiaolong on 16/11/12.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^TimerCallBack)();

@interface SupportGCDTimer : NSObject

@property (nonatomic, strong)TimerCallBack callback;

- (instancetype)initDelay:(int)second;

//开始定时器。
//liuxiaolong 201611121544
-(void)start;

//暂停定时器。
//liuxiaolong 201611121544
-(void)pause;

//停止定时器。
//liuxiaolong 201611121545
-(void)stop;

@end
