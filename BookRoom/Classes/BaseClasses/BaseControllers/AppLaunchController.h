//
//  AppLaunchController.h
//  HongDouTV
//
//  Created by MinSen on 16/10/9.
//  Copyright © 2016年 MinSen. All rights reserved.
//


#import <UIKit/UIKit.h>

/*!
 @abstract      切换到主页
 */
typedef void(^clickActionBlock)(void);

/**
 @discussion    App首次启动时的轮播图控制器
 */
@interface AppLaunchController : UIViewController

/*!
 @abstract      通过轮播图初始化方法
 
 @param         imgs             轮播图名称数组
 @param         actionBlock      滚动到最后一页的点击操作，进入首页还是登录页
 */
+(instancetype)allocWithImgs:(NSArray *)imgs clickAction:(clickActionBlock)actionBlock;
@end
