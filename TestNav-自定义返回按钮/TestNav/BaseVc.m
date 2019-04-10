//
//  BaseVc.m
//  TestNav
//
//  Created by SilenceZhou on 2019/4/11.
//  Copyright © 2019 zhouyun. All rights reserved.
//

#import "BaseVc.h"

@interface BaseVc ()

@end

@implementation BaseVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    if (self.navigationController.viewControllers.count > 1) {
        
        UIButton *navBackBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        navBackBtn.frame = CGRectMake(0, 0, 60, 40);
        [navBackBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [navBackBtn setTitle:@" 返回" forState:UIControlStateNormal];
        [navBackBtn setImage:[UIImage imageNamed:@"nav_back_icon"] forState:UIControlStateNormal];
        
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
