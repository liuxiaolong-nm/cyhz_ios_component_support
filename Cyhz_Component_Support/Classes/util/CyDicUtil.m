//
//  CyDicUtil.m
//  Pods
//
//  Created by liuxiaolong on 16/6/6.
//
//

#import "CyDicUtil.h"

@implementation CyDicUtil

+(NSData *)toData:(NSDictionary *)dic{
    if(!dic){
        return nil;
    }
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    return data;
}

+(NSDictionary *)toDic:(NSData *)data{
    if (!data) {
        return @{};
    }
    NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    return dictionary;
}

@end
