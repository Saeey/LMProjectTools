//
//  LMJSONLog.m
//  RDIMeetingProj
//
//  Created by 流氓 on 16/9/26.
//  Copyright © 2016年 visionet. All rights reserved.
//

#import "LMJSONLog.h"
@implementation LMJSONLog
+ (void)JSONLogWithDictionary:(NSDictionary *)dict {
    NSString *log = @"\nLMJSONLog:\n";
    if (dict == nil) {
        log = [log stringByAppendingString:@"Dictionary is nil!!!"];
    } else {
        log = [log stringByAppendingString:[self dictionaryToJson:dict]];
    }
    log = [log stringByAppendingString:@"\n"];
    NSLog(@"%@",log);
}

+ (NSString *)dictionaryToJson:(NSDictionary *)dic {
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}
@end
