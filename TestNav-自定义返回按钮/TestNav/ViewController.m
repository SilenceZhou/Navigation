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
    self.fd_njq_navTitleFont = [UIFont systemFontOfSize:17];
    self.fd_njq_navTitleColor = [UIColor blackColor];
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor blueColor];
    btn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName : self.fd_njq_navTitleFont, NSForegroundColorAttributeName : self.fd_njq_navTitleColor}];
//    
//    
//    UIView *superView = self.navigationController.navigationBar.superview;
//    [self.navigationController.navigationBar removeFromSuperview];
//    [superView addSubview:self.navigationController.navigationBar];
//}

- (void)btnClick
{
//    [self.fd_titleTextAttributes_after setValue:fd_njq_navTitleFont forKey:NSFontAttributeName];
//    [self.fd_titleTextAttributes_after setValue:fd_njq_navTitleColor forKey:NSForegroundColorAttributeName];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName : self.fd_njq_navTitleFont, NSForegroundColorAttributeName : self.fd_njq_navTitleColor}];
    UIView *superView = self.navigationController.navigationBar.superview;
    [self.navigationController.navigationBar removeFromSuperview];
    [superView addSubview:self.navigationController.navigationBar];
    NSLog(@"%@", self.navigationController.navigationBar.superview);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[TestVC2 new] animated:YES];
}

@end
