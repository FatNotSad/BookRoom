//
//  BCSegmentControl.h
//  BarCode
//
//  Created by ghostwasd on 13-4-14.
//  Copyright (c) 2013年 ghostwasd. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SZSegmentControlDelegate;

@interface SZSegmentControl : UIView
{
//    NSInteger selectedIndex;
    NSMutableArray *arrayButtons;
//    UIEdgeInsets inset;
}

@property (nonatomic, assign) id<SZSegmentControlDelegate> delegate;
@property (nonatomic, assign) UIEdgeInsets inset;
@property (nonatomic, readonly) NSInteger selectedIndex;

- (void)setButtons:(NSArray *)array;
- (void)setSelectedIndex:(NSInteger)index;

@end


@protocol SZSegmentControlDelegate <NSObject>

- (void)segmentControl:(SZSegmentControl *)control willSelectSegmentAtIndex:(NSInteger)index;
- (void)segmentControl:(SZSegmentControl *)control didSelectedSegmentAtIndex:(NSInteger)index;

@end
