//
//  LMAutoLoadXibView.h
//  LMAutoLoadXibDemo
//
//  Created by 猥琐流氓 on 16/9/8.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LMLoadXibView.h"

IB_DESIGNABLE

/**
    How use?
 1.创建同名的.h .m .xib文件继承自LMAutoLoadXibView
 2.更改xib中的File's OwnerdeClass为.h.m文件中的类名
 --在其他xib中创建 在其他xib中拖一个空白view将class改成之前创建的.h.m文件中的类名。
 --使用代码创建 直接创建即可
 ##继承自LMAutoLoadXibView的view会自动在xib中加载视图，继承自LMLoadXibView的view则不会在xib中加载视图
*/

@interface LMAutoLoadXibView : LMLoadXibView

@end
