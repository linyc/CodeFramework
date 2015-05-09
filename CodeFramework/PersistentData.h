//
//  LastingData.h
//  carlive
//
//  Created by yuecang on 15/4/28.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersistentData : NSObject
+(void)writeKey:(NSString*)key obj:(id)obj;
+(id)readKey:(NSString*)key;
@end
