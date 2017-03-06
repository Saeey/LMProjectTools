//
//  UICollectionView+LMProjectTools.h
//  LMProjectToolsDemo
//
//  Created by 高翔 on 17/3/6.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (LMProjectTools)

/**
 注册通过Nib创建的Cell

 @param cellClass [Cell class]
 */
- (void)lm_registerNib:(Class)cellClass;

/**
 注册通过Nib创建的UICollectionReusableView

 @param cellClass [UICollectionReusableView class]
 @param kind UICollectionElementKindSectionHeader / UICollectionElementKindSectionFooter
 */
- (void)lm_registerNib:(Class)cellClass forSupplementaryViewOfKind:(NSString *)kind;

/**
 注册Cell

 @param cellClass [Cell class]
 */
- (void)lm_registerClass:(Class)cellClass;

/**
 注册UICollectionReusableView

 @param cellClass [UICollectionReusableView class]
 @param kind UICollectionElementKindSectionHeader / UICollectionElementKindSectionFooter
 */
- (void)lm_registerClass:(Class)cellClass forSupplementaryViewOfKind:(NSString *)kind;

/**
 在cellForItemAtIndexPath代理中获取cell

 @param cellClass [Cell class]
 @param indexPath NSIndexPath
 @return UICollectionViewCell
 */
- (__kindof UICollectionViewCell *)lm_dequeueReusableCellWithReuseClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath;

/**
 在viewForSupplementaryElementOfKind代理中获取UICollectionReusableView

 @param elementKind UICollectionElementKindSectionHeader / UICollectionElementKindSectionFooter
 @param cellClass [Cell class]
 @param indexPath NSIndexPath
 @return UICollectionReusableView
 */
- (__kindof UICollectionReusableView *)lm_dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withReuseClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath;

@end
