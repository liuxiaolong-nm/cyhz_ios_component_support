//
//  CyDiskLightWeightSave.m
//  Pods
//
//  Created by liuxiaolong on 16/6/3.
//
//

#import "SupportDiskLightSave.h"

@implementation SupportDiskLightSave{
    NSUserDefaults *mNSUserDefaults;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        mNSUserDefaults = [[NSUserDefaults alloc]initWithSuiteName:@"SupportDiskLightSave"];
    }
    return self;
}

-(void)saveReal:(NSData*)data Key:(NSString *)saveKey{
    [mNSUserDefaults setObject:data forKey:saveKey];
    [mNSUserDefaults synchronize];
}

-(NSData*)queryReal:(NSString *)saveKey{
    return [mNSUserDefaults objectForKey:saveKey];
}

-(void)remove:(NSString *)saveKey{
    [mNSUserDefaults removeObjectForKey:saveKey];
    [mNSUserDefaults synchronize];
}

-(void)removeAll{
    NSDictionary * dict = [mNSUserDefaults dictionaryRepresentation];
    for (id key in dict) {
        [mNSUserDefaults removeObjectForKey:key];
    }
    [mNSUserDefaults synchronize];
}

-(void)save:(id<SupportUnitData>)data Key:(NSString *)saveKey{
    //if ([[data data] isKindOfClass:[NSData class]]) {
        [mNSUserDefaults setObject:[data data] forKey:saveKey];
        [mNSUserDefaults setObject:[data extend] forKey:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]]];
        [mNSUserDefaults synchronize];
   // }
}

-(id<SupportUnitData>)query:(NSString *)saveKey{
    id data = [mNSUserDefaults objectForKey:saveKey];
    NSDictionary *ext = [mNSUserDefaults objectForKey:[NSString stringWithFormat:@"%@_%@",saveKey,[self extKey]]];
    return [[SupportUnitDataDefaultImp alloc] initData:data Extend:ext];
}

@end
