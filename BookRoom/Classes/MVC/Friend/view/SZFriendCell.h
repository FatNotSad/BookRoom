//
//  SZFriendCell.h
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SZFriend.h"

@interface SZFriendCell : UITableViewCell

@property (nonatomic, strong) SZFriend *bookFriend;
/**
 *  快速创建一个cell
 */
+(SZFriendCell *)cellWithTableView:(UITableView *)tableView;

@end
