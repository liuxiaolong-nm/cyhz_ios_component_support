//
//  ChineseString.h
//  ShareSDK
//
//  Created by liuxiaolong on 16/1/15.
//  Copyright © 2016年 yjw. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SupportStringUtil : NSObject


//中文转化为拼音字母集合。
//liuxiaolong 20160115
/**
 *  中文转化为拼音首字母字母集合
 *
 *  @param content 中文。
 *
 *  @return 首字母拼音字母集合。
 *
 *  liuxiaolong 2016-06-03 12:01
 */
+(NSString*)chineseStringConversionPY:(NSString*)content;

/**
 *  创建uuid。
 *
 *  @return uuid
 *
 *  liuxiaolong 2016-08-05 16:58
 */
+(NSString*)GetUUIDString;
@end
