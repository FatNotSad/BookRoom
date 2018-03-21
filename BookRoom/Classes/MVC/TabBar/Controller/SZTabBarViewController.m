//
//  SZTabBarViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/19.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZTabBarViewController.h"
#import "SZTabBar.h"
#import "BaseNavigationController.h"
#import "BRLoginViewController.h"
#import "SZHomeViewController.h"
#import "SZMessageViewController.h"
#import "SZFriendViewController.h"
#import "SZCourseViewController.h"
#import "SZMeViewController.h"


@interface SZTabBarViewController ()<SZTabBarDelegate>

/**
 *  自定义的tabbar
 */
@property (nonatomic, weak) SZTabBar *customTabBar;
@end

@implementation SZTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 初始化tabbar
    [self setupTabbar];
    // 初始化所有的子控制器
    [self setupAllChildViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 删除系统自动生成的UITabBarButton
    for (UIView *child in self.tabBar.subviews) {
        if ([child isKindOfClass:[UIControl class]]) {
            [child removeFromSuperview];
        }
    }
}
/**
 *  初始化tabbar
 */
- (void)setupTabbar
{
    SZTabBar *customTabBar = [[SZTabBar alloc] init];
    customTabBar.frame = self.tabBar.bounds;
    customTabBar.delegate = self;
    [self.tabBar addSubview:customTabBar];
    self.customTabBar = customTabBar;
}

/**
 *  监听tabbar按钮的改变
 *  @param from   原来选中的位置
 *  @param to     最新选中的位置
 */
- (void)tabBar:(SZTabBar *)tabBar didSelectedButtonFrom:(int)from to:(int)to
{
    self.selectedIndex = to;
}
- (void)setupAllChildViewControllers
{
//    UIStoryboard *story = [UIStoryboard storyboardWithName:SBNameLogin bundle:nil];
//    self.window.rootViewController = [story instantiateInitialViewController];
//    BRLoginViewController *login = [[BRLoginViewController alloc] init];
//
//    [self setupChildViewController:login title:@"我" imageName:@"common_tab_home_n" selectedImageName:@"common_tab_home_s"];
    // 2.我
    
    SZHomeViewController *home = [[SZHomeViewController alloc] init];
    [self setupChildViewController:home title:@"首页" imageName:@"common_tab_home_n" selectedImageName:@"common_tab_home_s"];
    
    SZFriendViewController *friend = [[SZFriendViewController alloc] init];
    [self setupChildViewController:friend title:@"书友会" imageName:@"common_tab_syh_n" selectedImageName:@"common_tab_syh_s"];
    
    SZCourseViewController *course = [[SZCourseViewController alloc] init];
    [self setupChildViewController:course title:@"课程" imageName:@"common_tab_kc_n" selectedImageName:@"common_tab_kc_s"];
    
    SZMessageViewController *message = [[SZMessageViewController alloc] init];
    [self setupChildViewController:message title:@"消息" imageName:@"common_tab_message_n" selectedImageName:@"common_tab_message_s"];
    
    SZMeViewController *me = [[SZMeViewController alloc] init];
    [self setupChildViewController:me title:@"我" imageName:@"common_tab_mine_n" selectedImageName:@"common_tab_mine_s"];
}
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 1.设置控制器的属性
    childVc.title = title;
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    
    if (IS_IOS_7) {
        childVc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    } else {
        childVc.tabBarItem.selectedImage = selectedImage;
    }
//    childVc.tabBarItem.selectedImage = selectedImage;
    
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:BRColorGreen forKey:NSForegroundColorAttributeName];
    [childVc.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];
    // 2.包装一个导航控制器
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
    // 3.添加tabbar内部的按钮
    [self.customTabBar addTabBarButtonWithItem:childVc.tabBarItem];
}

@end
