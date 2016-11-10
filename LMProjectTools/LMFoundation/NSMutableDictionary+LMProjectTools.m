//
//  NSMutableDictionary+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 16/11/10.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSMutableDictionary+LMProjectTools.h"

@implementation NSMutableDictionary (LMProjectTools)

- (void)lm_safeSetObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil) {
        [self setObject:@"" forKey:aKey];
    }
    [self setObject:anObject forKey:aKey];
}

@end
