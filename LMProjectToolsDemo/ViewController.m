//
//  ViewController.m
//  LMProjectToolsDemo
//
//  Created by 流氓 on 16/10/24.
//  Copyright © 2016年 流氓. All rights reserved.
//

#import "ViewController.h"
#import "LMProjectTools.h"
#import "TestCell1.h"
#import "TestHead1.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     更新pod到远程
     pod trunk push LMProjectTools.podspec
     */
    UIButton *btn   = [[UIButton alloc] init];
    btn.x           = 100;
    btn.y           = 100;
    btn.width       = 80;
    btn.height      = 20;
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    NSLog(@"%f", btn.left);
    
    NSURL *url = [@"www.baidu.com" URLValue];
    NSLog(@"%@", url);
    UIImage *image = [UIImage imageWithColor:[UIColor greenColor]];
    UIImageView *imageVeiw = [[UIImageView alloc] init];
    imageVeiw.image = image;
    imageVeiw.frame = CGRectMake(10, 10, 30, 30);
    [self.view addSubview:imageVeiw];
    
    
    NSMutableDictionary *maDict = [NSMutableDictionary dictionary];
    [maDict lm_safeSetObject:@"aaaa" forKey:@"aaa"];
    [maDict lm_safeSetObject:@"aaaa" forKey:@"bbb"];
    [maDict lm_safeSetObject:nil forKey:@"ccc"];
    [maDict setObject:[NSNull null] forKey:@"asdsadas"];
    
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
    
    NSLog(@"是否是手机号？ %d", [@"15012312312" isPhoneNumber]);
    NSLog(@"是否是身份证号？ %d", [@"123123199912121111" isUserIdCard]);
    [self addTableView];
}

- (void)addTableView {
    UITableView *tableView = [[UITableView alloc] init];
    tableView.frame = CGRectMake(0, 0, 200, 300);
    [self.view addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
//    [tableView registerNib:[UINib nibWithNibName:@"TestCell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"TestCell1Identifier"];
    [tableView lm_registerCellNib:[TestCell1 class]];
//    [tableView registerNib:[UINib nibWithNibName:@"TestHead1" bundle:[NSBundle mainBundle]] forHeaderFooterViewReuseIdentifier:@"TestHead1Identifier"];
    [tableView lm_registerHeaderFooterNib:[TestHead1 class]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    TestCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell1Identifier"];
    TestCell1 *cell = [tableView lm_dequeueReusableCellWithClass:[TestCell1 class]];
    cell.titleLabel.text = [NSString stringWithFormat:@"hangshu = %ld", (long)indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 20;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TestHead1 *head = [tableView lm_dequeueReusableHeaderFooterViewWithClass:[TestHead1 class]];
    head.titleLabel.text = [NSString stringWithFormat:@"haha 我是第 %ld 组", (long)section];
    return head;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
