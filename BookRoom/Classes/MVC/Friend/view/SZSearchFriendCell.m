//
//  SZFriendCell.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZSearchFriendCell.h"
@interface SZSearchFriendCell ()

@property (nonatomic, strong) UIImageView *iconView;

@property (nonatomic, strong) UILabel *labelFriend;

@property (nonatomic, strong) UILabel *labelName;

@property (nonatomic, strong) UIImageView *numView;

@property (nonatomic, strong) UILabel *labelNum;

@property (nonatomic, strong) UIView *lineView;


@end
@implementation SZSearchFriendCell

+(SZSearchFriendCell *)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"CELL";
    SZSearchFriendCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[SZSearchFriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
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
        
//        self.labelName = [[UILabel alloc] init];
//        self.labelName.textColor = [UIColor grayColor];
//        self.labelName.font = [UIFont systemFontOfSize:12];
//        [self.contentView addSubview:self.labelName];
        
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
        
        UIButton *applyBtn = [[UIButton alloc]init];
        applyBtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:14];
        [applyBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [applyBtn setTitle:@"申请加入" forState:UIControlStateNormal];
        [applyBtn setTitle:@"已申请" forState:UIControlStateDisabled];
        [applyBtn setTitle:@"已申请" forState:UIControlStateHighlighted];
        [applyBtn setBackgroundImage:[UIImage createImageWithColor:BRColorGreen] forState:UIControlStateNormal];
        [applyBtn setBackgroundImage:[UIImage createImageWithColor:[UIColor lightGrayColor]] forState:UIControlStateDisabled];
        [applyBtn setBackgroundImage:[UIImage createImageWithColor:[UIColor lightGrayColor]] forState:UIControlStateHighlighted];
        applyBtn.layer.cornerRadius = 2.0;
        applyBtn.layer.masksToBounds = YES;
        [self.contentView addSubview:applyBtn];
        self.applyBtn = applyBtn;
//        [searchBtn addTarget:self action:@selector(searchFriends) forControlEvents:UIControlEventTouchUpInside];
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
    
//    self.labelName.frame = CGRectMake(65, 38, Main_Screen_Width-95, 12);
    
    self.numView.frame = CGRectMake(65, 38, 13, 15);
    
    self.labelNum.frame = CGRectMake(80, 40, 44, 12);
    
    self.applyBtn.frame = CGRectMake(Main_Screen_Width/4*3, 18, 72, 24);
    
    self.lineView.frame = CGRectMake(0, HEIGHT(self)-1, WIDTH(self), 0.5);
    
    
}
@end
