//
//  AWHBNRLoadingView.h
//  AWHBNetworkRequest
//
//  Created by GeDaTing on 2022/7/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AWHBNRLoadingView : UIView

+ (void)show;

+ (void)showWithInfoMsg:(NSString *)infoMsg;

+ (void)hidden;

@end

NS_ASSUME_NONNULL_END
