//
//  SupportSaveFactory.m
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 17/1/5.
//  Copyright © 2017年 liuxiaolong. All rights reserved.
//

#import "SupportSaveFactory.h"
#import "SupportRAMSave.h"

@implementation SupportSaveFactory

+(id<SupportDataSave>)fetchRAMSave{
    return [SupportRAMSave instance];
}

@end
