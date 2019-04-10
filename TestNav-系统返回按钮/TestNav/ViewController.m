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
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewController:[TestVC2 new] animated:YES];
}

@end
