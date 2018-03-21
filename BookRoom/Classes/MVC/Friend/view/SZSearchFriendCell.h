//
//  SZFriendCell.h
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SZFriend.h"

@interface SZSearchFriendCell : UITableViewCell

@property (nonatomic, strong) SZFriend *bookFriend;
@property (nonatomic, strong) UIButton *applyBtn;
/**
 *  快速创建一个cell
 */
+(SZSearchFriendCell *)cellWithTableView:(UITableView *)tableView;

@end
