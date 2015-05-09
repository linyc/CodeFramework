//
//  NSDate+Extension.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "NSDate+YCExtension.h"

@implementation NSDate(YCExtension)

-(NSString*)format_yMd
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = Datetime_y_M_d;
    return [fmt stringFromDate:self];
}
-(NSString*)format_yMdHms
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = Datetime_y_M_d_H_m_s;
    return [fmt stringFromDate:self];
}
-(NSString*)format_Hms
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = Datetime_H_m_s;
    return [fmt stringFromDate:self];
}

@end
