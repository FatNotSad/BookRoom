//
//  CTTapBtn.m
//  HongDouTV
//
//  Created by MinSen on 16/8/18.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "CTTapBtn.h"

@implementation CTTapBtn

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBtn)];
    [self addGestureRecognizer:tap];
    
    self.backgroundColor = [UIColor clearColor];
}

- (void)tapBtn
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(tapBtnAction:)]) {
        [self.delegate tapBtnAction:self];
    }
}

@end
