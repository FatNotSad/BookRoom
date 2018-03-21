//
//  SZTabBarButton.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/19.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZTabBarButton.h"

@implementation SZTabBarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 图标居中
        self.imageView.contentMode = UIViewContentModeCenter;
        // 文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        // 字体大小
        self.titleLabel.font = [UIFont systemFontOfSize:11];
//        self.tintColor = [UIColor redColor];
        // 文字颜色
        [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
        
        if (!IS_IOS_7) { // 非iOS7下,设置按钮选中时的背景
            [self setBackgroundImage:[UIImage imageNamed:@"tabbar_slider"] forState:UIControlStateSelected];
        }
        
        // 添加一个提醒数字按钮
//        HeBadgeButton *badgeButton = [[HeBadgeButton alloc] init];
//        badgeButton.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleBottomMargin;
//        [self addSubview:badgeButton];
//        self.badgeButton = badgeButton;
    }
    return self;
}
// 重写去掉高亮状态
- (void)setHighlighted:(BOOL)highlighted {}
// 内部图片的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW = contentRect.size.width;
    CGFloat imageH = contentRect.size.height * 0.6;
    return CGRectMake(0, 0, imageW, imageH);
}
// 设置item
- (void)setItem:(UITabBarItem *)item
{
    _item = item;
    
    // KVO 监听属性改变
//    [item addObserver:self forKeyPath:@"badgeValue" options:0 context:nil];
    [item addObserver:self forKeyPath:@"title" options:0 context:nil];
    [item addObserver:self forKeyPath:@"image" options:0 context:nil];
    [item addObserver:self forKeyPath:@"selectedImage" options:0 context:nil];
    
    [self observeValueForKeyPath:nil ofObject:nil change:nil context:nil];
}

- (void)dealloc
{
//    [self.item removeObserver:self forKeyPath:@"badgeValue"];
    [self.item removeObserver:self forKeyPath:@"title"];
    [self.item removeObserver:self forKeyPath:@"image"];
    [self.item removeObserver:self forKeyPath:@"selectedImage"];
}
/**
 *  监听到某个对象的属性改变了,就会调用
 *
 *  @param keyPath 属性名
 *  @param object  哪个对象的属性被改变
 *  @param change  属性发生的改变
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    // 设置文字
    [self setTitle:self.item.title forState:UIControlStateSelected];
    [self setTitle:self.item.title forState:UIControlStateNormal];
    
    // 设置图片
    [self setImage:self.item.image forState:UIControlStateNormal];
    [self setImage:self.item.selectedImage forState:UIControlStateSelected];
    
//    [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
//    [self setTitleColor:[UIColor greenColor] forState:UIControlStateSelected];
    // 设置提醒数字
//    self.badgeButton.badgeValue = self.item.badgeValue;
    
    // 设置提醒数字的位置
//    CGFloat badgeY = 5;
//    CGFloat badgeX = self.frame.size.width - self.badgeButton.frame.size.width - 10;
//    CGRect badgeF = self.badgeButton.frame;
//    badgeF.origin.x = badgeX;
//    badgeF.origin.y = badgeY;
//    self.badgeButton.frame = badgeF;
}
@end
