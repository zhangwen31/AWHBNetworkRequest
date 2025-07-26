//
//  AWHBNRStreams.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2022/9/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHBNRStreams : NSObject

@property (nonatomic, strong) NSInputStream *input;

@property (nonatomic, strong) NSOutputStream *output;

@property (nonatomic, assign) BOOL canWrite;

- (instancetype)initWithInputStream:(NSInputStream *)input outputStream:(NSOutputStream *)output;

- (void)close;

@end

NS_ASSUME_NONNULL_END
