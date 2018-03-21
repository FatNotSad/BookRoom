//
//  OnlyNumberField.m
//  IntelligentPiano
//
//  Created by 罗刚 on 16/12/22.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#import "OnlyNumberField.h"

@implementation OnlyNumberField

- (void)inputChangeText{
    [super inputChangeText];
    
    NSString *tex = self.text;
    unichar lastChar = [tex characterAtIndex:tex.length];
    if (lastChar < 9 && lastChar > 0) {
        NSMutableString *texM = [NSMutableString stringWithString:tex];
        [texM deleteCharactersInRange:NSMakeRange(tex.length, 1)];
        self.text = texM.copy;
    }
}

@end
