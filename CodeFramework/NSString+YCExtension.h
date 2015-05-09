//
//  NSString+Extension.h
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString(YCExtension)

-(BOOL)stringOfMinLength:(NSInteger)minLength maxLength:(NSInteger)maxLength;

-(NSString*)stringRemoveWhitespace;
/**
 判断string是否包含空格
 */
-(BOOL)stringIsContainSpace;
/**
 判断string是否是数字类型
 */
-(BOOL)stringIsNumber;
-(NSInteger)stringLength;
-(BOOL)isFloatValue;

/**
 *  将服务器获取的时间字符串转为界面的显示形式
 *
 *  @param oldFmt 原来的格式
 *  @param newFmt 新的格式
 *
 *  @return 新格式的日期文本
 */
-(NSString*)stringDatetime:(NSString*)oldFmt toString:(NSString*)newFmt;

/**
 *  根据文本和宽度限制自动计算高度
 *
 *  @param width 最大宽度
 *  @param fSize 字体大小
 *
 *  @return 返回新的高度(宽度不变)
 */
-(CGSize)autoHeightWithWidth:(CGFloat)width fontSize:(CGFloat)fSize;
/**
 *  转成NSURL对象
 */
-(NSURL*)toURL;
@end
