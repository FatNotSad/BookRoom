//
//  SZCoreDocTableView.h
//  BookRoom
//
//  Created by CaiShaozi on 2018/3/21.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SZCoreDocTableView : UITableView <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, assign) UIViewController *viewController;
@end
