//
//  ViewController.m
//  LMProjectToolsDemo
//
//  Created by 高翔 on 16/10/24.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "ViewController.h"
#import "LMProjectTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] init];
    btn.x = 100;
    btn.y = 100;
    btn.width = 80;
    btn.height = 20;
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    NSLog(@"%f", btn.left);
    
    UIImage *image = [UIImage imageWithColor:[UIColor greenColor]];
    UIImageView *imageVeiw = [[UIImageView alloc] init];
    imageVeiw.image = image;
    imageVeiw.frame = CGRectMake(10, 10, 30, 30);
    [self.view addSubview:imageVeiw];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
