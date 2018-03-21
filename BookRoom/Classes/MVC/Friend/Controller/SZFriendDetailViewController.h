//
//  SZFriendDetailViewController.h
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SZSegmentControl.h"

@interface SZFriendDetailViewController : UIViewController<SZSegmentControlDelegate>

@property(nonatomic, strong)SZSegmentControl *segmentControl;

@end
