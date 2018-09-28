//
//  NSString+ZMExtension.m
//  Pods
//
//  Created by 周明 on 2018/9/28.
//

#import "NSString+ZMExtension.h"

@implementation NSString (ZMExtension)

- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize {
   CGSize size =[self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil].size;
    return size;
}

- (BOOL)isPureInt {
    NSScanner* scan = [NSScanner scannerWithString:self];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

- (BOOL)isPureFloat {
    NSScanner* scan = [NSScanner scannerWithString:self];
    float val;
    return [scan scanFloat:&val] && [scan isAtEnd];
}

- (BOOL)isCarNumber {
    NSString *carNumRegex = @"[\u4e00-\u9fa5]{1}[A-Za-z]{1}[A-Za-z0-9]{4}[\u4e00-\u9fa5A-Za-z0-9]{1,2}";
    NSPredicate *carNumTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", carNumRegex];
    return [carNumTest evaluateWithObject:self];
}

@end
