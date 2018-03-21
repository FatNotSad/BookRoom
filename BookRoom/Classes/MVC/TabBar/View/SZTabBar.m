//
//  SZTabBar.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/19.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZTabBar.h"
#import "SZTabBarButton.h"

@interface SZTabBar()
@property (nonatomic, strong) NSMutableArray *tabBarButtons;

@property (nonatomic, weak) SZTabBarButton *selectedButton;
@end
@implementation SZTabBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        if (!IS_IOS_7) { // 非iOS7下,设置tabbar的背景
        self.backgroundColor = [UIColor whiteColor];
//        }
    }
    return self;
}
- (NSMutableArray *)tabBarButtons
{
    if (_tabBarButtons == nil) {
        _tabBarButtons = [NSMutableArray array];
    }
    return _tabBarButtons;
}
- (void)addTabBarButtonWithItem:(UITabBarItem *)item
{
    // 1.创建按钮
    SZTabBarButton *button = [[SZTabBarButton alloc] init];
    [self addSubview:button];
    // 添加按钮到数组中
    [self.tabBarButtons addObject:button];
    
    // 2.设置数据
    button.item = item;
    
    // 3.监听按钮点击
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    
    // 4.默认选中第0个按钮
    if (self.tabBarButtons.count == 1) {
        [self buttonClick:button];
    }
}

/**
 *  监听按钮点击
 */
- (void)buttonClick:(SZTabBarButton *)button
{
    // 1.通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectedButtonFrom:to:)]) {
        [self.delegate tabBar:self didSelectedButtonFrom:self.selectedButton.tag to:button.tag];
    }
    
    // 2.设置按钮的状态
    self.selectedButton.selected = NO;
    button.selected = YES;
    self.selectedButton = button;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
}
@end
