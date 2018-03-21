//
//  UIViewController+Extension.h
//  BookRoom
//
//  Created by 罗刚 on 2018/3/5.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)
/*!
 @abstract      退出键盘
 @discussion    退出当前视图编辑状态，退出键盘模式
 */
- (void)resignFirstResponder;

@end
