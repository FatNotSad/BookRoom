//
//  BaseNavigationController.m
//  IntelligentPiano
//
//  Created by 罗刚 on 16/11/22.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#import "BaseNavigationController.h"

@interface BaseNavigationController ()

@end

@implementation BaseNavigationController

- (void)viewDidLoad{
    [super viewDidLoad];
    
//    [self removeMaskTop];
}

// 当类第一次使用的时候会调用 - 当第一次使用的时候，做一些对象或者属性的初始化工作
+ (void)initialize{
    // 判断
    if (self == [BaseNavigationController class]) {
        // 获得外观
        UINavigationBar *navBar = [UINavigationBar appearance];
        // 设置背景颜色
        [navBar setBarTintColor:BRColorGreen];
        navBar.translucent = NO;
//        // ******改变字体大小颜色等********
        NSDictionary *att = @{NSFontAttributeName : IS_IPAD?SYSTEMFONT(22):SYSTEMFONT(18),
                              NSForegroundColorAttributeName : [UIColor whiteColor]};
        
        [navBar setTitleTextAttributes:att];
//        
//        // 获得item外观
        UIBarButtonItem *item = [UIBarButtonItem appearance];
        NSDictionary *att1 = @{NSFontAttributeName : [UIFont systemFontOfSize:17.f],
                               NSForegroundColorAttributeName : [UIColor whiteColor]};
        [item setTitleTextAttributes:att1 forState:UIControlStateNormal];
//
//        // 设置返回按钮
//        // 方式1：使用自己的图片替换原来的返回图片
//        // navBar.backIndicatorImage = [UIImage imageNamed:@"NavBack"];
//        // navBar.backIndicatorTransitionMaskImage = [UIImage imageNamed:@"NavBack"];
//        
        // 方式2：设置返回图片颜色
        navBar.tintColor = [UIColor whiteColor];
        
        
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [self resignFirstResponder];
    
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:nil action:nil];
    [super pushViewController:viewController animated:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
