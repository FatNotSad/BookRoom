//
//  JCTextView.m
//  SinaWeibo
//
//  Created by Ibokan on 15-4-23.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import "JCTextView.h"

@interface JCTextView ()
@property(nonatomic,weak)UILabel * placehoderLabel;
@end

@implementation JCTextView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        
        //添加一个现实提醒文字的label
        UILabel * placehoderLabel = [[UILabel alloc]init];
        placehoderLabel.numberOfLines = 0;
        placehoderLabel.font = [UIFont systemFontOfSize:12.0f];
        placehoderLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:placehoderLabel];
        self.placehoderLabel = placehoderLabel;
        
        //设置默认的占位文字颜色
        self.placehoderColor = [UIColor lightGrayColor];
        self.font = [UIFont systemFontOfSize:16];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textBeginEding) name:UITextViewTextDidBeginEditingNotification object:self];
        
    }
    return self;
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

#pragma mark - 监听文字改变
-(void)textDidChange
{
    self.placehoderLabel.hidden = (self.text.length !=0);
}

- (void)textBeginEding
{
    [self becomeFirstResponder];
}

#pragma mark - 公共方法

-(void)setText:(NSString *)text
{
    [super setText:text];
    [self textDidChange];
}

- (void)setPlacehoderFontSize:(float)placehoderFontSize
{
    _placehoderFontSize = placehoderFontSize;
    _placehoderLabel.font = [UIFont systemFontOfSize:_placehoderFontSize];
}

-(void)setPlacehoder:(NSString *)placehoder
{
    _placehoder = [placehoder copy];
    
    //设置文字
    self.placehoderLabel.text = placehoder;
    
    //重新计算子控件的fame
    [self setNeedsLayout];
}

-(void)setPlacehoderColor:(UIColor *)placehoderColor
{
    _placehoderColor = placehoderColor;
    //设置颜色
    self.placehoderLabel.textColor = placehoderColor;
}

-(void)setFont:(UIFont *)font
{
    [super setFont:font];
    self.placehoderLabel.font = font;
    
    [self setNeedsLayout];
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.placehoderLabel.top = 8;
    self.placehoderLabel.left = 5;
    self.placehoderLabel.width = self.width - 2 * self.placehoderLabel.left;
    
    CGSize maxSize = CGSizeMake(self.placehoderLabel.width, MAXFLOAT);
//    CGSize placehoderSize = [self.placehoder sizeWithFont:self.placehoderLabel.font constrainedToSize:maxSize];
    
    CGFloat height = [UIView contextHeightWithString:self.placehoder fixedWdith:maxSize.width fontSize:self.placehoderLabel.font.pointSize];
    self.placehoderLabel.height = height;
    
}





@end
