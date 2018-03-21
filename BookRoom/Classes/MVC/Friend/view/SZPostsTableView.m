//
//  SZCoreDocTableView.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZPostsTableView.h"
#import "SZFriendCell.h"
#import "SZQuizViewController.h"

@implementation SZPostsTableView

- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    
    if (self)
    {
        self.delegate = self;
        self.dataSource = self;
        self.backgroundColor = [UIColor grayColor];
//        self.separatorColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"v_separator.png"]];
    }
    
    return self;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LOG(@"SZPostsTableView");
    SZQuizViewController *vc = [[SZQuizViewController alloc]init];
    vc.title = @"帖子详情";
    [self.viewController.navigationController pushViewController:vc animated:YES];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}
//-(UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    static NSString *identifer = @"identifier";
//    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
//    cell.textLabel.text = @"核心文献";
//    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    return cell;
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifer = @"identifier";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifer];
    cell.textLabel.text = @"帖子";
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
@end
