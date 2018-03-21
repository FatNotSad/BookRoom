//
//  UIView+Addition.h
//  YJYHApp
//
//  Created by MinSen on 16/7/6.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

// 回调VoidBlock
typedef void(^VoidBlock)();

// 回调一个bool值
typedef void(^BoolBlock)(BOOL result);

// 回调按钮的Block方法(单个按钮)
typedef void(^BtnBlock)();

// 回调按钮的Block方法(单个按钮)
typedef void(^SelBlock)(NSInteger index);

// 回调字符串Block
typedef void(^TextBlock)(NSString * text);

// 回调一个对象
typedef void(^ObjectBlock)(id obj);

// 回调一个视图
typedef void(^ViewBlock)(UIView *view);

// 回调一个可变数组
typedef void(^MutableArrayBlock)(NSMutableArray *arrayM);

// 回调一个不可变数组
typedef void(^ArrayBlock)(NSArray *array);

// 回调一个日期
typedef void(^DateBlock)(NSDate *date);

// 设置圆角
- (void)setRounded:(float)rounded;

// 加载xib
- (id)loadNib:(NSString *)nibName;

// 获取该view所在的ViewController
- (UIViewController *)viewController;

// 获取具体的那个class的响应者
- (id)superObjectName:(NSString *)name;

// 获取文本高度
+ (CGFloat)contextHeightWithString:(NSString *)string
                        fixedWdith:(CGFloat)width
                          fontSize:(CGFloat)fontSize;

// 获取文本宽度
+ (CGFloat)contextWidthWithString:(NSString *)string
                      fixedHeight:(CGFloat)height
                         fontSize:(CGFloat)fontSize;

// 添加约束
- (void)contraintAdd_VFL:(NSString *)vflStr dictionary:(NSDictionary *)dictionary;
- (void)contraintRepair_VFL:(NSString *)vflStr dictionary:(NSDictionary *)dictionary;

/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;
@end
