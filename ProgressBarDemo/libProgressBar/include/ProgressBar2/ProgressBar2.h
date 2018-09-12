//
//  ProgressBar2.h
//  ProgressBar2
//
//  Created by Guangquan Yu on 2018/9/12.
//  Copyright © 2018年 ZHM.YU. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ProgressBar2Item : NSObject

@property (nonatomic, assign) CGFloat left; // 静态时 左边的位置
@property (nonatomic, assign) CGFloat width; // 静态时 宽度
@property (nonatomic, strong) UIColor * color;

@end

@interface ProgressBar2 : UIView
@property (nonatomic, assign) CGFloat progress;
@property (nonatomic, strong) NSArray<ProgressBar2Item *> * itemArr;
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
