//
//  QRCodeCreator.h
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QRCodeCreator : NSObject
/**
 *  生成二维码图片
 *
 *  @param aString 二维码信息
 *  @param width   图片宽度
 *
 *  @return 二维码UIImage对象
 */
+(UIImage *)CreateWithText:(NSString *)aString width:(CGFloat)width;
@end
