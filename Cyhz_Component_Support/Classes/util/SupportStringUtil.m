//
//  ChineseString.m
//  ShareSDK
//
//  Created by liuxiaolong on 16/1/15.
//  Copyright © 2016年 yjw. All rights reserved.
//

#import "SupportStringUtil.h"
#import <CommonCrypto/CommonDigest.h>
#import "pinyin.h"

@implementation SupportStringUtil

+(NSString *)chineseStringConversionPY:(NSString *)content{
    NSString *merge = [NSString string];
    for (int i = 0; i < content.length; i++) {
        short c = [content characterAtIndex:i];
        char t = pinyinFirstLetter(c);
        merge = [merge stringByAppendingString:[NSString stringWithFormat:@"%c",t]];
    }
    return merge;
}

+(NSString*)GetUUIDString{
    CFUUIDRef uuidObj = CFUUIDCreate(nil);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuidObj);
    CFRelease(uuidObj);
    return uuidString;
    
}

+(NSString *)md5_32bit:(NSString *)input {
        //传入参数,转化成char
         const char * str = [input UTF8String];
        //开辟一个16字节（128位：md5加密出来就是128位/bit）的空间（一个字节=8字位=8个二进制数）
         unsigned char md[CC_MD5_DIGEST_LENGTH];
         CC_MD5(str, (int)strlen(str), md);
         //创建一个可变字符串收集结果
         NSMutableString * ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
         for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
                 [ret appendFormat:@"%02X",md[i]];
             }
         //返回一个长度为32的字符串
         return ret;
     }

+(BOOL)isPureInt:(NSString*)string{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return[scan scanInt:&val] && [scan isAtEnd];
}
@end
