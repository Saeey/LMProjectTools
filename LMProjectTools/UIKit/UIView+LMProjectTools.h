//
//  UIView+LMExtension.h
//
//  Created by 流氓 on 16/9/6.
//

#import <UIKit/UIKit.h>

@interface UIView (LMProjectTools)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGPoint orign;

/**
 左边的x值,self.x
 */
@property (nonatomic, assign, readonly) CGFloat left;

/**
 右边边的x值,self.x + self.w
 */
@property (nonatomic, assign, readonly) CGFloat right;

/**
 上边的y值,self.y
 */
@property (nonatomic, assign, readonly) CGFloat top;

/**
 上边的y值,self.y + self.h
 */
@property (nonatomic, assign, readonly) CGFloat bottom;

@end
