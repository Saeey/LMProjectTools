//
//  NSMutableArray+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/10.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSMutableArray+LMProjectTools.h"

@implementation NSMutableArray (LMProjectTools)

- (void)lm_safeAddObject:(id)anObject {
    if (anObject) {
        [self addObject:anObject];
    } else {
        [self addObject:@""];
    }
}

- (BOOL)lm_haveObject:(id)object {
    NSUInteger index = [self indexOfObject:object];
    return (index != NSNotFound);
}

@end
