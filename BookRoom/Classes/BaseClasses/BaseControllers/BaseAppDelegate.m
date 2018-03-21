//
//  BaseAppDelegate.m
//  BookRoom
//
//  Created by 罗刚 on 2018/3/8.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "BaseAppDelegate.h"

@implementation BaseAppDelegate

+(id)shareInstance{
    return [UIApplication sharedApplication].delegate;
}

@end
