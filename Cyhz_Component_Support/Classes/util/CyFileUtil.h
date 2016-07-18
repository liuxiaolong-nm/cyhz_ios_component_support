//
//  CyFileUtil.h
//  Pods
//
//  Created by liuxiaolong on 16/6/7.
//
//

#import <Foundation/Foundation.h>

@interface CyFileUtil : NSObject
/**
 *  创建文件夹。
 *
 *  @return 是否创建成功。
 *
 *  liuxiaolong 2016-06-07 10:17
 */
-(BOOL)createDir:(NSString*)path;
/**
 *  创建文件（如果文件比较大会阻塞线程）。
 *
 *  @param path 文件路径。
 *  @param data 写入的数据。
 *
 *  @return 文件是否创建成功。
 *
 *  liuxiaolong 2016-06-07 10:22
 */
-(BOOL)createFile:(NSString*)path Data:(NSData*)data;
/**
 *  获取内容。
 *
 *  @param path 路径。
 *
 *  @return nadata。
 *
 *  liuxiaolong 2016-06-13 14:57
 */
-(NSData*)fecthContent:(NSString*)path;
/**
 *  删除文件。
 *
 *  @param path 路径。
 *
 *  @return NSError。
 *
 *  liuxiaolong 2016-06-13 21:44
 */
-(NSError*)removeFile:(NSString*)path;
@end
