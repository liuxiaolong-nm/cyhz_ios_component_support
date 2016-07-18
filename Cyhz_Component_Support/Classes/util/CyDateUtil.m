//
//  DateUtil.m
//  CarSourceComplice
//
//  Created by liuxiaolong on 16/5/16.
//  Copyright © 2016年 cheyuanhuizhong. All rights reserved.
//

#import "CyDateUtil.h"

@implementation CyDateUtil

+(NSDateFormatter *)dateFormatter{
    NSDateFormatter *formatter = [NSDateFormatter new];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return formatter;
}

+(long)timeForLong:(NSDate *)date{
    return [date timeIntervalSince1970];
}

+(NSString*)timeForString:(NSDate*)date;{
    return [self timeForString:date ForMatter:[self dateFormatter]];
}

+(NSString*)timeForString:(NSDate*)date ForMatter:(NSDateFormatter*)formatter{
    return[formatter stringFromDate:date];
}

+(NSDate*)stringToTime:(NSString*)date{
    return [self stringToTime:date ForMatter:[self dateFormatter]];
}

+(long)stringToTimeLong:(NSString*)date;{
    NSDate *dateS = [self stringToTime:date];
    return [self timeForLong:dateS];
}

+(NSDate*)stringToTime:(NSString*)date ForMatter:(NSDateFormatter*)formatter{
    return [formatter dateFromString:date];
}

+(long)currentTimeForLong{
    NSDate *datenow = [NSDate date];
    return [self timeForLong:datenow];
}

+(NSString *)currentTimeForStringFormatter:(NSDateFormatter *)formatter{
    NSDate *datenow = [NSDate date];
    return [self timeForString:datenow ForMatter:formatter];
}

+(NSString *)currentTimeForString{
    return [self currentTimeForStringFormatter:[self dateFormatter]];
}

@end
