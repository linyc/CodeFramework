//
//  UIImage+Extension.h
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIImage(YCExtension)
/**
 *  压缩图片到指定尺寸
 *
 *  @param image 原图片
 *  @param size  压缩后的尺寸
 *
 *  @return 压缩后的图片
 */
-(UIImage*)compressImage:(UIImage*)image toSize:(CGSize)size;

- (UIImage*)imageBlackToTransparentWithRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;
@end
