//
//  UIView+Addition.m
//  YJYHApp
//
//  Created by MinSen on 16/7/6.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "UIView+Addition.h"

@implementation UIView (Addition)

- (id)loadNib:(NSString *)nibName
{
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] firstObject];
    return view;
    
}

- (void)setRounded:(float)rounded
{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = rounded;
}

- (UIViewController *)viewController
{
    // 下一个响应者
    UIResponder *next = [self nextResponder];
    
    do {
        if ([next isKindOfClass:[UIViewController class]])
        {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
        
    } while (next != nil);
    
    return nil;
}

- (id)superObjectName:(NSString *)name
{
    Class classTemp = [NSClassFromString(name) class];
    
    // 下一个响应者
    UIResponder *next = [self nextResponder];
    
    do {
        if ([next isKindOfClass:classTemp])
        {
            return next;
        }
        next = [next nextResponder];
        
    } while (next != nil);
    
    return nil;
}

+ (CGFloat)contextHeightWithString:(NSString *)string
                        fixedWdith:(CGFloat)width
                          fontSize:(CGFloat)fontSize
{
    CGFloat height = 0.0;
    CGSize  size  = CGSizeMake(width, MAXFLOAT);
    CGSize  contentSize;
    if (![string isEqual:[NSNull null]] && string.length > 0) {
#ifdef IS_IOS_7
        NSDictionary  *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil];
        contentSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dictionary context:nil].size;
#else
        contentSize = [string sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:size lineBreakMode:NSLineBreakByWordWrapping];
#endif
        height = contentSize.height;
    }
    return height;
}

+ (CGFloat)contextWidthWithString:(NSString *)string
                      fixedHeight:(CGFloat)height
                         fontSize:(CGFloat)fontSize
{
    CGFloat width = 0.0;
    CGSize  size  = CGSizeMake(MAXFLOAT, height);
    CGSize  contentSize;
    if (![string isEqual:[NSNull null]] && string.length > 0) {
#ifdef IS_IOS_7
        NSDictionary  *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont systemFontOfSize:fontSize],NSFontAttributeName, nil];
        contentSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dictionary context:nil].size;
#else
        contentSize = [string sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:size lineBreakMode:NSLineBreakByWordWrapping];
#endif
        width = contentSize.width;
    }
    return width;
}

// 添加约束
- (void)contraintAdd_VFL:(NSString *)vflStr dictionary:(NSDictionary *)dictionary
{
    NSArray *array = [NSLayoutConstraint constraintsWithVisualFormat:vflStr options:0 metrics:nil views:dictionary];
    [self addConstraints:array];
}

- (void)contraintRepair_VFL:(NSString *)vflStr dictionary:(NSDictionary *)dictionary
{
    NSArray *array = [NSLayoutConstraint constraintsWithVisualFormat:vflStr options:0 metrics:nil views:dictionary];
    [NSLayoutConstraint activateConstraints:array];
}

/*!
 * @brief 把格式化的JSON格式的字符串转换成字典
 * @param jsonString JSON格式的字符串
 * @return 返回字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString {
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData
                                                        options:NSJSONReadingMutableContainers
                                                          error:&err];
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return dic;
}

@end
