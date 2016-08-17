//
//  Support_MBProgressHUD.m
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/7/18.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import "SupportMBProgressHUD.h"

@implementation SupportMBProgressHUD

-(void)hide:(BOOL)animated{
    [super hide:animated];
    [self removeFromSuperview];
}

@end
