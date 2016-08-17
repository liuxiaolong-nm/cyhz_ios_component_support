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

-(void)removeReal:(NSString *)saveKey{
    [mNSUserDefaults removeObjectForKey:saveKey];
    [mNSUserDefaults synchronize];
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

@end
