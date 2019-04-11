//
//  ViewController.m
//  TestNav
//
//  Created by zhouyun on 2019/4/10.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import "ViewController.h"
#import "TestVC2.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"第一页";
    self.view.backgroundColor = [UIColor whiteColor];
    self.fd_njq_navTitleFont = [UIFont systemFontOfSize:12];
    self.fd_njq_navTitleColor = [UIColor blackColor];
    
    //充值导航
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    [btn setTitle:@"点击跳转下一个页面" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.4];
    [self.view addSubview:btn];

    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}



- (void)btnClick
{
////    [self.fd_titleTextAttributes_after setValue:fd_njq_navTitleFont forKey:NSFontAttributeName];
////    [self.fd_titleTextAttributes_after setValue:fd_njq_navTitleColor forKey:NSForegroundColorAttributeName];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName : self.fd_njq_navTitleFont, NSForegroundColorAttributeName : self.fd_njq_navTitleColor}];
//    UIView *superView = self.navigationController.navigationBar.superview;
//    [self.navigationController.navigationBar removeFromSuperview];
//    [superView addSubview:self.navigationController.navigationBar];
//    NSLog(@"%@", self.navigationController.navigationBar.superview);
//}
//
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
    [self.navigationController pushViewController:[TestVC2 new] animated:YES];
}

@end
