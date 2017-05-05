//
//  LMLoadXibViewController.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 2017/4/12.
//  Copyright © 2017年 流氓. All rights reserved.
//

#import "LMLoadXibViewController.h"
#import "LMProjectTools.h"
#import "TestLoadXibView.h"
#import "TestAutoLoadXibView.h"

@interface LMLoadXibViewController ()

@property (weak, nonatomic) IBOutlet TestAutoLoadXibView *autoLoadXibView;
@property (weak, nonatomic) IBOutlet TestLoadXibView *loadXibView;
@property (weak, nonatomic) IBOutlet UILabel *codeInitLabel;

@end

@implementation LMLoadXibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TestLoadXibView *codeLoadXibView = [[TestLoadXibView alloc] init];
    codeLoadXibView.frame = CGRectMake(self.codeInitLabel.left, self.codeInitLabel.bottom, 100, 100);
    [self.view addSubview:codeLoadXibView];
    
    TestAutoLoadXibView *codeAutoLoadXibView = [[TestAutoLoadXibView alloc] init];
    codeAutoLoadXibView.frame = CGRectMake([[UIApplication sharedApplication].windows firstObject].width - codeLoadXibView.width - 20, codeLoadXibView.y, codeLoadXibView.width, codeLoadXibView.height);
    [self.view addSubview:codeAutoLoadXibView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
