//
//  AWHBNRGCDTCPClient.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2022/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHBNRGCDTCPClient : NSObject

+ (instancetype)sharedInstance;
- (void)connectWithHost:(NSString *)host port:(int)port;
- (void)connectToAddress:(NSString *)remoteAddr;
- (void)disconnect;
- (void)send:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
