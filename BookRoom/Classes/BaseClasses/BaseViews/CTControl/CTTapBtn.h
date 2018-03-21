//
//  CTTapBtn.h
//  HongDouTV
//
//  Created by MinSen on 16/8/18.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CTTapBtnDelegate <NSObject>
@optional
- (void)tapBtnAction:(UIView *)sender;
@end

@interface CTTapBtn : UIView

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (assign, nonatomic) id<CTTapBtnDelegate>   delegate;
@end
