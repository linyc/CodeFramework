//
//  HttpManager.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/8.
//  Copyright (c) 2015年 TANGGUAN. All rights reserved.
//

#import "HttpManager.h"

@implementation HttpManager


-(void)baseRequest:(NSString*)urlString rquestMethod:(RequestMethod)method parameters:(NSDictionary*)pars compleate:(void(^)(NSError *error,NSString *code,NSString *message,id resultObject))compleate{

    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    if (method == GET) {
        
        [manager GET:urlString parameters:pars success:^(NSURLSessionDataTask *task, id responseObject) {
            if(compleate){
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
                NSString *code = dic[@"code"];
                NSString *message = dic[@"message"];
                id result = dic[@""];
                
                compleate(nil,code,message,result);
            }
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (compleate) {
                compleate(error,nil,nil,nil);
            }
        }];
    }
    else if(method == POST){
        
        [manager POST:urlString parameters:pars success:^(NSURLSessionDataTask *task, id responseObject) {
            if(compleate){
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
                NSString *code = dic[@"code"];
                NSString *message = dic[@"message"];
                id result = dic[@""];
                
                compleate(nil,code,message,result);
            }
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (compleate) {
                compleate(error,nil,nil,nil);
            }
        }];
    }
}
-(void)baseRequestWithSSL:(NSString*)urlString rquestMethod:(RequestMethod)method cerFilePath:(NSString*)cerPath parameters:(NSDictionary*)pars compleate:(void(^)(NSError *error,NSString *code,NSString *message,id resultObject))compleate{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSData *cerData = [NSData dataWithContentsOfFile:cerPath];
    
    AFSecurityPolicy *secPolicy = [[AFSecurityPolicy alloc] init];
    [secPolicy setAllowInvalidCertificates:YES];
    [secPolicy setPinnedCertificates:@[cerData]];
//    [secPolicy setSSLPinningMode:AFSSLPinningModeCertificate];
    
    [manager setSecurityPolicy:secPolicy];
    
    if (method == GET) {
        
        [manager GET:urlString parameters:pars success:^(NSURLSessionDataTask *task, id responseObject) {
            if(compleate){
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
                NSString *code = dic[@"code"];
                NSString *message = dic[@"message"];
                id result = dic[@""];
                
                compleate(nil,code,message,result);
            }
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (compleate) {
                compleate(error,nil,nil,nil);
            }
        }];
    }
    else if(method == POST){
        
        [manager POST:urlString parameters:pars success:^(NSURLSessionDataTask *task, id responseObject) {
            if(compleate){
                NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
                NSString *code = dic[@"code"];
                NSString *message = dic[@"message"];
                id result = dic[@""];
                
                compleate(nil,code,message,result);
            }
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            if (compleate) {
                compleate(error,nil,nil,nil);
            }
        }];
    }
}
@end
