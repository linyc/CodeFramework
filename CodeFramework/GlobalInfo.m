//
//  GlobalInfo.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/8.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import "GlobalInfo.h"

@implementation GlobalInfo
+(GlobalInfo*)shareInfo
{
    static GlobalInfo *globlainfo;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        globlainfo = [GlobalInfo new];
    });
    return globlainfo;
}
@end
