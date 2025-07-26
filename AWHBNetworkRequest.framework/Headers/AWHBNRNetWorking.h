//
//  AWHBNRNetWorking.h
//  ShengMinghuan
//
//  Created by cnsunrun on 16/1/26.
//  Copyright © 2016年 hxsr. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const AWHBNRLogOutNotification;
extern NSString *const AWHBNRLogOutGeTuiSdkPushOffNotification;

@interface AWHBNRNetWorking : NSObject
+ (void)POST_RequestWithURL:(NSString *)urlStr withParameters:(NSDictionary *)parameters withHudView:(UIView *)view withBlock:(void (^)(NSDictionary *requestDic))block andFailure:(void (^)(NSString *errorDescription))failure;
+ (NSURLSessionDataTask *)getDataTaskPOST_RequestWithURL:(NSString *)urlStr withParameters:(NSDictionary *)parameters withHudView:(UIView *)view withBlock:(void (^)(NSDictionary *requestDic))block andFailure:(void (^)(NSString *errorDescription))failure;
+ (void)POST_RequestFallNoToastWithURL:(NSString *)urlStr withParameters:(NSDictionary *)parameters withHudView:(UIView *)view withBlock:(void (^)(NSDictionary *requestDic))block andFailure:(void (^)(NSString *errorDescription))failure;
+ (void)Get_RequestWithURL:(NSString *)urlStr withParameters:(NSDictionary *)parameters withHudView:(UIView *)view withBlock:(void (^)(NSString *str))block andFailure:(void (^)(NSString *errorDescription))failure;
+ (void)Get_UploadWithURL:(NSString *)urlStr withParameters:(NSDictionary *)parameters withHudView:(UIView *)view withBlock:(void (^)(NSDictionary *requestDic))block andFailure:(void (^)(NSString *errorDescription))failure;
@end
