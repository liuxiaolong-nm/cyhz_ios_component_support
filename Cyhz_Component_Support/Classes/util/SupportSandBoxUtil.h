//
//  CySandBoxUtil.h
//  Pods
//
//  Created by liuxiaolong on 16/6/6.
//
//

#import <Foundation/Foundation.h>
/**
 *  获取沙盒各个文件路径。
 *
 *                    |----Documents
 *                    |               |----Caches
 *  sandbox--> home---|----Library----|
 *                    |               |----Preferences（存储userdefaults数据的地方）
 *                    |----tmp
 *
 *  liuxiaolong 2016-06-06 21:58
 */
@interface SupportSandBoxUtil : NSObject

/**
 *  获取沙盒根目录（home）。
 *
 *  @return 路径。
 *
 *  liuxiaolong 2016-06-06 21:57
 */
+(NSString*)dirHome;
/**
 *  获取沙盒Documents路径
 *
 *  @return 路径。
 *
 *  liuxiaolong 2016-06-06 21:57
 */
+(NSString *)dirDoc;
/**
 *  获取沙盒Library路径。
 *
 *  @return 路径。
 *
 *  liuxiaolong 2016-06-06 22:06
 */
+(NSString*)dirLib;

/**
 *  获取沙盒缓存路径（Caches）。
 *
 *  @return 路径。
 *
 *  liuxiaolong 2016-06-06 22:07
 */
+(NSString*)dirCache;
/**
 *  获取沙盒临时文件路径（tmp）。
 *
 *  @return 路径。
 *
 *  liuxiaolong 2016-06-06 22:08
 */
+(NSString*)dirTmp;
@end
