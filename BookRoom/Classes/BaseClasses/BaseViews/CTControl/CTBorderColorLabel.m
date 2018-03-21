//
//  CTBorderColorLabel.m
//  HongDouTV
//
//  Created by MinSen on 16/10/10.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "CTBorderColorLabel.h"

@implementation CTBorderColorLabel

// 字体描边
- (void)drawTextInRect:(CGRect)rect {
    [super drawTextInRect:rect];
    
    CGSize shadowOffset = self.shadowOffset;
    UIColor *textColor = self.textColor;
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(c, 1);
    CGContextSetLineJoin(c, kCGLineJoinRound);
    
    CGContextSetTextDrawingMode(c, kCGTextStroke);
    self.textColor = RGB_16_COLOR(@"#c42fea");      // 字体描边颜色
    [super drawTextInRect:rect];
    
    CGContextSetTextDrawingMode(c, kCGTextFill);
    self.textColor = textColor;
    self.shadowOffset = CGSizeMake(0, 0);
    [super drawTextInRect:rect];
    
    self.shadowOffset = shadowOffset;
}

@end
