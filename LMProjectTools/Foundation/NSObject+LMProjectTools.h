//
//  NSObject+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LMProjectTools)

/**
 校验是否有效 有效则返回YES, nil 或 [NSNull null]则返回NO

 @return 是否有效
 */
- (BOOL)isValid;

/**
 打印JSON格式字符串
 */
- (void)JSONLog;

@end
