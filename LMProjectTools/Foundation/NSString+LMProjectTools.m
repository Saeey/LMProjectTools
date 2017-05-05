//
//  NSString+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSString+LMProjectTools.h"
#import "LMNSLog.h"

@implementation NSString (LMProjectTools)

- (NSURL *)URLValue {
    return [NSURL URLWithString:self];
}

- (BOOL)isPhoneNumber {
    NSString *pattern = @"^1+[3578]+\\d{9}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}

- (BOOL)isUserIdCard {
    NSString *pattern = @"(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
}

- (BOOL)isValid {
    if (self == nil
        ||[self isKindOfClass:[NSNull class]]
        ||[self isEqualToString:@""]) {
        return NO;
    } else {
        return YES;
    }
}

- (NSDictionary *)JSONDictionary {
    if (self && self.length != 0) {
        NSError *error;
        NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        
        if (error) {
            NSLog(@"json解析失败：%@", error);
            return nil;
        }
        return jsonDict;
    }
    return nil;
}

@end
