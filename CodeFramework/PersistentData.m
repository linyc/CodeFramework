//
//  LastingData.m
//  carlive
//
//  Created by yuecang on 15/4/28.
//  Copyright (c) 2015年 juzhiquance. All rights reserved.
//

#import "PersistentData.h"

@implementation PersistentData

+(void)writeKey:(NSString*)key obj:(id)obj
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setObject:obj forKey:key];
    [ud synchronize];
}
+(id)readKey:(NSString*)key
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    return [ud objectForKey:key];
}
@end
