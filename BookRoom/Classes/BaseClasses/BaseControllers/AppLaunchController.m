//
//  AppLaunchController.m
//  HongDouTV
//
//  Created by MinSen on 16/10/9.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "AppLaunchController.h"
#import "AppDelegate.h"

@interface AppLaunchController ()<UIScrollViewDelegate>
{
    UIScrollView   * _scrollView;
    UIPageControl  * _pageController;
}
@property (strong, nonatomic) NSArray *imgs;
@property (copy, nonatomic) clickActionBlock clickBlock;
@end

@implementation AppLaunchController

+(instancetype)allocWithImgs:(NSArray *)imgs clickAction:(clickActionBlock)actionBlock{
    if (imgs == nil) {
        imgs = @[];
    }
    AppLaunchController *lauCtr = [AppLaunchController new];
    lauCtr.imgs = imgs;
    lauCtr.clickBlock = actionBlock;
    return lauCtr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self _initView];
    [self.navigationController setNavigationBarHidden:YES];
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)_initView
{
    
    
    self.view.backgroundColor = RGBCOLOR(57, 28, 73);
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.delegate = self;
    
    _scrollView.contentSize = CGSizeMake(Main_Screen_Width*3, 0);
    _scrollView.pagingEnabled = YES;
    [self.view addSubview:_scrollView];
    
    _pageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, Main_Screen_Height-50,Main_Screen_Width, 15)];
    _pageController.numberOfPages = 3;
    [self.view addSubview:_pageController];
    NSArray * array = _imgs;
    
    for (int i = 0; i < array.count; i++) {
        UIImageView * imageView = [[UIImageView alloc] initWithImage:IMG(array[i])];
        imageView.frame = CGRectMake(self.view.bounds.size.width*i, 0, Main_Screen_Width, Main_Screen_Height);
        [_scrollView addSubview:imageView];
    }
    _pageController.hidden = YES;
}

- (void)clickAction
{
    self.clickBlock();
    
//    UNSaveBOOL(YES, SAVE_FIRST_NEWS);
    
//    AppDelegate * appDelegate = [AppDelegate shareInstance];
//    // 判断当前用户是否已登录
//    if (![IP_UserDefaults currentLogin]) {
//        [appDelegate enterLogin];
//    }else{
//        [appDelegate enterHome];
//    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    float  x = scrollView.contentOffset.x;
    if (x > Main_Screen_Width*2) {
        [self clickAction];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [UIView animateWithDuration:0.3 animations:^{
        _pageController.currentPage = scrollView.contentOffset.x/self.view.bounds.size.width;
    }];
}

@end
