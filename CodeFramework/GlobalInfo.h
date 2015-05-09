//
//  GlobalInfo.h
//  WisdomCommunity
//
//  Created by yuecang on 15/5/8.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  单例，所有全局信息都可以放在这个类
 */
@interface GlobalInfo : NSObject
/**
 *  判断当前网络是否可用
 */
@property (nonatomic,assign) BOOL netIsReachable;

+(GlobalInfo*)shareInfo;
@end
