//
//  NSArray+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSArray+LMProjectTools.h"

@implementation NSArray (LMProjectTools)

- (BOOL)lm_haveObject:(id)object {
    NSUInteger index = [self indexOfObject:object];
    return (index != NSNotFound);
}

@end
