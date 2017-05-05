//
//  NSObject+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/14.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "NSObject+LMProjectTools.h"
#import "LMNSLog.h"
#import <objc/runtime.h>

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

- (SEL)lm_selectorFromBlock:(void (^)(void))block {
    NSString *selName = [NSString stringWithFormat:@"block%p", block];
    SEL sel = NSSelectorFromString(selName);
    class_addMethod([self class], sel, (IMP)selectImp, "v@:");
    objc_setAssociatedObject(self, sel, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    return sel;
}

void selectImp(id self,SEL _cmd) {
    void (^block)(void) = objc_getAssociatedObject(self, _cmd);
    if (block) {
        block();
    }
}

@end
