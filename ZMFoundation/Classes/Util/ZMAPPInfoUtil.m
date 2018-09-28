//
//  ZMAPPInfoUtil.m
//  Pods
//
//  Created by 周明 on 2018/9/28.
//

#import "ZMAPPInfoUtil.h"

@implementation ZMAPPInfoUtil

+ (NSString *)appVersion {
    NSString *result  = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return result;
}

+ (NSString *)buildVersion {
    NSString *result  = [[[NSBundle mainBundle] infoDictionary] objectForKey:(NSString *)kCFBundleVersionKey];
    return result;
}

+ (NSString *)bundleIdentifier {
    NSString *result = [[NSBundle mainBundle] infoDictionary][(__bridge NSString *)kCFBundleIdentifierKey];;
    return result;
}

+ (NSString *)appName {
    NSString *result = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
    return result;
}

+ (NSString *)appId {
    NSDictionary *query = [NSDictionary dictionaryWithObjectsAndKeys:
                           (__bridge id)(kSecClassGenericPassword), kSecClass,
                           @"bundleSeedID", kSecAttrAccount,
                           @"", kSecAttrService,
                           (id)kCFBooleanTrue, kSecReturnAttributes,
                           nil];
    CFDictionaryRef result = nil;
    OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    if (status == errSecItemNotFound){
        status = SecItemAdd((__bridge CFDictionaryRef)query, (CFTypeRef *)&result);
    }
    if (status != errSecSuccess){
        return nil;
    }
    NSString *accessGroup = [(__bridge NSDictionary *)result objectForKey:(__bridge id)(kSecAttrAccessGroup)];
    NSArray *components = [accessGroup componentsSeparatedByString:@"."];
    NSString *appId = [[components objectEnumerator] nextObject];
    CFRelease(result);
    return appId;
}

@end
