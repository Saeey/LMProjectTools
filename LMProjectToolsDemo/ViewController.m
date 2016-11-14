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
    
    
    NSMutableDictionary *maDict = [NSMutableDictionary dictionary];
    [maDict lm_safeSetObject:@"aaaa" forKey:@"aaa"];
    [maDict lm_safeSetObject:@"aaaa" forKey:@"bbb"];
    [maDict lm_safeSetObject:@"aaaa" forKey:@"ccc"];
    
    NSMutableDictionary *mbDict = [NSMutableDictionary dictionary];
    [mbDict lm_safeSetObject:maDict forKey:@"aaa"];
    [mbDict lm_safeSetObject:nil forKey:@"bbb"];
    [mbDict lm_safeSetObject:maDict forKey:@"ccc"];
    
    [mbDict JSONLog];
    
    NSMutableArray *array = [NSMutableArray array];
    [array lm_safeAddObject:nil];
    [array lm_safeAddObject:mbDict];
    [array lm_safeAddObject:@"a11"];
    [array lm_safeAddObject:@"a1asd"];
    [array lm_safeAddObject:@"a1ad"];
    [array lm_safeAddObject:@"a1sadas"];
    [array JSONLog];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
