//
//  AWHBNRequsetManager.h
//  AWHBNetworkRequest
//
//  Created by GeDaTing on 2022/2/19.
//

#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHBNRequsetManager : AFHTTPSessionManager

+(AFHTTPSessionManager *)sharedHttpSessionManager;

@end

NS_ASSUME_NONNULL_END
