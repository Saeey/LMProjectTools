//
//  NSObject+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSObject+LMProjectTools.h"
#import "LMNSLog.h"

@implementation NSObject (LMProjectTools)

- (BOOL)isValid {
    return !(self == nil || [self isKindOfClass:[NSNull class]]);
}

- (void)JSONLog {
    NSString *log = @"\nLMJSONLog:\n";
    if (self == nil) {
        log = [log stringByAppendingString:@"Dictionary is nil!!!"];
    } else {
        log = [log stringByAppendingString:[NSDictionary objectToJsonString:self]];
    }
    log = [log stringByAppendingString:@"\n"];
    NSLog(@"%@",log);
}

+ (NSString *)objectToJsonString:(NSObject *)object {
    NSError *parseError = nil;
    NSData *jsonData    = [NSJSONSerialization dataWithJSONObject:object
                                                          options:NSJSONWritingPrettyPrinted
                                                            error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
