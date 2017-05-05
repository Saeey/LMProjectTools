//
//  LMLoadXibView.m
//  LMAutoLoadXibDemo
//
//  Created by 高翔 on 16/12/25.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "LMLoadXibView.h"

@interface LMLoadXibView () {
    NSString *_xibName;
}
@end

@implementation LMLoadXibView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        _xibName = [self updateNibName];
        UIView *viewOfXib = [[[UINib nibWithNibName:_xibName bundle:[NSBundle bundleForClass:[self class]]] instantiateWithOwner:self options:nil] firstObject];
        self.frame = frame;
        viewOfXib.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        [self addSubview:viewOfXib];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _xibName = [self updateNibName];
        NSArray *arr = [[UINib nibWithNibName:_xibName bundle:nil] instantiateWithOwner:self options:nil];
        UIView *containerView = [arr firstObject];
        [self addSubview:containerView];
        
        containerView.translatesAutoresizingMaskIntoConstraints = NO;
        NSLayoutConstraint *leading = [NSLayoutConstraint constraintWithItem:containerView
                                                                   attribute:NSLayoutAttributeLeading
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self
                                                                   attribute:NSLayoutAttributeLeading
                                                                  multiplier:1.0
                                                                    constant:0];
        NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:containerView
                                                               attribute:NSLayoutAttributeTop
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self
                                                               attribute:NSLayoutAttributeTop
                                                              multiplier:1.0
                                                                constant:0];
        NSLayoutConstraint *trailing = [NSLayoutConstraint constraintWithItem:containerView
                                                                    attribute:NSLayoutAttributeTrailing
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:self
                                                                    attribute:NSLayoutAttributeTrailing
                                                                   multiplier:1.0
                                                                     constant:0];
        NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:containerView
                                                                  attribute:NSLayoutAttributeBottom
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self
                                                                  attribute:NSLayoutAttributeBottom
                                                                 multiplier:1.0
                                                                   constant:0];
        [self addConstraints:@[leading, top, trailing, bottom]];

    }
    return self;
}

- (NSString *)updateNibName {
    return NSStringFromClass([self class]);
}

@end
