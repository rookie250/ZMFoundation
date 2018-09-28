//
//  NSString+ZMExtension.h
//  Pods
//
//  Created by 周明 on 2018/9/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZMExtension)

/**
 计算字符串在指定font下的尺寸
 
 @param font 字体
 @param maxSize 初始尺寸
 @return 返回尺寸
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;

/**
 判断是否是整形

 @return YES为是整形
 */
- (BOOL)isPureInt;

/**
  判断是否是浮点形

 @return YES是浮点形
 */
- (BOOL)isPureFloat;

/**
 判断是否是车牌号

 @return YES为是车牌号
 */
- (BOOL)isCarNumber;


@end

NS_ASSUME_NONNULL_END
