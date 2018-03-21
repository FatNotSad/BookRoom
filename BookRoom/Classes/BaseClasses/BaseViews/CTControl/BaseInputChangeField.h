//
//  BaseInputChangeField.h
//  HongDouTV
//
//  Created by MinSen on 16/8/31.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BaseInputChangeField;
@protocol BaseInputChangeFieldDelegate <NSObject>
@optional
- (void)baseInputChangeField:(BaseInputChangeField *)textfield changeText:(NSString *)text;
@end

@interface BaseInputChangeField : UITextField

@property (assign, nonatomic) id<BaseInputChangeFieldDelegate>    changeDelegate;

// 键盘输入的内容
- (void)inputChangeText;
@end
