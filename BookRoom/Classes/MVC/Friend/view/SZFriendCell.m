//
//  SZFriendCell.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZFriendCell.h"
//#import "Masonry.h"

@interface SZFriendCell ()

@property (nonatomic, strong) UIImageView *iconView;

@property (nonatomic, strong) UILabel *labelFriend;

@property (nonatomic, strong) UILabel *labelName;

@property (nonatomic, strong) UIImageView *numView;

@property (nonatomic, strong) UILabel *labelNum;

@property (nonatomic, strong) UIView *lineView;

@end
@implementation SZFriendCell

+(SZFriendCell *)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"CELL";
    SZFriendCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[SZFriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
//        [cell setSeparatorInset:UIEdgeInsetsZero];
//        [cell setLayoutMargins:UIEdgeInsetsZero];
        cell.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    return cell;
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){
        self.iconView = [[UIImageView alloc] init];
//        self.iconView.contentMode = UIViewContentModeScaleAspectFill;
        self.iconView.clipsToBounds = YES;
        [self.contentView addSubview:self.iconView];
        
        self.labelFriend = [[UILabel alloc] init];
        self.labelFriend.font = [UIFont systemFontOfSize:14];
        self.labelFriend.numberOfLines = 0;
        [self.contentView addSubview:self.labelFriend];
        
        self.labelName = [[UILabel alloc] init];
        self.labelName.textColor = [UIColor grayColor];
        self.labelName.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:self.labelName];
        
        self.numView = [[UIImageView alloc] init];
//        self.numView.contentMode = UIViewContentModeScaleAspectFill;
        self.numView.clipsToBounds = YES;
        [self.contentView addSubview:self.numView];
        
        self.labelNum = [[UILabel alloc] init];
        self.labelNum.textColor = [UIColor grayColor];
        self.labelNum.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:self.labelNum];
        
        self.lineView = [[UIView alloc] init];
        //        self.numView.contentMode = UIViewContentModeScaleAspectFill;
//        self.lineView.clipsToBounds = YES;
        [self.contentView addSubview:self.lineView];
        self.lineView.backgroundColor = [UIColor lightGrayColor];
        
    }
    return self;
}
-(void)setBookFriend:(SZFriend *)bookFriend{
    _bookFriend = bookFriend;
    [self.iconView setImage:[UIImage imageNamed:@"app_default_img"]];
    self.labelFriend.text = @"青春一派";
    self.labelName.text = @"萧吉";
    [self.numView setImage:[UIImage imageNamed:@"app_user_icon"]];
    self.labelNum.text = @"285人";
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.iconView.frame = CGRectMake(10, 10, 45, 45);
    
    self.labelFriend.frame = CGRectMake(65, 15, Main_Screen_Width-95, 14);
    
    self.labelName.frame = CGRectMake(65, 38, Main_Screen_Width-95, 12);
    
    
//    self.labelNum.frame = CGRectMake(Main_Screen_Width-45, 32, 44, 12);
    [self.labelNum mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.contentView.mas_top).with.offset(23);
//        make.left.equalTo(self.contentView).with.offset(10);
        make.right.equalTo(self.contentView).with.offset(-10);
    }];
    
    [self.numView mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.contentView.mas_top).with.offset(23);
        //        make.left.equalTo(self.contentView).with.offset(10);
        make.right.equalTo(self.labelNum.mas_left).with.offset(-5);
    }];
    
//    self.numView.frame = CGRectMake(Main_Screen_Width-60, 30, 13, 15);
    
    self.lineView.frame = CGRectMake(0, HEIGHT(self)-1, WIDTH(self), 0.5);
    
}
@end
