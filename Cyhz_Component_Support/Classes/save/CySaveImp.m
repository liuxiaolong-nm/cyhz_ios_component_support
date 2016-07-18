//
//  CySaveImp.m
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import "CySaveImp.h"
#import "CyDateUtil.h"
#import "CyDicUtil.h"
#import "CyLog.h"

NSString * const EXPIRYDATE = @"expiryDate";
NSString * const EXTEND = @"extend";
NSString * const SAVEDATE = @"saveDate";

@implementation CyUnitDataDefaultImp{
    NSData *mData;
    NSDictionary *mExtend;
}

- (instancetype)initData:(NSData*)data Extend:(NSDictionary*)extend;
{
    self = [super init];
    if (self) {
        mData = data;
        mExtend = extend;
    }
    return self;
}

-(NSDictionary *)extend{
    return mExtend;
}

-(NSData *)data{
    return mData;
}

@end

@implementation CySaveImp

+(id<CyDataSave>)instance{
    static CySaveImp *cyRAMSave = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cyRAMSave = [[self alloc] init];
    });
    return cyRAMSave;
}

-(void)save:(id<CyUnitData>)data_ Key:(NSString *)saveKey{
    NSDictionary *ext = [data_ extend];
    if (!ext) {
        ext = @{};
    }
    if (![ext objectForKey:EXPIRYDATE]) {
        NSMutableDictionary *extDic = [[NSMutableDictionary alloc] initWithDictionary:ext];
        [extDic setObject:[NSString stringWithFormat:@"%d",24*60*60] forKey:EXPIRYDATE];
        ext = extDic;
    }
    if (![self query:saveKey]) {
        NSMutableDictionary *extDic = [[NSMutableDictionary alloc] initWithDictionary:ext];
        [extDic setObject:[NSString stringWithFormat:@"%ld",[CyDateUtil currentTimeForLong]] forKey:SAVEDATE];
        ext = extDic;
    }else{
        NSData *dicData = [self queryReal:[NSString stringWithFormat:@"%@-%@",saveKey,EXTEND]];
        ext = [CyDicUtil toDic:dicData];

    }
    [self saveReal:[data_ data] Key:saveKey];
    [self saveReal:[CyDicUtil toData:ext] Key:[NSString stringWithFormat:@"%@-%@",saveKey,EXTEND]];
}

-(id<CyUnitData>)query:(NSString *)saveKey{
    NSString *extendKey = [NSString stringWithFormat:@"%@-%@",saveKey,EXTEND];
    if ([self queryReal:extendKey]) {
        /**
         *  判断数据是否过期，过期则删除。
         *
         *  liuxiaolong 2016-06-06 12:16
         */
        NSData *extendData = [self queryReal:extendKey];
        NSDictionary *extend = [CyDicUtil toDic:extendData];
        long currentTime = [CyDateUtil currentTimeForLong];
        long expiry = [[extend objectForKey:EXPIRYDATE] integerValue];
        long saveTime = [[extend objectForKey:SAVEDATE] integerValue];
        if (currentTime - saveTime > expiry) {
            CyLog(@"数据过期 --> key : %@",saveKey);
            [self remove:saveKey];
            [self remove:extendKey];
        }else{
            NSData *saveData = [self queryReal:saveKey];
            CyUnitDataDefaultImp *dafaultData = [[CyUnitDataDefaultImp alloc] initData:saveData Extend:extend];
            return dafaultData;
        }
    }
    return nil;
}

-(void)remove:(NSString *)saveKey{
    NSString *extendKey = [NSString stringWithFormat:@"%@-%@",saveKey,EXTEND];
    [self removeReal:saveKey];
    [self removeReal:extendKey];
}

-(void)removeReal:(NSString *)saveKey{
    
}

-(void)saveReal:(NSData *)data Key:(NSString *)saveKey{
    
}

-(NSData*)queryReal:(NSString *)saveKey{
    return nil;
}

@end
