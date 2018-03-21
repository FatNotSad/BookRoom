//
//  ModelKey.h
//
//  Created by 罗刚 on 16/11/23.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#ifndef ModelKey_h
#define ModelKey_h

// NSUserDefault 存取数据
#define UNSaveObject(obj,key) \
if(obj && key){ \
[[NSUserDefaults standardUserDefaults] setObject:obj forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

// 存储Bool值
#define UNSaveBOOL(bool,key) \
if(key){ \
[[NSUserDefaults standardUserDefaults] setBool:bool forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

// 删除数据
#define UNRemoveObject(key) \
if(key){ \
[[NSUserDefaults standardUserDefaults] removeObjectForKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
}

#pragma mark - 读取数据
// 读取Bool型的值
#define UNGetBool(key)    (key ? [[NSUserDefaults standardUserDefaults] boolForKey:key] : false)
// 读取id型的值
#define UNGetObject(key)    (key ? [[NSUserDefaults standardUserDefaults] objectForKey:key] : nil)

#pragma mark - 保存的Key值
// 保存设备唯一标识
#define JPUSH_ONLY  @"jpush_only"
// 保存用户的DeviceToken
#define USER_DEVICETOKEN      @"user_devicetoken"

// 用户名
#define USER_ACCOUNT          @"user_account"
// 密码
#define USER_PASSWORD         @"user_password"

#endif /* ModelKey_h */
