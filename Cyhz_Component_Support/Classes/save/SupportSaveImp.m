//
//  CySaveImp.m
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import "SupportSaveImp.h"
#import "SupportDateUtil.h"
#import "SupportDicUtil.h"
#import "SupportLog.h"


@implementation SupportUnitDataDefaultImp{
    id mData;
    NSDictionary *mExtend;
}

-(instancetype)initData:(id)data{
    self = [super init];
    if (self) {
        mData = data;
        mExtend = @{};
    }
    return self;
}

- (instancetype)initData:(id)data Extend:(NSDictionary*)extend;
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

-(id)data{
    return mData;
}

@end

@implementation SupportSaveImp

+(id<SupportDataSave>)instance{
    static SupportSaveImp *cyRAMSave = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cyRAMSave = [[self alloc] init];
    });
    return cyRAMSave;
}

-(void)add:(id)data Key:(NSString *)saveKey{
    [self save:[[SupportUnitDataDefaultImp alloc] initData:data] Key:saveKey];
}

-(id)get:(NSString *)saveKey{
    return [[self query:saveKey] data];
}

-(void)save:(id<SupportUnitData>)data Key:(NSString *)saveKey{
    
}

-(id<SupportUnitData>)query:(NSString *)saveKey{
    return nil;
}

-(NSString*)extKey{
    return @"extend";
}
//-(void)save:(id<SupportUnitData>)data_ Key:(NSString *)saveKey{
//    NSDictionary *ext = [data_ extend];
//    if (!ext) {
//        ext = @{};
//    }
//    if (![ext objectForKey:EXPIRYDATE]) {
//        NSMutableDictionary *extDic = [[NSMutableDictionary alloc] initWithDictionary:ext];
//        [extDic setObject:[NSString stringWithFormat:@"%d",24*60*60] forKey:EXPIRYDATE];
//        ext = extDic;
//    }
//    if (![self query:saveKey]) {
//        NSMutableDictionary *extDic = [[NSMutableDictionary alloc] initWithDictionary:ext];
//        [extDic setObject:[NSString stringWithFormat:@"%ld",[SupportDateUtil currentTimeForLong]] forKey:SAVEDATE];
//        ext = extDic;
//    }else{
//        NSData *dicData = [self queryReal:[NSString stringWithFormat:@"%@-%@",saveKey,EXTEND]];
//        ext = [SupportDicUtil toDic:dicData];
//
//    }
//    [self saveReal:[data_ data] Key:saveKey];
//    [self saveReal:[SupportDicUtil toData:ext] Key:[NSString stringWithFormat:@"%@-%@",saveKey,EXTEND]];
//}

//-(id<SupportUnitData>)query:(NSString *)saveKey{
//    NSString *extendKey = [NSString stringWithFormat:@"%@-%@",saveKey,EXTEND];
//    if ([self queryReal:extendKey]) {
//        /**
//         *  判断数据是否过期，过期则删除。
//         *
//         *  liuxiaolong 2016-06-06 12:16
//         */
//        id<SupportUnitData> extendData = [self queryReal:extendKey];
//        NSDictionary *extend = [extendData data];
//        long currentTime = [SupportDateUtil currentTimeForLong];
//        long expiry = [[extend objectForKey:EXPIRYDATE] integerValue];
//        long saveTime = [[extend objectForKey:SAVEDATE] integerValue];
//        if (currentTime - saveTime > expiry) {
//            SupportLog(@"数据过期 --> key : %@",saveKey);
//            [self remove:saveKey];
//            [self remove:extendKey];
//        }else{
//            id<SupportUnitData> saveData = [self queryReal:saveKey];
//            SupportUnitDataDefaultImp *dafaultData = [[SupportUnitDataDefaultImp alloc] initData:[saveData Extend:extend];
//            return dafaultData;
//        }
//    }
//    return nil;
//}

//-(void)remove:(NSString *)saveKey{
//    NSString *extendKey = [NSString stringWithFormat:@"%@-%@",saveKey,EXTEND];
//    [self removeReal:saveKey];
//    [self removeReal:extendKey];
//}

@end
