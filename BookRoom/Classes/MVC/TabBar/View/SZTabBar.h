//
//  SZTabBar.h
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/19.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SZTabBar;

@protocol SZTabBarDelegate <NSObject>

@optional
- (void)tabBar:(SZTabBar *)tabBar didSelectedButtonFrom:(int)from to:(int)to;

@end

@interface SZTabBar : UIView

- (void)addTabBarButtonWithItem:(UITabBarItem *)item;

@property (nonatomic, weak) id<SZTabBarDelegate> delegate;

@end
