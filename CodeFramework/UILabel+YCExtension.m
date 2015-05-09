//
//  UILabel+Extension.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "UILabel+YCExtension.h"

@implementation UILabel(YCExtension)


-(CGFloat)autoHeightWithText:(NSString*)text
{
    self.numberOfLines = 0;
    self.lineBreakMode = NSLineBreakByWordWrapping;
    self.text = text;
    CGSize newSize = [self sizeThatFits:CGSizeMake(self.frame.size.width, MAXFLOAT)];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, newSize.width, newSize.height);
    return CGRectGetMaxY(self.frame);
}

@end
