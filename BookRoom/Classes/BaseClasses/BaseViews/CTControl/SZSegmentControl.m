//
//  BCSegmentControl.m
//  BarCode
//
//  Created by ghostwasd on 13-4-14.
//  Copyright (c) 2013年 ghostwasd. All rights reserved.
//

#import "SZSegmentControl.h"

@implementation SZSegmentControl



- (void)setButtons:(NSArray *)array
{
    CGRect frame;
    frame.origin.y = _inset.top;
    frame.origin.x = _inset.left;
    frame.size.height = self.bounds.size.height - _inset.top - _inset.bottom;
    frame.size.width = self.bounds.size.width - _inset.left - _inset.right;
    frame.size.width /= array.count;
    
    arrayButtons = [NSMutableArray arrayWithCapacity:array.count];
    
    for (NSInteger i = 0; i < array.count; ++ i)
    {
        NSDictionary *dict = [array objectAtIndex:i];
        UIButton *button = [[UIButton alloc] initWithFrame:frame];
        [button addTarget:self action:@selector(buttonTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
        button.tag = i;

        UIImage *normalBG = [dict objectForKey:@"normalBG"];
        UIImage *selectedBG = [dict objectForKey:@"selectedBG"];
        if (normalBG != nil) [button setBackgroundImage:normalBG forState:UIControlStateNormal];
        if (selectedBG != nil) [button setBackgroundImage:selectedBG forState:UIControlStateSelected];
        
        UIImage *normalImage = [dict objectForKey:@"normalImage"];
        UIImage *selectedImage = [dict objectForKey:@"selectedImage"];
        if (normalImage != nil) [button setImage:normalImage forState:UIControlStateNormal];
        if (selectedImage != nil) [button setImage:selectedImage forState:UIControlStateSelected];
        
        NSString *title = [dict objectForKey:@"title"];
        if (title != nil) [button setTitle:title forState:UIControlStateNormal];
        
        UIFont *font = [dict objectForKey:@"font"];
        if (font != nil) button.titleLabel.font = font;
        
        UIColor *normalColor = [dict objectForKey:@"normalColor"];
        if (normalColor != nil) [button setTitleColor:normalColor forState:UIControlStateNormal];
        
        UIColor *selectedColor = [dict objectForKey:@"selectedColor"];
        if (selectedColor != nil) [button setTitleColor:selectedColor forState:UIControlStateSelected];
        
        button.adjustsImageWhenHighlighted = NO;
        
        [self addSubview:button];
        [arrayButtons addObject:button];
        
        frame.origin.x += frame.size.width;
    }
    
    UIButton *selectedButton = [arrayButtons objectAtIndex:_selectedIndex];
    selectedButton.selected = YES;
}

- (void)setSelectedIndex:(NSInteger)index
{
    UIButton *selectedButton = [arrayButtons objectAtIndex:index];
    [selectedButton sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonTouchUpInside:(UIButton *)button
{
    UIButton *selectedButton = [arrayButtons objectAtIndex:_selectedIndex];
    selectedButton.selected = NO;
    
    if ([_delegate respondsToSelector:@selector(segmentControl:willSelectSegmentAtIndex:)])
    {
        [_delegate segmentControl:self willSelectSegmentAtIndex:_selectedIndex];
    }
    
    button.selected = YES;
    _selectedIndex = button.tag;
    
    if ([_delegate respondsToSelector:@selector(segmentControl:didSelectedSegmentAtIndex:)])
    {
        [_delegate segmentControl:self didSelectedSegmentAtIndex:_selectedIndex];
    }
}

@end
