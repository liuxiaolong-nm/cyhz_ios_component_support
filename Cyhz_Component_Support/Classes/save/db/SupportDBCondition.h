//
//  SupportDBCondition.h
//  Cyhz_Component_Support_Edit
//
//  Created by liuxiaolong on 16/8/9.
//  Copyright © 2016年 liuxiaolong. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  运算符枚举（=，>，<）。
 *
 *  liuxiaolong 2016-08-04 11:58
 */
typedef enum{
    ENUM_Equal = 0,//等于。
    ENUM_Greater = 1,//大于。
    ENUM_Less = 2//小于。
}ENUM_Operators;

/**
 *  排序枚举。
 *
 *  liuxiaolong 2016-08-04 11:59
 */
typedef enum{
    ENUM_ASC = 4,//升序。
    ENUM_DESC = 5//降序。
}ENUM_Sort;

@interface SupportDBCondition : NSObject

@property (atomic,strong)NSString *fieldIf;
@property (atomic)ENUM_Operators operatorIf;
@property (atomic,strong)id valueIf;
@property (atomic,strong)NSString *fieldSort;
@property (atomic)ENUM_Sort sort;

@end
