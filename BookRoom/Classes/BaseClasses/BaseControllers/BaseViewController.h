//
//  BaseViewController.h
//  BookRoom
//
//  Created by 罗刚 on 2018/3/5.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>

#define NavRootCtr (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController

@interface BaseViewController : UIViewController
@property (nonatomic, weak) UIView   * notView;     // 默认图片（无数据）
@end
