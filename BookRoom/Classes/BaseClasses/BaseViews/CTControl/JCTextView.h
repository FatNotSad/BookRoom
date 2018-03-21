//
//  JCTextView.h
//  SinaWeibo
//
//  Created by Ibokan on 15-4-23.
//  Copyright (c) 2015年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JCTextView : UITextView

@property(nonatomic, copy)   NSString * placehoder;
@property(nonatomic, strong) UIColor  * placehoderColor;
@property(nonatomic, assign) float      placehoderFontSize;
@end
