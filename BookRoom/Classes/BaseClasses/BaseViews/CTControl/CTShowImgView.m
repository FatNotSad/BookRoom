//
//  CTShowImgView.m
//  HongDouTV
//
//  Created by MinSen on 16/11/1.
//  Copyright © 2016年 MinSen. All rights reserved.
//

#import "CTShowImgView.h"

@interface CTShowImgView ()<UIScrollViewDelegate>
{
    UIScrollView    * _scrollView;
    UIImageView     * _imageView;
    
    CGRect            _oldFrame;
}
@end

@implementation CTShowImgView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self _initView];
    }
    return self;
}

- (void)_initView
{
    _scrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
    _scrollView.scrollsToTop = NO;
    _scrollView.delegate = self;
    [_scrollView setMinimumZoomScale:1.0f];
    [_scrollView setMaximumZoomScale:3.0f];
    [_scrollView setZoomScale:0.5f animated:NO];
    _scrollView.backgroundColor = RGBACOLOR(5, 5, 5, 1);
    _scrollView.alpha = 0;
    [self addSubview:_scrollView];
    
    _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    _imageView.userInteractionEnabled = YES;
    [_scrollView addSubview:_imageView];
    
    // 设置视图销毁
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideImage:)];
    [self addGestureRecognizer: tap];
}

- (void)setImage:(UIImage *)image
{
    _image = image;
    _imageView.image = _image;
    
    // 动画展示
    [UIView animateWithDuration:0.3 animations:^{
        _imageView.frame = CGRectMake(0,([UIScreen mainScreen].bounds.size.height-image.size.height*[UIScreen mainScreen].bounds.size.width/image.size.width)/2, [UIScreen mainScreen].bounds.size.width, image.size.height*[UIScreen mainScreen].bounds.size.width/image.size.width);
        _scrollView.alpha = 1;
    }];
}

- (void)setOldRect:(CGRect)oldRect
{
    _oldRect = oldRect;
    
    _imageView.frame = _oldRect;
}

- (void)hideImage:(UITapGestureRecognizer*)tap{
    [UIView animateWithDuration:0.3 animations:^{
        _imageView.frame = _oldRect;
        _scrollView.alpha = 0;
    
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark -
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _imageView;
}

//当滑动结束时
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale
{
    //把当前的缩放比例设进ZoomScale，以便下次缩放时实在现有的比例的基础上
    NSLog(@"scale is %f",scale);
    [_scrollView setZoomScale:scale animated:YES];
}

//让图片居中
- (void)scrollViewDidZoom:(UIScrollView *)aScrollView
{
    CGFloat offsetX = (_scrollView.bounds.size.width > _scrollView.contentSize.width) ?
    (_scrollView.bounds.size.width - _scrollView.contentSize.width) * 0.5 : 0.0;
    
    CGFloat offsetY = (_scrollView.bounds.size.height > _scrollView.contentSize.height) ?
    (_scrollView.bounds.size.height - _scrollView.contentSize.height) * 0.5 : 0.0;
    
    _imageView.center = CGPointMake(_scrollView.contentSize.width * 0.5 + offsetX,
                                 _scrollView.contentSize.height * 0.5 + offsetY);
}
@end
