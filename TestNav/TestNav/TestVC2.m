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
#import "UIColor+convenient.h"
@interface TestVC2 ()

@end

@implementation TestVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"第二页";
    
    self.fd_njq_navTitleFont = [UIFont systemFontOfSize:26];
    self.fd_njq_navTitleColor = [UIColor brownColor];
    
    // 不要用这种写法
    // self.fd_njq_navbgColor = [[UIColor greenColor] colorWithAlphaComponent:0.1];

    // 设置导航背景色
    self.fd_njq_navbgColor = [UIColor colorWithHexString:@"#98F5FF" alpha:0.8];
    
    // 设置导航分割线的颜色
        self.fd_njq_navlineColor = [UIColor redColor];
    // 隐藏分割线
    // self.isHiddenNavbarLine = YES;
    
    // iphonex系列状态栏增加20 （原来20 ， 现在 44） -- 适配的时候注意这一点
    // NavigationBarHeight 44 还是不变
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    
    [btn setTitle:@"点击跳转下一个页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.4];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
    [self.navigationController pushViewController:[TestVC3 new] animated:YES];
}

@end
