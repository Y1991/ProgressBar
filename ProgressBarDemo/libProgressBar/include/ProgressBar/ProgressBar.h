//
//  ProgressBar.h
//  ProgressBar
//
//  Created by Guangquan Yu on 2018/9/12.
//  Copyright © 2018年 ZHM.YU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProgressBar : UIView
@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, strong) NSArray<UIColor *> * colorArr;

/**
 创建进度条
 
 @param frame 进度条的尺寸
 @param tintColor 线条的颜色
 @param lineHeight 线的高度
 @param itemCount 进度条宽度内可以放下n个小条
 @return 进度条
 */
- (instancetype)initWithFrame:(CGRect)frame tintColor:(CGColorRef)tintColor lineHeight:(CGFloat)lineHeight itemCount:(NSInteger)itemCount;
@end
