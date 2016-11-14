//
//  NSString+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSString+LMProjectTools.h"

@implementation NSString (LMProjectTools)

- (NSURL *)URLValue {
    return [NSURL URLWithString:self];
}

@end
