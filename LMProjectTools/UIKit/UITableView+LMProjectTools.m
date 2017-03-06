//
//  UITableView+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 17/3/6.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import "UITableView+LMProjectTools.h"

@implementation UITableView (LMProjectTools)

- (void)lm_registerCellNib:(_Nonnull Class)cellClass {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerHeaderFooterNib:(_Nonnull Class)cellClass {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:[NSBundle mainBundle]] forHeaderFooterViewReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerCellClass:(_Nonnull Class)cellClass {
    [self registerClass:cellClass forCellReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerHeaderFooterClass:(_Nonnull Class)cellClass {
    [self registerClass:cellClass forHeaderFooterViewReuseIdentifier:NSStringFromClass(cellClass)];
}

- (nullable __kindof UITableViewCell *)lm_dequeueReusableCellWithClass:(_Nonnull Class)cellClass {
    return [self dequeueReusableCellWithIdentifier:NSStringFromClass(cellClass)];
}

- (nullable __kindof UITableViewHeaderFooterView *)lm_dequeueReusableHeaderFooterViewWithClass:(_Nonnull Class)cellClass {
    return [self dequeueReusableHeaderFooterViewWithIdentifier:NSStringFromClass(cellClass)];
}

@end
