//
//  CyLog.h
//  Pods
//
//  Created by liuxiaolong on 16/6/6.
//
//

#ifdef DEBUG

#define CyLog(FORMAT, ...) fprintf(stderr,"[%s]:[line %d行] %s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

#else

#define CyLog(FORMAT, ...);

#endif




