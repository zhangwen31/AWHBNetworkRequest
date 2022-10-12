//
//  AWHBNRTCPClient.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2022/10/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, AWHBNRTCPClientEvent) {
    AWHBNRTCPClientEvent_Connected,
    AWHBNRTCPClientEvent_ConnectFailed,
    AWHBNRTCPClientEvent_SendSuccess,
    AWHBNRTCPClientEvent_SendError,
    AWHBNRTCPClientEvent_ReceiveData,
};

@protocol AWHBNRTCPClientDelegate <NSObject>
@optional
- (void)AWHBNRTCPClientEvent:(AWHBNRTCPClientEvent)event message:(NSString *)message;
@end

@interface AWHBNRTCPClient : NSObject

@property (nonatomic, weak) id<AWHBNRTCPClientDelegate>   delegate;
@property (nonatomic, assign) int  socketFD;
@property (nonatomic, assign) BOOL bStop;

+ (instancetype)sharedInstance;

- (void)connectWithHost:(NSString *)host port:(int)port;
- (void)disconnect;
- (void)send:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
