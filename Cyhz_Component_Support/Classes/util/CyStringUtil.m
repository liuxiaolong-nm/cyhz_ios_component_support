//
//  ChineseString.m
//  ShareSDK
//
//  Created by liuxiaolong on 16/1/15.
//  Copyright © 2016年 yjw. All rights reserved.
//

#import "CyStringUtil.h"
#import "pinyin.h"

@implementation CyStringUtil

+(NSString *)chineseStringConversionPY:(NSString *)content{
    NSString *merge = [NSString string];
    for (int i = 0; i < content.length; i++) {
        short c = [content characterAtIndex:i];
        char t = pinyinFirstLetter(c);
        merge = [merge stringByAppendingString:[NSString stringWithFormat:@"%c",t]];
    }
    return merge;
}

@end
