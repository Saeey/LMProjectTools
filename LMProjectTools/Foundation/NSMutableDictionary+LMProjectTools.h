//
//  NSMutableDictionary+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/10.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+LMProjectTools.h"

@interface NSMutableDictionary (LMProjectTools)

/**
 安全SetObject，如果anObject为nil，则会插入\@""

 @param anObject object
 @param aKey key
 */
- (void)lm_safeSetObject:(id _Nonnull)anObject forKey:(id<NSCopying> _Nonnull)aKey;

@end
