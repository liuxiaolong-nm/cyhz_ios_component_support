//
//  DateUtil.h
//  CarSourceComplice
//
//  Created by liuxiaolong on 16/5/16.
//  Copyright © 2016年 cheyuanhuizhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CyDateUtil : NSObject

#pragma mark base mothod

/**
 *  获取默认的时间格式“yyyy-MM-dd HH:mm:ss”。
 *
 *  @return 默认的时间格式。
 *
 *  liuxiaolong 2016-06-02 17:53
 */
+(NSDateFormatter*)dateFormatter;
/**
 *  NSDate --> long（秒）。
 *
 *  @param date date。
 *
 *  @return 时间戳。
 *
 *  liuxiaolong 2016-06-02 17:54
 */
+(long)timeForLong:(NSDate*)date;
/**
 *  获取默认时间格式的时间。
 *
 *  @param date date
 *
 *  @return 默认时间格式。
 *
 *  liuxiaolong 2016-06-02 18:03
 */
+(NSString*)timeForString:(NSDate*)date;
/**
 *  获取指定的时间格式通过date。
 *
 *  @param date      date。
 *  @param formatter 特定的时间格式。
 *
 *  @return 特定显示的时间
 *
 *  liuxiaolong 2016-06-02 18:05
 */
+(NSString*)timeForString:(NSDate*)date ForMatter:(NSDateFormatter*)formatter;
/**
 *  把默认时间格式的时间变成date。
 *
 *  @param date dateFormatter。
 *
 *  @return date。
 *
 *  liuxiaolong 2016-06-02 18:07
 */
+(NSDate*)stringToTime:(NSString*)date;
/**
 *  把默认时间格式的时间变成date的时间戳。
 *
 *  @param date date。
 *
 *  @return 时间戳。
 *
 *  liuxiaolong 2016-06-02 18:08
 */
+(long)stringToTimeLong:(NSString*)date;
/**
 *  把特定时间格式的时间变成date。
 *
 *  @param date      date show。
 *  @param formatter dateFormatter。
 *
 *  @return date。
 *
 *  liuxiaolong 2016-06-02 18:09
 */
+(NSDate*)stringToTime:(NSString*)date ForMatter:(NSDateFormatter*)formatter;

#pragma mark current
/**
 *  获取当前时间戳。
 *
 *  @return 时间戳。
 *
 *  liuxiaolong 2016-06-02 18:11
 */
+(long)currentTimeForLong;
/**
 *  获取当前默认时间格式的时间。
 *
 *  @return date show。
 *
 *  liuxiaolong 2016-06-02 18:11
 */
+(NSString*)currentTimeForString;
/**
 *  获取当前特定时间格式的时间。
 *
 *  @param formatter dateFormatter
 *
 *  @return date show。
 *
 *  liuxiaolong 2016-06-02 18:12
 */
+(NSString*)currentTimeForStringFormatter:(NSDateFormatter*)formatter;

@end
