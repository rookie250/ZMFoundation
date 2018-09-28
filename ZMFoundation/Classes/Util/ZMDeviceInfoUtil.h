//
//  ZMDeviceInfoUtil.h
//  Pods
//
//  Created by 周明 on 2018/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMDeviceInfoUtil : NSObject

+ (NSString *)deviceName;
+ (NSString *)iphoneName;
+ (NSString *)currentLanguage;
+ (CGFloat)batteryLevel;
+ (NSString *)deviceUuid;

@end

NS_ASSUME_NONNULL_END
