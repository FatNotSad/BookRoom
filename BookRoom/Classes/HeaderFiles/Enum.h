//
//  Enum.h
//
//  Created by 罗刚 on 16/11/23.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#ifndef Enum_h
#define Enum_h

// 分享类型
typedef NS_ENUM(NSInteger, UMShareType) {
    UMShareTypeWeiXin         = 0,   // 微信
    UMShareTypeWeiXinFirend,         // 微信朋友圈
    UMShareTypeQQ,                   // QQ
    UMShareTypeQZone,                // QQ空间
//    UMShareTypeSina,                 // 新浪
};

// 用户类型
typedef NS_ENUM(NSInteger, UserType) {
    UserTypeStudent = 1,
    UserTypeTeacher,
    UserTypeWildMan
};

// 直播列表烈性
typedef NS_ENUM(NSInteger, LiveRoomType) {
    LiveRoomTypeShow,               // show房
    LiveRoomTypeTeach,              // 教学
    LiveRoomTypeMaster              // 培训
};

// 主播、观众
typedef NS_ENUM(NSInteger, NSLiveType) {
    NSLiveTypeUser,                  // 主播（直播）
    NSLiveTypeSee,                   // 观众（观看直播）
    NSLiveTypeVideoUser,             // 视频聊天主播端(接受)
    NSLiveTypeVideoSee,              // 视频聊天观众端(呼叫)
    NSLiveTypeVOS                    // 录播
};

// 打开mini卡
typedef NS_ENUM(NSInteger, NSMiniCardType) {
    NSMiniCardTypeDefault = 0,       // 主播点自己
    NSMiniCardTypeToLive,            // 观众点主播mini卡
    NSMiniCardTypeLiveToSee,         // 主播点观众
    NSMiniCardTypeSeeToSee,          // 观众点观众
};

// 消息
typedef NS_ENUM(NSInteger, NSMessageType){
    NSMessageTypeSystem,             // 系统
//    NSMessageTypeRobot,              // 小秘书
    NSMessageTypeChat,               // 聊天
//    NSMessageTypeVideo,              // 视频聊天
//    NSMessageTypeWorks,              // 作品
    NSMessageTypeLive,               // 直播私信
//    NSMessageTypeJob,                // 预约工作
//    NSMessageTypeFocus,              // 关注
};

// 论坛发布
typedef NS_ENUM(NSInteger, IPForumPublishType) {
    IPForumPublishTypeDefault,        // 帖子
    IPForumPublishTypeMovie,          // 视频
    IPForumPublishTypeActivity,       // 活动
};

#endif /* Enum_h */
