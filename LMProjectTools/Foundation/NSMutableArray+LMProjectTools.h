//
//  NSMutableArray+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/10.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (LMProjectTools)

/**
 安全AddObject，如果anObject为nil，则会插入\@""

 @param anObject anObject
 */
- (void)lm_safeAddObject:(id)anObject;

@end
