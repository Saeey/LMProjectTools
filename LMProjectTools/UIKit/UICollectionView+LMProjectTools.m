//
//  UICollectionView+LMProjectTools.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 17/3/6.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import "UICollectionView+LMProjectTools.h"

@implementation UICollectionView (LMProjectTools)

- (void)lm_registerNib:(Class)cellClass {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerNib:(Class)cellClass forSupplementaryViewOfKind:(NSString *)kind {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(cellClass) bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerClass:(Class)cellClass {
    [self registerClass:cellClass forCellWithReuseIdentifier:NSStringFromClass(cellClass)];
}

- (void)lm_registerClass:(Class)cellClass forSupplementaryViewOfKind:(NSString *)kind {
    [self registerClass:cellClass forSupplementaryViewOfKind:kind withReuseIdentifier:NSStringFromClass(cellClass)];
}

- (__kindof UICollectionViewCell *)lm_dequeueReusableCellWithReuseClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableCellWithReuseIdentifier:NSStringFromClass(cellClass) forIndexPath:indexPath];
}

- (__kindof UICollectionReusableView *)lm_dequeueReusableSupplementaryViewOfKind:(NSString *)elementKind withReuseClass:(Class)cellClass forIndexPath:(NSIndexPath *)indexPath {
    return [self dequeueReusableSupplementaryViewOfKind:elementKind withReuseIdentifier:NSStringFromClass(cellClass) forIndexPath:indexPath];
}

@end
