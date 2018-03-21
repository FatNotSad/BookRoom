//
//  UIViewController+Extension.m
//  BookRoom
//
//  Created by 罗刚 on 2018/3/5.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "UIViewController+Extension.h"

@implementation UIViewController (Extension)
- (void)resignFirstResponder{
    [[self findFirstResponderBeneathView:self.view]resignFirstResponder];
}

- (UIView*)findFirstResponderBeneathView:(UIView*)view
{
    // Search recursively for first responder
    for ( UIView *childView in view.subviews ) {
        if ( [childView respondsToSelector:@selector(isFirstResponder)] && [childView isFirstResponder] )
            return childView;
        UIView *result = [self findFirstResponderBeneathView:childView];
        if ( result )
            return result;
    }
    return nil;
}


@end
