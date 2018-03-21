//
//  SZSearchFriendsViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/20.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZSearchFriendsViewController.h"
#import "SZSearchFriendCell.h"
#import "SZFriend.h"
#import "SZSearchBar.h"

@interface SZSearchFriendsViewController ()

@end

@implementation SZSearchFriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"搜索书友会";
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc]init];
    headerView.frame = CGRectMake(0, 0, Main_Screen_Width, 50);
    headerView.backgroundColor = [UIColor lightGrayColor];
    
    UIView *bgView = [[UIView alloc]init];
    bgView.frame = CGRectMake(10, 10, Main_Screen_Width-20, 30);
    bgView.backgroundColor = [UIColor whiteColor];
    
    
    SZSearchBar *searchBar = [SZSearchBar searchBar];
    searchBar.frame = CGRectMake(10, 10, Main_Screen_Width-55, 30);
    
    UIButton *searchBtn = [[UIButton alloc]init];
    searchBtn.frame = CGRectMake(Main_Screen_Width-48, 18, 28, 12);
    searchBtn.titleLabel.font = [UIFont fontWithName:@"Arial" size:14];
    [searchBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [searchBtn setTitle:@"搜索" forState:UIControlStateNormal];
    //    [agree setBackgroundImage:btnNormal forState:UIControlStateNormal];
    [searchBtn addTarget:self action:@selector(searchFriends) forControlEvents:UIControlEventTouchUpInside];
    
    [headerView addSubview:bgView];
    [headerView addSubview:searchBar];
    [headerView addSubview:searchBtn];
    // 设置中间的标题内容
    return headerView;
}
- (void)searchFriends{
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SZSearchFriendCell *cell = [SZSearchFriendCell cellWithTableView:tableView];
    if (indexPath.row == 0) {
        [cell.applyBtn setEnabled:NO];
    }else{
        [cell.applyBtn setEnabled:YES];
    }
    SZFriend *bookFriend = [[SZFriend alloc] init];
    bookFriend.name = @"书友会";
    cell.bookFriend = bookFriend;
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}
@end
