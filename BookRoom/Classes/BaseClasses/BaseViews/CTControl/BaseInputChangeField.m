//
//  BaseInputChangeField.m
//  HongDouTV
//
//  Created by MinSen on 16/8/31.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "BaseInputChangeField.h"

@implementation BaseInputChangeField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initView];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self initView];
}

- (void)initView
{
    [self addTarget:self action:@selector(inputChangeText) forControlEvents:UIControlEventEditingChanged];
}

- (void)inputChangeText
{
    if (_changeDelegate) {
        [self.changeDelegate baseInputChangeField:self changeText:self.text];
    }
}

@end
