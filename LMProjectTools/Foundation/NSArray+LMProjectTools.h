//
//  NSArray+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (LMProjectTools)

/**
 判断NSArray中是否包含某个元素，包含则返回YES

 @param object 某个元素
 @return 包含则返回YES
 */
- (BOOL)lm_haveObject:(id)object;

@end
