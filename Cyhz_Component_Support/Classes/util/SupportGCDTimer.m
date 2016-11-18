//
//  AppServiceTimer.m
//  ArrayTest
//
//  Created by liuxiaolong on 16/11/12.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import "SupportGCDTimer.h"

@interface SupportGCDTimer()

@property (nonatomic, strong)dispatch_source_t time;

@end

@implementation SupportGCDTimer{
    int delay;
    long tempTime;
}

- (instancetype)initDelay:(int)second
{
    self = [super init];
    if (self) {
        delay = second;
        [self initTimer];
    }
    return self;
}

-(void)initTimer{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    //创建一个定时器
    self.time = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    //设置开始时间
    dispatch_time_t start = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(NSEC_PER_SEC));
    //设置时间间隔
    uint64_t interval = (uint64_t)(delay *NSEC_PER_SEC);
    //设置定时器
    dispatch_source_set_timer(self.time, start, interval, 0);
    //设置回调
    dispatch_source_set_event_handler(self.time, ^{
        if (self.callback) {
            NSTimeInterval time = [[NSDate date] timeIntervalSince1970];
            int result = time - tempTime;
            if (result >= delay) {
                self.callback();
            }
            tempTime = time;
        }
    });
}

-(void)start{
    if (self.time) {
        dispatch_resume(self.time);
    }
}

-(void)pause{
    if(self.time){
        dispatch_suspend(self.time);
    }
}

-(void)stop{
    if (self.time) {
        dispatch_source_cancel(self.time);
        self.time = nil;
    }
}

@end
