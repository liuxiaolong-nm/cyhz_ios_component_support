//
//  SupportSaveFactory.h
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 17/1/5.
//  Copyright © 2017年 liuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SupportSave.h"

@interface SupportSaveFactory : NSObject

+(id<SupportDataSave>)fetchRAMSave;

@end
