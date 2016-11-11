//
//  UIImage+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 16/11/11.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "UIImage+LMProjectTools.h"

@implementation UIImage (LMProjectTools)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return theImage;
}

@end
