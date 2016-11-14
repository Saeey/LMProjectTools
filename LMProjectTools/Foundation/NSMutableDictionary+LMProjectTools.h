//
//  NSMutableDictionary+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 高翔 on 16/11/10.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+LMProjectTools.h"

@interface NSMutableDictionary (LMProjectTools)

- (void)lm_safeSetObject:(id _Nonnull)anObject forKey:(id<NSCopying> _Nonnull)aKey;

@end
