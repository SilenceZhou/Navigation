//
//  BaseVc.m
//  TestNav
//
//  Created by SilenceZhou on 2019/4/11.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import "BaseVc.h"
#import "UIImage+convenien.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface BaseVc ()

@end

@implementation BaseVc

- (void)setIsHiddenNavbarLine:(BOOL)isHiddenNavbarLine {
    
    if (isHiddenNavbarLine) {
        self.fd_njq_navlineColor = [UIColor clearColor];
    }else {
        self.fd_njq_navlineColor = [UIColor colorWithRed:233.0f / 255.0f green:234.0f / 255.0f blue:238.0f / 255.0f alpha:1.0f];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 一开始设置颜色时候就给添加上 ,  后续只要改颜色就好
    self.isHiddenNavbarLine = NO;
    
    
    // TODO: 是否用自定义返回按钮  
    if (self.navigationController.viewControllers.count > 1) {
        
        UIButton *navBackBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        navBackBtn.frame = CGRectMake(0, 0, 60, 40);
        [navBackBtn setTitleColor: [UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:1] forState:UIControlStateNormal];
        [navBackBtn setTitleColor: [UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:0.5] forState:UIControlStateHighlighted];
        [navBackBtn setTitle:@" 返回" forState:UIControlStateNormal];
        // [[UIImage imageNamed:@"nav_back_icon"] imageWithTintColor:[UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:1]]
        [navBackBtn setImage:[UIImage imageNamed:@"nav_back_icon"] forState:UIControlStateNormal];
        [navBackBtn setImage:[[UIImage imageNamed:@"nav_back_icon"] imageWithTintColor:[UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:0.5]]
                    forState:UIControlStateHighlighted];
        
        [navBackBtn addTarget:self action:@selector(navBackBtnClick) forControlEvents:UIControlEventTouchUpInside];
        
        navBackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:navBackBtn];
    }
    
    
}



- (void)navBackBtnClick
{
    [self.navigationController popViewControllerAnimated:YES];
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
