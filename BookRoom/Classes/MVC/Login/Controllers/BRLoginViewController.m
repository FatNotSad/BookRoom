//
//  BRLoginViewController.m
//  BookRoom
//
//  Created by 罗刚 on 2018/3/5.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "BRLoginViewController.h"
#import "SZTabBarViewController.h"

//appkey:23cbd2122e5f2a9abacbabc8a4adc5f0
//version:1
//apptype:ios

@interface BRLoginViewController ()
{
    __weak IBOutlet OnlyNumberField *_accountTextField;
    __weak IBOutlet CTLimitLengthField *_passwordTextField;
    __weak IBOutlet UIButton *_saveLoginStateBtn;
}
@end

@implementation BRLoginViewController

- (IBAction)loginClick:(id)sender {
//    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
//        self.window.rootViewController = [[SZTabBarViewController alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _saveLoginStateBtn.adjustsImageWhenHighlighted = NO;
    _accountTextField.limitLength = 25;
    _passwordTextField.limitLength = 16;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)saveLoginState:(UIButton *)sender {
    sender.selected = !sender.selected;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
