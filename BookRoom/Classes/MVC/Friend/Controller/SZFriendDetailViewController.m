//
//  SZFriendDetailViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZFriendDetailViewController.h"
//#import "UIImage+SZ.h"
#import "SZCoreDocTableView.h"
#import "SZQuizTableView.h"
#import "SZPostsTableView.h"
#import "SZMeetingTableView.h"

@interface SZFriendDetailViewController ()

@property (nonatomic, strong) UIView *headView;
@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *labelFriend;
@property (nonatomic, strong) UILabel *labelName;

@property (nonatomic, strong) UIButton *applyBtn;
@property (nonatomic, strong) UIButton *joinBtn;

@property (nonatomic, strong) UILabel *labelIntro;
@property (nonatomic, strong) UILabel *labelPosts;
@property (nonatomic, strong) UILabel *labelQuiz;
@property (nonatomic, strong) UILabel *labelType;
@property (nonatomic, strong) UILabel *labelShuYouNum;
@property (nonatomic, strong) UILabel *labelBuildTime;


@property (nonatomic, strong) UIScrollView *myScrollView;

@property (nonatomic, strong) SZCoreDocTableView *coreDocTableView;
@property (nonatomic, strong) SZQuizTableView *quizTableView;
@property (nonatomic, strong) SZPostsTableView *postTableView;
@property (nonatomic, strong) SZMeetingTableView *meetingTableView;
//@property (nonatomic, strong) UIScrollView *myScrollView;
//@property (nonatomic, strong) UIScrollView *myScrollView;
//@property (nonatomic, strong) UIScrollView *myScrollView;


@end

@implementation SZFriendDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    UIScrollView *myScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height*1.5)];
    
    myScrollView.directionalLockEnabled = YES;
    myScrollView.contentSize = CGSizeMake(Main_Screen_Width, Main_Screen_Height*2);
//    myScrollView.showsHorizontalScrollIndicator=NO;
//    myScrollView.showsVerticalScrollIndicator=NO;
    myScrollView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:myScrollView];
    self.myScrollView = myScrollView;
    
    
//    UIView *headView = [[UIView alloc]init];
//    [headView setFrame:CGRectMake(0, Main_Screen_Height, Main_Screen_Width, Main_Screen_Height)];
//    headView.backgroundColor = [UIColor whiteColor];
//    [self.myScrollView addSubview:headView];
//    self.headView = headView;
    
    
    
    [self configureHeader];
    [self configureTopTabBar];
    [self configureTableView];
}

-(void)configureTableView{
    self.coreDocTableView = [[SZCoreDocTableView alloc]initWithFrame:CGRectMake(0, Main_Screen_Height*0.5+25, Main_Screen_Width, Main_Screen_Height) style:UITableViewStylePlain];
    self.coreDocTableView.hidden = NO;
    [self.coreDocTableView reloadData];
    self.coreDocTableView.viewController = self;
    [self.myScrollView addSubview:self.coreDocTableView];
    
    self.quizTableView = [[SZQuizTableView alloc]initWithFrame:CGRectMake(0, Main_Screen_Height*0.5+25, Main_Screen_Width, Main_Screen_Height) style:UITableViewStylePlain];
    self.quizTableView.hidden = YES;
    self.quizTableView.viewController = self;
    [self.quizTableView reloadData];
    [self.myScrollView addSubview:self.quizTableView];
    
    self.postTableView = [[SZPostsTableView alloc]initWithFrame:CGRectMake(0, Main_Screen_Height*0.5+25, Main_Screen_Width, Main_Screen_Height) style:UITableViewStylePlain];
    self.postTableView.hidden = YES;
    self.postTableView.viewController = self;
    [self.postTableView reloadData];
    [self.myScrollView addSubview:self.postTableView];
    
    self.meetingTableView = [[SZMeetingTableView alloc]initWithFrame:CGRectMake(0, Main_Screen_Height*0.5+25, Main_Screen_Width, Main_Screen_Height) style:UITableViewStylePlain];
    self.meetingTableView.hidden = YES;
    self.meetingTableView.viewController = self;
    [self.meetingTableView reloadData];
    [self.myScrollView addSubview:self.meetingTableView];
    
    [self setupTableViewFrame];
    
}
- (void)setupTableViewFrame{
    [self.coreDocTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.segmentControl.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width, Main_Screen_Height));
    }];
    
    [self.quizTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.segmentControl.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width, Main_Screen_Height));
    }];
    
    [self.postTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.segmentControl.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width, Main_Screen_Height));
    }];
    
    [self.meetingTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.segmentControl.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width, Main_Screen_Height));
    }];
    
}
- (void)configureHeader{
    UIView *headView = [[UIView alloc]init];
    [headView setFrame:CGRectMake(0, 0, Main_Screen_Width, Main_Screen_Height*0.5+25)];
    headView.backgroundColor = [UIColor whiteColor];
    [self.myScrollView addSubview:headView];
    self.headView = headView;
    
    UIImageView *imgView = [[UIImageView alloc]init];
    [imgView setImage:[UIImage imageNamed:@"library.jpg"]];
    imgView.backgroundColor = [UIColor clearColor];
    [headView addSubview:imgView];
    self.imgView = imgView;
    
    UIImageView *iconView = [[UIImageView alloc]init];
    [iconView setImage:[UIImage imageNamed:@"app_default_img"]];
    [headView addSubview:iconView];
    self.iconView = iconView;
    
    UILabel *labelFriend = [[UILabel alloc] init];
    labelFriend.textColor = [UIColor whiteColor];
    labelFriend.font = [UIFont systemFontOfSize:14];
    labelFriend.text = @"书友会名称";
    labelFriend.textAlignment = NSTextAlignmentCenter;
    labelFriend.numberOfLines = 0;
    [headView addSubview:labelFriend];
    self.labelFriend = labelFriend;
    
    UILabel *labelName = [[UILabel alloc] init];
    labelName.font = [UIFont systemFontOfSize:12];
    labelName.textColor = [UIColor whiteColor];
    labelName.text = @"用户名";
    labelName.textAlignment = NSTextAlignmentCenter;
    labelName.numberOfLines = 0;
    [headView addSubview:labelName];
    self.labelName = labelName;
    
    UIButton *applyBtn = [[UIButton alloc]init];
    applyBtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:5];
    [applyBtn setBackgroundImage:[UIImage imageNamed:@"syh_syxq_icon_bj_n"] forState:UIControlStateNormal];
    [applyBtn setBackgroundImage:[UIImage imageNamed:@"syh_syxq_icon_bj_s"] forState:UIControlStateHighlighted];
    [applyBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [applyBtn setTitle:@"编辑信息" forState:UIControlStateNormal];
    //    [applyBtn setTitle:@"已申请" forState:UIControlStateDisabled];
    //    self.applyBtn = applyBtn;
    [headView addSubview:applyBtn];
    self.applyBtn = applyBtn;
    
    UIButton *joinBtn = [[UIButton alloc]init];
    joinBtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:5];
    [joinBtn setBackgroundImage:[UIImage imageNamed:@"syh_syxq_icon_join_n"] forState:UIControlStateNormal];
    [joinBtn setBackgroundImage:[UIImage imageNamed:@"syh_syxq_icon_join_s"] forState:UIControlStateHighlighted];
    [joinBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    [joinBtn setTitle:@"已加入" forState:UIControlStateNormal];
    //    [applyBtn setTitle:@"已申请" forState:UIControlStateDisabled];
    //    self.applyBtn = applyBtn;
    [headView addSubview:joinBtn];
    self.joinBtn = joinBtn;
    
    UILabel *labelIntro = [[UILabel alloc] init];
    labelIntro.text = @"简介：\n个人简介，是当事人全面而简洁地介绍自身情况的一种书面表达方式。求职过程中撰写的个人简介是求职者向欲供职单位全面、简洁、条理清晰地自我介绍、自我推荐的文书。简介是应用写作学研究的一种日常应用文体。";
    labelIntro.font = [UIFont systemFontOfSize:12];
    labelIntro.numberOfLines = 0;
    labelIntro.textColor = [UIColor lightGrayColor];
    labelIntro.preferredMaxLayoutWidth = WIDTH(self.view);
    [headView addSubview:labelIntro];
    
    self.labelIntro = labelIntro;
    
    UILabel *labelPosts = [[UILabel alloc] init];
    labelPosts.font = [UIFont systemFontOfSize:14];
    labelPosts.numberOfLines = 0;
    labelPosts.text = @"发帖数: 25960";
    labelPosts.textAlignment = NSTextAlignmentCenter;
    labelPosts.textColor = [UIColor lightGrayColor];
    [headView addSubview:labelPosts];
    self.labelPosts = labelPosts;
    
    UILabel *labelQuiz = [[UILabel alloc] init];
    labelQuiz.font = [UIFont systemFontOfSize:14];
    labelQuiz.numberOfLines = 0;
    labelQuiz.text = @"提问数: 25960";
    labelQuiz.textAlignment = NSTextAlignmentCenter;
    labelQuiz.textColor = [UIColor lightGrayColor];
    [headView addSubview:labelQuiz];
    self.labelQuiz = labelQuiz;
    
    UILabel *labelType = [[UILabel alloc] init];
    labelType.font = [UIFont systemFontOfSize:14];
    labelType.numberOfLines = 0;
    labelType.text = @"类型: 专题";
    labelType.textAlignment = NSTextAlignmentCenter;
    labelType.textColor = [UIColor lightGrayColor];
    [headView addSubview:labelType];
    self.labelType = labelType;
    
    UILabel *labelShuYouNum = [[UILabel alloc] init];
    labelShuYouNum.font = [UIFont systemFontOfSize:14];
    labelShuYouNum.numberOfLines = 0;
    labelShuYouNum.text = @"书友会认识: 3535";
    labelShuYouNum.textAlignment = NSTextAlignmentCenter;
    labelShuYouNum.textColor = [UIColor lightGrayColor];
    [headView addSubview:labelShuYouNum];
    self.labelShuYouNum = labelShuYouNum;
    
    UILabel *labelBuildTime = [[UILabel alloc] init];
    labelBuildTime.font = [UIFont systemFontOfSize:14];
    labelBuildTime.numberOfLines = 0;
    labelBuildTime.text = @"创建时间: 2018/01/01";
    labelBuildTime.textAlignment = NSTextAlignmentCenter;
    labelBuildTime.textColor = [UIColor lightGrayColor];
    [headView addSubview:labelBuildTime];
    self.labelBuildTime = labelBuildTime;
    
    [self setupHeaderFrame];
    
}

- (void)setupHeaderFrame{
    //头像
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.myScrollView.mas_top).with.offset(15);
        make.centerX.equalTo(self.myScrollView);
        make.size.mas_equalTo(CGSizeMake(45, 45));
//        make.left.equalTo(self.contentView).with.offset(10);
//        make.right.equalTo(self.contentView).with.offset(-10);
    }];
    
    //书友会名称
    [self.labelFriend mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.iconView.mas_bottom).with.offset(5);
        make.centerX.equalTo(self.iconView);
        make.size.mas_equalTo(CGSizeMake(150, 18));
    }];
    
    //书友会名称
    [self.labelName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelFriend.mas_bottom).with.offset(5);
        make.centerX.equalTo(self.labelFriend);
        make.size.mas_equalTo(CGSizeMake(150, 16));
    }];
    
    //书友会名称
    [self.applyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelName.mas_bottom).with.offset(5);
//        make.centerX.equalTo(self.labelFriend);
        make.left.equalTo(self.myScrollView).with.offset(100);
        //        make.right.equalTo(self.contentView).with.offset(-10);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];
    
    //书友会名称
    [self.joinBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelName.mas_bottom).with.offset(5);
//        make.centerX.equalTo(self.labelFriend);
        //        make.left.equalTo(self.contentView).with.offset(10);
        make.right.equalTo(self.view).with.offset(-100);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];
    
    //背景图
    [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.myScrollView.mas_top);
        make.width.equalTo(@(self.view.width)).priorityLow();
        make.bottom.equalTo(self.joinBtn.mas_bottom).with.offset(10);
    }];
    
    //简介
    [self.labelIntro mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.joinBtn.mas_bottom).with.offset(15);
        make.width.equalTo(@(self.view.width-40)).priorityLow();
        make.left.equalTo(self.view.mas_left).with.offset(10);
//        make.width.equalTo(@(self.view.width)).priorityLow();
    }];
    
    //发帖数
//    CGFloat three = Main_Screen_Width/3;
    [self.labelPosts mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelIntro.mas_bottom).with.offset(5);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width/3, 18));
//        make.left.equalTo(self.);
    }];
    
    //提问数
    [self.labelQuiz mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelIntro.mas_bottom).with.offset(5);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width/3, 18));
        make.left.mas_equalTo(self.labelPosts.mas_right);
    }];
    
    //类型
    [self.labelType mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelIntro.mas_bottom).with.offset(5);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width/3, 18));
        make.left.mas_equalTo(self.labelQuiz.mas_right);
    }];
    
    //书友会人数
    [self.labelShuYouNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelPosts.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width/2, 18));
//        make.left.mas_equalTo(self.labelPosts.mas_right);
    }];
    
    //创建时间
    [self.labelBuildTime mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.labelPosts.mas_bottom).with.offset(0);
        make.size.mas_equalTo(CGSizeMake(Main_Screen_Width/2, 18));
        make.left.mas_equalTo(self.labelShuYouNum.mas_right);
    }];
}

/**
 配置Segement
 */
- (void)configureTopTabBar{
    self.segmentControl = [[SZSegmentControl alloc] initWithFrame:CGRectMake(0, Main_Screen_Height*0.5, Main_Screen_Width, 32)];
    self.segmentControl.delegate = self;
    [self.myScrollView addSubview:self.segmentControl];
    
    NSMutableDictionary *button1 = [NSMutableDictionary dictionary];
    NSMutableDictionary *button2 = [NSMutableDictionary dictionary];
    NSMutableDictionary *button3 = [NSMutableDictionary dictionary];
    NSMutableDictionary *button4 = [NSMutableDictionary dictionary];
    
    UIImage *normalBG = [[UIImage createImageWithColor:BRColorGreen] stretchableImageWithLeftCapWidth:0.5 topCapHeight:16];
    UIImage *selectedBG = [[UIImage createImageWithColor:[UIColor whiteColor]] stretchableImageWithLeftCapWidth:0.5 topCapHeight:16];
    [button1 setObject:normalBG forKey:@"normalBG"];
    [button2 setObject:normalBG forKey:@"normalBG"];
    [button3 setObject:normalBG forKey:@"normalBG"];
    [button4 setObject:normalBG forKey:@"normalBG"];
    
    [button1 setObject:selectedBG forKey:@"selectedBG"];
    [button2 setObject:selectedBG forKey:@"selectedBG"];
    [button3 setObject:selectedBG forKey:@"selectedBG"];
    [button4 setObject:selectedBG forKey:@"selectedBG"];
    
    UIFont *font = [UIFont systemFontOfSize:14];
    [button1 setObject:font forKey:@"font"];
    [button2 setObject:font forKey:@"font"];
    [button3 setObject:font forKey:@"font"];
    [button4 setObject:font forKey:@"font"];
    
    [button1 setObject:@"核心文献" forKey:@"title"];
    [button2 setObject:@"问答" forKey:@"title"];
    [button3 setObject:@"帖子" forKey:@"title"];
    [button4 setObject:@"会议" forKey:@"title"];
    
    UIColor *normalColor = [UIColor whiteColor];
    [button1 setObject:normalColor forKey:@"normalColor"];
    [button2 setObject:normalColor forKey:@"normalColor"];
    [button3 setObject:normalColor forKey:@"normalColor"];
    [button4 setObject:normalColor forKey:@"normalColor"];
    
    UIColor *selectedColor = [UIColor blackColor];
    [button1 setObject:selectedColor forKey:@"selectedColor"];
    [button2 setObject:selectedColor forKey:@"selectedColor"];
    [button3 setObject:selectedColor forKey:@"selectedColor"];
    [button4 setObject:selectedColor forKey:@"selectedColor"];
    
    [self.segmentControl setButtons:[NSArray arrayWithObjects:button1, button2, button3, button4,nil]];
    
}
- (void)segmentControl:(SZSegmentControl *)control didSelectedSegmentAtIndex:(NSInteger)index
{
        switch (index)
        {
            case 0:
            {
                NSLog(@"SZSegmentControl-1");
                self.coreDocTableView.hidden = NO;
                self.quizTableView.hidden = YES;
                self.postTableView.hidden = YES;
                self.meetingTableView.hidden = YES;
            }
                break;
            case 1:
            {
                NSLog(@"SZSegmentControl-2");
                self.coreDocTableView.hidden = YES;
                self.quizTableView.hidden = NO;
                self.postTableView.hidden = YES;
                self.meetingTableView.hidden = YES;
            }
                break;
            case 2:
            {
                NSLog(@"SZSegmentControl-3");
                self.coreDocTableView.hidden = YES;
                self.quizTableView.hidden = YES;
                self.postTableView.hidden = NO;
                self.meetingTableView.hidden = YES;
            }
                break;
            case 3:
            {
                NSLog(@"SZSegmentControl-4");
                self.coreDocTableView.hidden = YES;
                self.quizTableView.hidden = YES;
                self.postTableView.hidden = YES;
                self.meetingTableView.hidden = NO;
            }
                break;
            default:
                break;
        }

    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initHeaderView{
    
}

@end
