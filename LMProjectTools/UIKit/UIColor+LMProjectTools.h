//
//  UIColor+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 高翔 on 2017/8/16.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import <UIKit/UIKit.h>

#define LMCOLOR(R,G,B,A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

@interface UIColor (LMProjectTools)

/**
 颜色转换：iOS中（以#开头）十六进制的颜色转换为UIColor(RGB)

 @param color <#color description#>
 @return <#return value description#>
 */
+ (UIColor *)colorWithHexString:(NSString *)color;

@end
