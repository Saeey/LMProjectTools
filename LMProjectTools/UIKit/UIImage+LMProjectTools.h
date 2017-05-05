//
//  UIImage+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/11.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LMProjectTools)

/**
 根据颜色创建图片

 @param color 颜色
 @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 对image增加水印
 
 @param text 需要增加水印的文字
 @param rect 增加在的位置
 @return image
 */
- (UIImage *)watermarkImage:(NSString *)text
                       rect:(CGRect)rect
                       font:(UIFont *)font
                      color:(UIColor *)color;

@end
