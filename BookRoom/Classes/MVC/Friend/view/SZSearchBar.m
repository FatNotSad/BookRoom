//
//  SZSearchBar.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZSearchBar.h"
@interface SZSearchBar()
@end
@implementation SZSearchBar
+ (instancetype)searchBar
{
    return [[self alloc] init];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 背景
//        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        self.backgroundColor = [UIColor whiteColor];
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        // 左边的放大镜图标
        UIImageView *iconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"common_search_icon_search"]];
        iconView.contentMode = UIViewContentModeCenter;
        self.leftView = iconView;
        self.leftViewMode = UITextFieldViewModeAlways;
        
//        UIButton *searchBtn = [[UIButton alloc]init];
//        searchBtn.frame = CGRectMake(Main_Screen_Width-48, 20, 28, 12);
//        searchBtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:14];
//        [searchBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//        [searchBtn setTitle:@"搜索" forState:UIControlStateNormal];
//        self.rightView = searchBtn;
//        self.rightViewMode = UITextFieldViewModeAlways;
        // 字体
        self.font = [UIFont systemFontOfSize:13];
        
        // 右边的清除按钮
        self.clearButtonMode = UITextFieldViewModeAlways;
        
        // 设置提醒文字
        NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
        attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
        self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"搜索" attributes:attrs];
        
        // 设置键盘右下角按钮的样式
        self.returnKeyType = UIReturnKeySearch;
        self.enablesReturnKeyAutomatically = YES;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 设置左边图标的frame
    self.leftView.frame = CGRectMake(0, 0, 30, self.frame.size.height);
}
-(void)drawPlaceholderInRect:(CGRect)rect{
    [super drawPlaceholderInRect:CGRectMake(10, self.height * 0.5 - 7, 0, 0)];
}
@end
