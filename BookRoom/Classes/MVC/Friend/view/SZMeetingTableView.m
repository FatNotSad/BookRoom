//
//  SZCoreDocTableView.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZMeetingTableView.h"
//#import "SZFriendCell.h"
#import "SZMeetingViewController.h"

@implementation SZMeetingTableView

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
    LOG(@"SZCoreDocTableView");
    
    SZMeetingViewController *vc = [[SZMeetingViewController alloc]init];
    
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
    cell.textLabel.text = @"会议";
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
@end
