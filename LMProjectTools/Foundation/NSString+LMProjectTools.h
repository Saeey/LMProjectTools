//
//  NSString+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LMProjectTools)

/**
 返回URLValue

 @return URL格式
 */
- (NSURL *)URLValue;

/**
 根据正则判断是否为有效手机号

 @return 如果是正确手机号返回YES
 */
- (BOOL)isPhoneNumber;

/**
 正则匹配用户身份证号15或18位

 @return 如果是正确身份证号返回YES
 */
- (BOOL)isUserIdCard;

/**
 校验是否有效 有效则返回YES, nil 或 [NSNull null] 或 @"" 则返回NO
 
 @return 是否有效
 */
- (BOOL)isValid;

@end
