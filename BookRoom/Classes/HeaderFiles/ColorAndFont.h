//
//  ColorAndFont.h
//
//  Created by 罗刚 on 16/11/16.
//  Copyright © 2016年 罗刚. All rights reserved.
//

#ifndef ColorAndFont_h
#define ColorAndFont_h

#import "UIColor+Hex.h"

// RGB颜色转换（16进制->10进制）
#define UIColorFromRGB(rgbValue)\
\
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 \
alpha:1.0]

// 字体大小(常规/粗体)
#define BOLDSYSTEMFONT(FONTSIZE)[UIFont boldSystemFontOfSize:FONTSIZE]
#define SYSTEMFONT(FONTSIZE)    [UIFont systemFontOfSize:FONTSIZE]
#define FONT(NAME, FONTSIZE)    [UIFont fontWithName:(NAME) size:(FONTSIZE)]

// 颜色(RGB)
#define RGBCOLOR(r, g, b)       [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r, g, b, a)   [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
// 十六进制颜色
#define RGB_16_COLOR_A(s,a)     [UIColor colorWithHexString:(s) alpha:(a)]
#define RGB_16_COLOR(s)         [UIColor colorWithHexString:(s)]

// 背景颜色
#define HD_BACKGROUND_COLOR  RGB_16_COLOR(@"#f8f8f8")
// 线条颜色
#define HD_LINE_COLOR        RGB_16_COLOR(@"#eaeaea")
// 列表框投影颜色
#define HD_LIST_BORDERCOLOR  RGB_16_COLOR(@"#eaeaea")


// 导航大小以及颜色
#define NAV_TITLE_FONT        SYSTEMFONT(18.0f)
#define NAV_TITLE_COLOR       RGB_16_COLOR(@"#212121")
#define NAV_BTN_FONT          SYSTEMFONT(15.0f)
#define NAV_BTN_COLOR_ON      RGB_16_COLOR(@"#b6b6b6")
#define NAV_BTN_COLOR_OFF     RGB_16_COLOR(@"#727272")

#define HDUserLevel_1 RGBCOLOR(250, 99, 112)
#define HDUserLevel_2 RGBCOLOR(129, 216, 207)
#define HDUserLevel_3 RGBCOLOR(204, 66, 229)
#define HDUserLevel_4 RGBCOLOR(249, 152, 47)
#define HDUserLevel_5 RGBCOLOR(243, 194, 0)
#define HDUserLevel_6 RGBCOLOR(32, 32, 31)
#define HDUserLevel_7 RGBCOLOR(78, 142, 31)

#define COLOR_PINK_BACGROUND [UIColor colorWithHexString:@"F6F2F9"]

#define BASE_FONT    SYSTEMFONT(16.0f)

/**************************** 自定义颜色 ********************************************/
#define BRColorGreen RGBCOLOR(1, 207, 182)
//#define IPColorGray RGBCOLOR(235, 235, 235)
//#define IPColorBoldGray RGBCOLOR(210, 210, 210)
//#define IPColorBaseClear (IS_IPAD ? RGB_16_COLOR_A(@"#ecf6ed", 0.5) : RGB_16_COLOR_A(@"#ebf9f4", 0.5))
//#define IPColorBaseClear [UIColor colorWithPatternImage:IMG(@"bg")]
//#define IPColorBaseClear RGBACOLOR(255, 255, 255, 0.7)
//
//#define IPColorBlack_I RGBCOLOR(0, 0, 0) // 纯黑
//#define IPColorBlack_II RGBCOLOR(33, 33, 33) // 淡一点
//#define IPColorBlack_III RGBCOLOR(46, 46, 46) // 再淡一点

#define BaseFontColor     RGB_16_COLOR(@"#333333")

#endif /* ColorAndFont_h */
