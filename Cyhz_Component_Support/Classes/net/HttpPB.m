//
//  HttpPB.m
//  CarSourceComplice
//
//  Created by liuxiaolong on 16/5/5.
//  Copyright © 2016年 cheyuanhuizhong. All rights reserved.
//

#import "HttpPB.h"

@implementation HttpPB{
   UIView *container;
}

-(instancetype)init:(UIView *)progressContainer{
    self = [super init];
    container = progressContainer;
    return self;
}

-(void)getOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer{
    [MBProgressHUD showHUDAddedTo:container animated:YES];
    [super getOriginal:host Param:dic CallBack:^(id model) {
        back(model);
        [MBProgressHUD hideHUDForView:container animated:YES];
    } Errer:^(NSError *errerDic) {
        if (errer) {
            errer(errerDic);
        }
        [MBProgressHUD hideHUDForView:container animated:YES];
    }];
}

-(void)postOriginal:(NSString *)host Param:(NSDictionary *)dic CallBack:(Back)back Errer:(Errer)errer{
    [MBProgressHUD showHUDAddedTo:container animated:YES];
    [super postOriginal:host Param:dic CallBack:^(id model) {
        back(model);
        [MBProgressHUD hideHUDForView:container animated:YES];
    } Errer:^(NSError *errerDic) {
        if(errer){
            errer(errerDic);
        }
        [MBProgressHUD hideHUDForView:container animated:YES];
    }];
}

@end
