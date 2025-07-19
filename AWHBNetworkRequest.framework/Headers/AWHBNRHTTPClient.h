//
//  AWHBNRHTTPClient.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2024/4/1.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AWHBNRHTTPClient;
@protocol  AWHBNRHTTPClientDelegate<NSObject>

-(void)uploader:(AWHBNRHTTPClient *)uploader didFinishUploadStreamAndGetResult:(NSDictionary *)dic;

-(void)uploader:(AWHBNRHTTPClient *)uploader didUploadStatus:(int)status description:(NSString *)description;

@end

@interface AWHBNRHTTPClient : NSObject

@property(nonatomic,weak)id <AWHBNRHTTPClientDelegate>delegate;

+ (instancetype)sharedInstance;
- (void)connectWithUrlStr:(NSString *)urlStr delegate:(id <AWHBNRHTTPClientDelegate>)delegate;
- (void)disconnect;
- (void)send:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
