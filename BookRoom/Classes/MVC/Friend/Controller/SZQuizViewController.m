//
//  SZQuizViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZQuizViewController.h"

@interface SZQuizViewController ()

@end

@implementation SZQuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.title = self.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section>1) {
        return 5;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString *identifer = @"identifier";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifer];
    cell.textLabel.text = @"哥斯拉";
    cell.detailTextLabel.text = @"题主提的这个问题，相信很多开发者都有自己的话要说。Android 的发展确实太快了，每年的都有很多新东西出现，想要覆盖所有新东西感觉也不太可能，我这里主要说一下主要的 Android 的主要新技术发展，其实了解 Android 的发展趋势，可能对开发者更有帮助。";
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        UIView *questionView = [[UIView alloc]init];
//        questionView.backgroundColor = [UIColor redColor];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 54)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 54)];
        labelFriend.textColor = [UIColor blackColor];
        labelFriend.font = [UIFont systemFontOfSize:16];
        labelFriend.text = @"如何看待教育局为「公平」而取消特长生、叫停数学杯赛的行为？";
//        labelFriend.textAlignment = NSTextAlignmentCenter;
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        return questionView;
    }else if (section == 1){
        UIView *questionView = [[UIView alloc]init];
        questionView.backgroundColor = [UIColor lightGrayColor];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 24)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 24)];
        labelFriend.textColor = [UIColor blackColor];
        labelFriend.font = [UIFont systemFontOfSize:14];
        labelFriend.text = @"哥斯拉";
//        labelFriend.textAlignment = NSTextAlignmentCenter;
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        
        
        UILabel *labelFriend2 = [[UILabel alloc] init];
        [labelFriend2 setFrame:CGRectMake(0, 24, Main_Screen_Width, 120)];
        labelFriend2.textColor = [UIColor blackColor];
        labelFriend2.font = [UIFont systemFontOfSize:14];
        labelFriend2.text = @"人生而不公平。姚明和潘长江怎么公平？禁双面同色拍、禁长胶、禁遮挡发球、禁有机胶水、38mm 改 40mm，21 分制改 11 分制……近几十年国际乒乓球比赛的改革史，就是一个针对中国队寻求“公平”的过程。你们觉得棒不棒？怎么寻求公平呢？让姚明去打篮球，让潘长江去演小品，这是寻求公平。把篮筐降到一米五不是公平。-------------------------------------------------------为了让这贴能留住不被删，本来不想说太细。但看到一个 Super Brilliant 跳出来了，只好说几句。你们看到的这个“公平”，不过是把吠舍拉下来哄首陀罗。对婆罗门、刹帝利的政策是不会变的。凭成绩都觉得不公平，是欠九品中正制啊。";
//        labelFriend2.textAlignment = NSTextAlignmentCenter;
        labelFriend2.numberOfLines = 0;
        [questionView addSubview:labelFriend2];
        
        return questionView;
    }
    UIView *questionView = [[UIView alloc]init];
    [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 54)];
    UILabel *labelFriend = [[UILabel alloc] init];
    [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 54)];
    labelFriend.textColor = [UIColor blackColor];
    labelFriend.font = [UIFont systemFontOfSize:14];
    labelFriend.text = @"评论列表";
//    labelFriend.textAlignment = NSTextAlignmentCenter;
    labelFriend.numberOfLines = 0;
    [questionView addSubview:labelFriend];
    return questionView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 54;
    }else if (section == 1) {
        return 150;
    }else{
        return 24;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 54;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
