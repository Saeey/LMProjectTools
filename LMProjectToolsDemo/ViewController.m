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
#import "LMLoadXibViewController.h"

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
    btn.height      = 80;
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    NSLog(@"%f", btn.left);
    [btn addTarget:self action:[self lm_selectorFromBlock:^{
        NSLog(@"");
    }] forControlEvents:UIControlEventTouchUpInside];
    
    
    [btn setTitle:@"adfnhisfhbhsbdbsdbfdsdfjs" forState:UIControlStateNormal];
    
    btn.size = CGSizeGetRightHeight(btn.titleLabel.text, btn.titleLabel.font, 100);
//    btn.size = CGSizeGetRightWidth(btn.titleLabel.text, btn.titleLabel.font, 1000);
    

    
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
    tableView.tableHeaderView = [[UIView alloc] init];
    tableView.frame = CGRectMake(0, 64, self.view.width, self.view.height - 64);
    [self.view addSubview:tableView];
    
    tableView.delegate = self;
    tableView.dataSource = self;
    // old
//    [tableView registerNib:[UINib nibWithNibName:@"TestCell1" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"TestCell1Identifier"];
//    [tableView registerNib:[UINib nibWithNibName:@"TestHead1" bundle:[NSBundle mainBundle]] forHeaderFooterViewReuseIdentifier:@"TestHead1Identifier"];
    
    // new
    [tableView lm_registerCellNib:[TestCell1 class]];
    [tableView lm_registerHeaderFooterNib:[TestHead1 class]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // old
//    TestCell1 *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell1Identifier"];
    
    // new
    TestCell1 *cell = [tableView lm_dequeueReusableCellWithClass:[TestCell1 class]];
    // 不想复用的时候
//    TestCell1 *cell = [[TestCell1 alloc] init];
    
    cell.titleLabel.text = [NSString stringWithFormat:@"哈哈我是第%ld行", (long)indexPath.row];
    switch (indexPath.row) {
        case 0:
            cell.titleLabel.text = @"去看看LMAutoXibView";
            break;
            
        default:
            break;
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    TestHead1 *head = [tableView lm_dequeueReusableHeaderFooterViewWithClass:[TestHead1 class]];
    head.titleLabel.text = [NSString stringWithFormat:@"haha 我是第 %ld 组", (long)section];
    return head;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView cellForRowAtIndexPath:indexPath].selected = NO;
    switch (indexPath.row) {
        case 0:{
            LMLoadXibViewController *loadXibVC = [[LMLoadXibViewController alloc] init];
            [self.navigationController pushViewController:loadXibVC animated:YES];
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
