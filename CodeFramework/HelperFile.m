//
//  HelperFile.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "HelperFile.h"

@implementation HelperFile


+(NSString*)documentDirectory
{
    NSArray *dirArr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask , YES);
    return dirArr[0];
}
@end
