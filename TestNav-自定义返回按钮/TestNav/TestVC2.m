//
//  TestVC2.m
//  TestNav
//
//  Created by zhouyun on 2019/4/10.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import "TestVC2.h"
#import "TestVC3.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface TestVC2 ()

@end

@implementation TestVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"第二页";
    self.fd_njq_navTitleFont = [UIFont systemFontOfSize:10];
    self.fd_njq_navTitleColor = [UIColor brownColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor blueColor];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnClick
{
    [self.navigationController pushViewController:[TestVC3 new] animated:YES];
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
