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

CG_INLINE CGSize
CGSizeGetRightHeight(NSString *string, UIFont *font, CGFloat width)
{
    UILabel *label      = [[UILabel alloc] init];
    label.text          = string;
    label.numberOfLines = 0;
    label.font          = font;
    label.width         = width;
    [label sizeToFit];
    label.width = width;
    return label.size;
}

CG_INLINE CGSize
CGSizeGetRightWidth(NSString *string, UIFont *font, CGFloat maxWidth)
{
    UILabel *label      = [[UILabel alloc] init];
    label.text          = string;
    label.numberOfLines = 0;
    label.font          = font;
    label.width         = CGFLOAT_MAX;
    [label sizeToFit];
    
    label.width = label.width < maxWidth?label.width:maxWidth;
    return label.size;
}
