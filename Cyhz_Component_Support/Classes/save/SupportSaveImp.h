//
//  CySaveImp.h
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import <Foundation/Foundation.h>
#import "SupportSave.h"

@interface SupportUnitDataDefaultImp : NSObject<SupportUnitData>

- (instancetype)initData:(id)data;

- (instancetype)initData:(id)data Extend:(NSDictionary*)extend;

@end

@interface SupportSaveImp : NSObject<SupportDataSave>

-(NSString*)extKey;

@end
