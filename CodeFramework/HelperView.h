//
//  HelperView.h
//  carlive
//
//  Created by yuecang on 15/4/9.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 * 界面帮助类
 */
@interface HelperView : NSObject
/**
 * 单纯提示信息
 */
+(void)AlertViewWithTitle:(NSString*)title message:(NSString*)message;

/**
 *单纯提示信息,默认标题是“提示“
 */
+(void)AlertViewWithMessage:(NSString*)message;
/**
 *  提示信息并设置代理
 */
+(void)AlertViewWithDelegate:(id<UIAlertViewDelegate>)delegate title:(NSString*)title message:(NSString*)message button:(NSString*)buttons,...;

+(void)setButtonLayoutStyle:(UIButton*)button tintColor:(UIColor*)tintColor
;
+(void)setViewCorner:(UIView*)view corner:(NSInteger)corner;
+(void)setViewCornerToRound:(UIView*)view;


+(UIStoryboard *)getStoryboardWithName:(NSString*)sbName;
@end
