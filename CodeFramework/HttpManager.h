//
//  HttpManager.h
//  WisdomCommunity
//
//  Created by yuecang on 15/5/8.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    GET,
    POST
} RequestMethod;

@interface HttpManager : NSObject
-(void)baseRequest:(NSString*)urlString rquestMethod:(RequestMethod)method parameters:(NSDictionary*)pars compleate:(void(^)(NSError *error,NSString *code,NSString *message,id resultObject))compleate;
@end
