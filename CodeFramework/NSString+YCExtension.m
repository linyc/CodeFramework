//
//  NSString+Extension.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "NSString+YCExtension.h"

@implementation NSString(YCExtension)

-(BOOL)stringOfMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength
{
    NSInteger len = [self stringRemoveWhitespace].length;
    if (minLength != -1 && maxLength != -1) {
        
        if (len < minLength || len > maxLength) {
            return NO;
        }
    }
    else if(minLength != -1 && maxLength == -1){
        if (len < minLength) {
            return NO;
        }
    }
    else if(minLength == -1 && maxLength != -1){
        if (len > maxLength) {
            return NO;
        }
    }
    return YES;
}
-(NSString*)stringRemoveWhitespace
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}
-(BOOL)stringIsContainSpace
{
    NSRange range = [self rangeOfString:@" "];
    return (range.location != NSNotFound);
}
-(BOOL)stringIsNumber
{
    NSString *stringCheck = [self stringRemoveWhitespace];
    NSScanner *scan = [NSScanner scannerWithString:stringCheck];
    int iVal;
    if ([scan scanInt:&iVal] && [scan isAtEnd]) {
        return YES;
    }
    float dVal;
    if ([scan scanFloat:&dVal] && [scan isAtEnd]) {
        return YES;
    }
    
    return NO;
}
-(NSInteger)stringLength
{
    return [self stringRemoveWhitespace].length;
}
-(BOOL)isFloatValue
{
    NSScanner *scan = [[NSScanner alloc] initWithString:self];
    float val;
    return [scan scanFloat:&val] && [scan isAtEnd];
}

-(NSString*)stringDatetime:(NSString*)oldFmt toString:(NSString*)newFmt
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = oldFmt;
    NSDate *tmpD =[fmt dateFromString:[self stringRemoveWhitespace]];
    fmt.dateFormat = newFmt;
    return [fmt stringFromDate:tmpD];
}
-(NSURL*)toURL
{
    return [NSURL URLWithString:self];
}

-(CGSize)autoHeightWithWidth:(CGFloat)width fontSize:(CGFloat)fSize
{
    CGSize size = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fSize]} context:nil].size;
    return size;
}

@end
