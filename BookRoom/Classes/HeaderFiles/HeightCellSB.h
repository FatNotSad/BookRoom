//
//  HeightCellSB.h
//
//  Created by 罗刚 on 16/11/16.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#ifndef HeightCellSB_h
#define HeightCellSB_h

#define NibName(name) [UINib nibWithNibName:name bundle:nil]
#define ViewController(StoryBoard, ViewControllerID) [StoryBoard instantiateViewControllerWithIdentifier:ViewControllerID]
#define ViewWithXIB(XIBName) [[NSBundle mainBundle] loadNibNamed:XIBName owner:self options:nil].lastObject;
#define ViewWithFirXIB(XIBName) [[NSBundle mainBundle] loadNibNamed:XIBName owner:self options:nil].firstObject;

/** nibName 和 ID 要一致 */
#define RegistTableAndNibID(table, nibID) [table registerNib:NibName(nibID) forCellReuseIdentifier:nibID];
#define RegistCollectionAndNibID(collection, nibID) [collection registerNib:NibName(nibID) forCellWithReuseIdentifier:nibID];

#define SBNameLogin @"Login"
#define SBNameTabBar @"TabBar"
#define SBTabBar [UIStoryboard storyboardWithName:SBNameSplit bundle:nil]
#define SBLogin [UIStoryboard storyboardWithName:SBNameLogin bundle:nil]

#define HeightCellDefault  50

// tableView为组样式时默认下移
#define EdgeTableViewUp UIEdgeInsetsMake(-34, 0, 0, 0)

#endif /* HeightCellSB_h */
