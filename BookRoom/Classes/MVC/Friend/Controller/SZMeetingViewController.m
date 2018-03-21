//
//  SZMeetingViewController.m
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "SZMeetingViewController.h"

@interface SZMeetingViewController ()

@end

@implementation SZMeetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (section == 2) {
        return 3;
    }else{
        return 0;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifer = @"identifier";
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifer];
    cell.textLabel.text = @"哥斯拉";
    cell.detailTextLabel.text = @"上传者：李白";
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        UIView *questionView = [[UIView alloc]init];
        //        questionView.backgroundColor = [UIColor redColor];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        labelFriend.textColor = [UIColor grayColor];
        labelFriend.font = [UIFont systemFontOfSize:16];
        labelFriend.text = @"会议日期";
        //        labelFriend.textAlignment = NSTextAlignmentCenter;
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        return questionView;
    }else if(section == 1){
        UIView *questionView = [[UIView alloc]init];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 54)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 20)];
        labelFriend.textColor = [UIColor grayColor];
        labelFriend.font = [UIFont systemFontOfSize:16];
        labelFriend.text = @"成员名称列表";
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        
        
        UILabel *labelFriend2 = [[UILabel alloc] init];
        [labelFriend2 setFrame:CGRectMake(0, 20, Main_Screen_Width, 32)];
        labelFriend2.textColor = [UIColor grayColor];
        labelFriend2.font = [UIFont systemFontOfSize:12];
        labelFriend2.text = @"哥斯拉 哥斯拉 哥斯拉 哥斯拉 哥斯拉\n哥斯拉 哥斯拉 哥斯拉 哥斯拉 哥斯拉\n哥斯拉 哥斯拉 哥斯拉 哥斯拉 哥斯拉\n";
        labelFriend2.numberOfLines = 0;
        [questionView addSubview:labelFriend2];
        
        return questionView;
    }else if(section == 2){
        
        UIView *questionView = [[UIView alloc]init];
        //        questionView.backgroundColor = [UIColor redColor];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        labelFriend.textColor = [UIColor grayColor];
        labelFriend.font = [UIFont systemFontOfSize:16];
        labelFriend.text = @"文献列表";
        //        labelFriend.textAlignment = NSTextAlignmentCenter;
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        return questionView;
    }else{
        
        UIView *questionView = [[UIView alloc]init];
        //        questionView.backgroundColor = [UIColor redColor];
        [questionView setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        UILabel *labelFriend = [[UILabel alloc] init];
        [labelFriend setFrame:CGRectMake(0, 0, Main_Screen_Width, 32)];
        labelFriend.textColor = [UIColor grayColor];
        labelFriend.font = [UIFont systemFontOfSize:16];
        labelFriend.text = @"照片";
        //        labelFriend.textAlignment = NSTextAlignmentCenter;
        labelFriend.numberOfLines = 0;
        [questionView addSubview:labelFriend];
        
        UIImageView *imageView = [[UIImageView alloc]init];
        [imageView setFrame:CGRectMake(10, 42, 50, 50)];
        imageView.backgroundColor = [UIColor grayColor];
        [questionView addSubview:imageView];
        
        return questionView;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 48;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 32;
    }else if(section == 1){
        return 54;
    }else if (section == 2){
        return 32;
    }else{
        return 100;
    }
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
