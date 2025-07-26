//
//  AWHBNRUploadingStreamsData.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2022/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHBNRUploadingStreamsData : NSObject

- (void)uploadingStreamsDataWithURL:(NSString *)urlStr inputStream:(NSInputStream *)input outputStream:(NSOutputStream *)output;

- (void)close;

- (BOOL)canWrite;

@end

NS_ASSUME_NONNULL_END
