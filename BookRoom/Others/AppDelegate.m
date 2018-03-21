//
//  AppDelegate.m
//  BookRoom
//
//  Created by 罗刚 on 2018/3/2.
//  Copyright © 2018年 罗刚. All rights reserved.
//

#import "AppDelegate.h"
#import "AppLaunchController.h"
#import "BaseViewController.h"
#import "BaseNavigationController.h"
#import "SZTabBarViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [[SZTabBarViewController alloc] init];
    if (!UNGetBool(SAVE_FIRST_NEWS)) {
        
        AppLaunchController * _appLaunch = [AppLaunchController allocWithImgs:@[@"02-1_引导页",@"02-2_引导页",@"02-3_引导页"] clickAction:^{
            UNSaveBOOL(YES, SAVE_FIRST_NEWS);

            AppDelegate * appDelegate = [AppDelegate shareInstance];
            // 判断当前用户是否已登录
//            if (![IP_UserDefaults currentLogin]) {
//                [appDelegate enterLogin];
                [self enterLogin];
            
//            [self enterHome];
//            }else{
//                [appDelegate enterHome];
//            }
        }];
        
        BaseNavigationController *navCtr = [[BaseNavigationController alloc]initWithRootViewController:_appLaunch];
        self.window.rootViewController = navCtr;
        
    }else{
//        if (![IP_UserDefaults currentLogin]) {
//            [self enterLogin];
//        }else{
//            [self enterHome];
//        }
        
        // 弹出提示框，重新登录
        
    }
    return YES;
}

- (void)enterLogin{
//    [DefaultCenter postNotificationName:kLoginOut object:nil];
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:SBNameLogin bundle:nil];
    self.window.rootViewController = [story instantiateInitialViewController];
}

-(void)enterHome{
    
    self.window.rootViewController = [[SZTabBarViewController alloc] init];
}

@end
