//
//  ColorUtil.h
//  CarSourceComplice
//
//  Created by liuxiaolong on 16/5/17.
//  Copyright © 2016年 cheyuanhuizhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SupportColorUtil : NSObject

/**
 *  把color变成宽高都是1个点的uiimage。
 *
 *  @param color color。
 *
 *  @return uiimage。
 *
 *  liuxiaolong 2016-06-02 18:13
 */
+ (UIImage*)createImageWithColor: (UIColor*) color;

/**
 *  16进制颜色(html颜色值)字符串转为UIColor
 *
 *  @param stringToConvert 颜色字符串如#ffffff or 0xffffff。
 *
 *  @return uicolor
 *
 *  liuxiaolong 2016-06-03 11:38
 */
+ (UIColor *)hexStringToColor: (NSString *) stringToConvert;

@end
