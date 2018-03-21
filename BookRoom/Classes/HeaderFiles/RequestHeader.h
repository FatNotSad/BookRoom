//
//  RequestHeader.h
//
//  Created by 罗刚 on 16/12/6.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#ifndef RequestHeader_h
#define RequestHeader_h


// 上传头像或图片
#define UPLOAD_HEAD                   @"head_photo"        // 上传头像
#define UPLOAD_PIC                    @"prd_photo"         // 上传图片

// 登录
#define LOGIN_URL                     @"login"             // 登录
#define LOGIN_FORGET                  @"forget"            // 忘记密码
#define LOGIN_REGIST                  @"register"          // 注册
#define LOGIN_SEND                    @"check_code"        // 发送验证码

// 首页
#define HOME_URL                      @"index"             // 首页
#define HOME_SEARCH                   @"search"            // 搜索
#define HOME_ADVERTISE                @"banner"            // 广告轮播
#define HOME_SORT                     @"rank"              // 贡献榜/收入榜
#define HOME_FOCUS_ADD                @"follow_add"        // 添加关注
#define HOME_FOCUS_CANCEL             @"follow_del"        // 取消关注
#define HOME_ANOTHER_LIST             @"contribution"      // 粉丝贡献榜

// 消息
#define MESSAGE_ADDRESS               @"maillist"          // 通讯录
#define MESSAGE_SYSTEM                @"getSystem"         // 获取系统消息
#define MESSAGE_READ                  @"readSystem"        // 设置系统消息已读
#define MESSAGE_SENDTEXT              @"senderText"        // 系统消息-预约工作
#define MESSAGE_DELSYSTEM             @"delSystem"         // 删除系统消息
#define MESSAGE_ROBOT_DETAIL          @"information"       // 红豆小秘书列表
#define MESSAGE_BEST                  @"message"           // 获取最新的系统和红豆消息

// 我的
#define MINE_INFO                     @"info"              // 个人资料
#define MINE_REPAIR                   @"p_info"            // 修改个人资料
#define MINE_RECHARGE_RECORD          @"recharge_record"   // 充值记录
#define MINE_CASH_RECORD              @"cash_record"       // 提现记录
#define MINE_LEVEL_INFO               @"level"             // 获取等级

#define MINE_CASH                     @"cash"              // 提现
#define MIND_BIND_PHONE               @"phone_binding"     // 绑定手机号
#define MINE_CHANGE_PHONE             @"phone_choice"      // 更换手机号
#define MINE_LOGIN_OUT                @"login_out"         // 退出登录
#define MINE_REPAIR_PWD               @"revise_psd"        // 修改密码
#define MINE_ORDER                    @"works"             // 订单
#define MINE_SURE_ORDER               @"works_confirm"     // 确认订单
#define MINE_COMMENT_ORDER            @"work_assess"       // 评价订单
#define MINE_EXIT_ORDER               @"refund"            // 退款
#define MINE_FEEDBACK                 @"feedback"          // 意见反馈
#define MINE_AGREE_ORDER              @"order_reaction"    // 同意或拒绝预约
#define MINE_HOT_PROBLEM              @"hotask"            // 热门问题
#define MINE_GET_REDCOUNT             @"firstFlushIOS"     // 获取红豆数
#define MINE_BIND_ACCOUNT             @"bangding"          // 绑定账号
#define MINE_CANCEL_ACCOUNT           @"relieve"           // 取消绑定

#endif /* RequestHeader_h */
