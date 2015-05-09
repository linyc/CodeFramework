//
//  NSObject+Extension.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "NSObject+YCExtension.h"

@implementation NSObject(YCExtension)

-(BOOL)objectIsNULLOrEmpty
{
    if(self==[NSNull null])
        return YES;
    else if([self isKindOfClass:[NSString class]]){
        if([(NSString*)self length]==0)
            return YES;
    }
    else if([self isKindOfClass:[NSDictionary class]] || [self isKindOfClass:[NSMutableDictionary class]]){
        if ([(NSDictionary*)self count]==0) {
            return YES;
        }
    }
    else if([self isKindOfClass:[NSArray class]] || [self isKindOfClass:[NSMutableArray class]]){
        if ([(NSArray*)self count]==0) {
            return YES;
        }
    }
    
    return NO;
}
@end
