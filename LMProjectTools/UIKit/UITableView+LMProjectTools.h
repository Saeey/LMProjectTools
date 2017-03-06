//
//  UITableView+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 高翔 on 17/3/6.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (LMProjectTools)


/**
 注册通过Nib创建的Cell

 @param cellClass [Cell class]
 */
- (void)lm_registerCellNib:(_Nonnull Class)cellClass;

/**
 注册通过Nib创建的HeaderFooterView

 @param cellClass [View class]
 */
- (void)lm_registerHeaderFooterNib:(_Nonnull Class)cellClass;

/**
 注册Cell

 @param cellClass [Cell class]
 */
- (void)lm_registerCellClass:(_Nonnull Class)cellClass;

/**
 注册HeaderFooterView

 @param cellClass [HeaderFooterView class]
 */
- (void)lm_registerHeaderFooterClass:(_Nonnull Class)cellClass;

/**
 在cellForRowAtIndexPath代理中获取Cell

 @param cellClass [Cell class]
 @return UITableViewCell
 */
- (nullable __kindof UITableViewCell *)lm_dequeueReusableCellWithClass:(_Nonnull Class)cellClass;

/**
 在viewForHeaderInSection、viewForFooterInSection代理   中获取UITableViewHeaderFooterView

 @param cellClass [UITableViewHeaderFooterView class]
 @return UITableViewHeaderFooterView
 */
- (nullable __kindof UITableViewHeaderFooterView *)lm_dequeueReusableHeaderFooterViewWithClass:(_Nonnull Class)cellClass;

@end
