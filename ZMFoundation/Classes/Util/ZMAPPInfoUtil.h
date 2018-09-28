//
//  ZMAPPInfoUtil.h
//  Pods
//
//  Created by 周明 on 2018/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMAPPInfoUtil : NSObject

+ (NSString *)appVersion;
+ (NSString *)buildVersion;
+ (NSString *)bundleIdentifier;
+ (NSString *)appName;
+ (NSString *)appId;

@end

NS_ASSUME_NONNULL_END
