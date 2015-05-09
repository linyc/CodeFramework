//
//  HelperView.m
//  carlive
//
//  Created by yuecang on 15/4/9.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import "HelperView.h"


@implementation HelperView

+(void)AlertViewWithTitle:(NSString*)title message:(NSString*)message
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}
+(void)AlertViewWithMessage:(NSString*)message
{
    [self AlertViewWithTitle:@"提示" message:message];
}

+(void)AlertViewWithDelegate:(id<UIAlertViewDelegate>)delegate title:(NSString*)title message:(NSString*)message button:(NSString*)buttons,...
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title?title:@"提示" message:message delegate:delegate cancelButtonTitle:@"取消" otherButtonTitles:buttons, nil];
    [alertView show];
}


+(void)setViewCorner:(UIView*)view corner:(NSInteger)corner
{
    view.layer.cornerRadius = corner;
    view.clipsToBounds=YES;
}
+(void)setButtonLayoutStyle:(UIButton*)button tintColor:(UIColor*)tintColor
{
    button.tintColor = tintColor;
    [self setViewCorner:button corner:4];
    button.layer.borderColor = [tintColor CGColor];
    button.layer.borderWidth=1;
    [button setTitleColor:tintColor forState:UIControlStateNormal];
    
    
}
+(void)setViewCornerToRound:(UIView*)view
{
    [self setViewCorner:view corner:view.bounds.size.width/2];
}

+(UIStoryboard *)getStoryboardWithName:(NSString*)sbName
{
    return [UIStoryboard storyboardWithName:sbName bundle:nil];
}


@end
