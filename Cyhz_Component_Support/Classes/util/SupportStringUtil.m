//
//  ChineseString.m
//  ShareSDK
//
//  Created by liuxiaolong on 16/1/15.
//  Copyright © 2016年 yjw. All rights reserved.
//

#import "SupportStringUtil.h"
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
@end
