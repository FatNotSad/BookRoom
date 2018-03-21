//
//  CTLimitLengthField.m
//  HongDouTV
//
//  Created by MinSen on 16/8/31.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "CTLimitLengthField.h"

@implementation CTLimitLengthField

- (void)inputChangeText
{
    [super inputChangeText];
    
    NSString *tex = self.text;
    if (_limitLength == 0) {
        if (tex.length >= 11) self.text = [tex substringToIndex:11];
    }else{
        if (tex.length >= _limitLength) self.text = [tex substringToIndex:_limitLength];
    }
}

@end
