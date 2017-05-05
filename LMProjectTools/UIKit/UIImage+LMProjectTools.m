//
//  UIImage+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/11/11.
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

- (UIImage *)watermarkImage:(NSString *)text
                       rect:(CGRect)rect
                       font:(UIFont *)font
                      color:(UIColor *)color{
    //1.获取上下文
    UIGraphicsBeginImageContext(self.size);
    
    //2.绘制图片
    [self drawInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle defaultParagraphStyle] mutableCopy];
    style.alignment = NSTextAlignmentCenter;
    
    //文字的属性
    NSDictionary *dic = @{
                          NSFontAttributeName:font,
                          NSParagraphStyleAttributeName:style,
                          NSForegroundColorAttributeName:color
                          };
    //将文字绘制上去
    [text drawInRect:rect withAttributes:dic];
    
    //4.获取绘制到得图片
    UIImage *watermarkImage = UIGraphicsGetImageFromCurrentImageContext();
    
    //5.结束图片的绘制
    UIGraphicsEndImageContext();
    
    return watermarkImage;
}

@end
