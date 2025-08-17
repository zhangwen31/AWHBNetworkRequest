//
//  AWHBNRMacro.h
//  AWHBNetworkRequest
//
//  Created by 王恒 on 2025/8/17.
//

#ifndef AWHBNRMacro_h
#define AWHBNRMacro_h

//只在Debug模式下打印输出
#ifndef __OPTIMIZE__
#define AWHBNRDebugLog(s, ...) NSLog(@"%s(%d): %@", __FUNCTION__, __LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__])
#else
#define AWHBNRDebugLog(...)
#endif

#endif /* AWHBNRMacro_h */
