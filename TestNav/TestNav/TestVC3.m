//
//  TestVC3.m
//  TestNav
//
//  Created by zhouyun on 2019/4/10.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import "TestVC3.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface TestVC3 ()

@end

@implementation TestVC3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"第三页";
    self.fd_njq_navTitleFont = [UIFont systemFontOfSize:20];
    self.fd_njq_navTitleColor = [UIColor blueColor];
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
