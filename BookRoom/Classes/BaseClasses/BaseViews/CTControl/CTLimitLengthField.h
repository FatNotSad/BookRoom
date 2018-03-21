//
//  CTLimitLengthField.h
//  HongDouTV
//
//  Created by MinSen on 16/8/31.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "BaseInputChangeField.h"

// 限制输入长度

@interface CTLimitLengthField : BaseInputChangeField

@property (assign, nonatomic) NSInteger    limitLength;  // 限制输入的长度
@end
