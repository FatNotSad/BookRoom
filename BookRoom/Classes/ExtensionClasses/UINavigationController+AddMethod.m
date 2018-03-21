//
//  UINavigationController+AddMethod.m
//  IntelligentPiano
//
//  Created by MinSen on 2017/8/18.
//  Copyright © 2017年 罗刚. All rights reserved.
//

#import "UINavigationController+AddMethod.h"

@implementation UINavigationController (AddMethod)

- (void)removeMaskTop{
    self.navigationBar.translucent = NO;  // 关闭模糊层
    // 导航背景色
//    UIImage *backgroundImage = [UIColor imageForColor:IPColorGreen];
    //去除导航栏下方的横线
    [self.navigationBar setBackgroundImage:backgroundImage
                            forBarPosition:UIBarPositionAny
                                barMetrics:UIBarMetricsDefault];
    [self.navigationBar setShadowImage:[UIImage new]];
}

@end
