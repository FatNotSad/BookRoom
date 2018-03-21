//
//  SZFriendViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/19.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZFriendViewController.h"
#import "SZFriendCell.h"
#import "SZFriend.h"
#import "SZSearchBar.h"
#import "SZSearchFriendsViewController.h"
#import "SZFriendDetailViewController.h"
#import "YCXMenu.h"


@interface SZFriendViewController ()


@property (nonatomic, strong) UIImageView *menu;
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation SZFriendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"app_icon_menu"] style:UIBarButtonItemStylePlain target:self action:@selector(showMenuFromNavigationBarItem:)];
}
- (void)showMenuFromNavigationBarItem:(id)sender {
    
    // 通过NavigationBarItem显示Menu
    if (sender == self.navigationItem.rightBarButtonItem) {
        [YCXMenu setTintColor:BRColorGreen];
        [YCXMenu setSelectedColor:[UIColor whiteColor]];
        [YCXMenu setSeparatorColor:[UIColor whiteColor]];
        if ([YCXMenu isShow]){
            [YCXMenu dismissMenu];
        } else {
            [YCXMenu showMenuInView:self.view fromRect:CGRectMake(self.view.frame.size.width - 50, 0, 50, 0) menuItems:self.items selected:^(NSInteger index, YCXMenuItem *item) {
                NSLog(@"%@\n%ld",item,(long)index);
            }];
        }
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
    SZSearchFriendsViewController *searchFriendsVC = [[SZSearchFriendsViewController alloc]init];
    
    [self.navigationController pushViewController:searchFriendsVC animated:YES];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SZFriendCell *cell = [SZFriendCell cellWithTableView:tableView];
    SZFriend *bookFriend = [[SZFriend alloc] init];
    bookFriend.name = @"书友会";
    cell.bookFriend = bookFriend;
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 65;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SZFriendDetailViewController *searchFriendsVC = [[SZFriendDetailViewController alloc]init];
    
    [self.navigationController pushViewController:searchFriendsVC animated:YES];
}

#pragma mark - setter/getter
- (NSMutableArray *)items {
    if (!_items) {
        
        _items = [@[
                    [YCXMenuItem menuItem:@"加入书友会"
                                    image:nil
                                      tag:100
                                 userInfo:@{@"title":@"Menu"}],
                    [YCXMenuItem menuItem:@"创建书友会"
                                    image:nil
                                      tag:101
                                 userInfo:@{@"title":@"Menu"}],
                    ] mutableCopy];
    }
    return _items;
}


@end
