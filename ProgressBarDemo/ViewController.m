//
//  ViewController.m
//  ProgressBarDemo
//
//  Created by Guangquan Yu on 2018/9/12.
//  Copyright © 2018年 ZHM.YU. All rights reserved.
//

#import "ViewController.h"
#import "ProgressBar.h"
#import "ProgressBar2.h"

@interface ViewController ()
@property(nonatomic, strong)UISlider * slider;

@property(nonatomic, strong)ProgressBar * customProgressBar;
@property(nonatomic, strong)ProgressBar2 * customProgressBar2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _slider = [self createSlider:CGRectMake(10, 400, 300, 50) target:self action:@selector(slider:) tintColor:[UIColor greenColor] thumbImage:nil];
    [self.view addSubview:_slider];

   
    [self.view addSubview:self.customProgressBar];
    
    for (int i=0; i<3; i++) {
        UILabel * label = [UILabel new]; 
        label.frame = CGRectMake(10+100*i, 102, 100, 50);
        label.textAlignment = NSTextAlignmentCenter;
        label.text = @"首页";
        label.backgroundColor = i%2?[UIColor greenColor]:[UIColor redColor];
        [self.view addSubview:label];
    }

    
    [self.view addSubview:self.customProgressBar2];
}

#pragma mark - action
- (void)slider:(id)sender{
    float value = ((UISlider*)sender).value;

    self.customProgressBar.progress = value;
    self.customProgressBar2.progress = value;
}



-(ProgressBar *)customProgressBar{
    if (!_customProgressBar) {
        _customProgressBar = [[ProgressBar alloc]initWithFrame:CGRectMake(10, 150, 300, 50)  tintColor:[UIColor blueColor].CGColor lineHeight:5 itemCount:3];
   
        _customProgressBar.backgroundColor = [UIColor clearColor];
        
        self.customProgressBar.colorArr = @[[UIColor redColor],[UIColor blueColor],[UIColor greenColor]];
        
    }
    return _customProgressBar;
}
-(ProgressBar2 *)customProgressBar2{
    if (!_customProgressBar2) {
        _customProgressBar2 = [[ProgressBar2 alloc]initWithFrame:CGRectMake(10, 160, 300, 50)  tintColor:[UIColor blueColor].CGColor lineHeight:5 itemCount:3];
  
        _customProgressBar2.backgroundColor = [UIColor clearColor];
        
        NSMutableArray * itemArr = @[].mutableCopy;
        for (int i=0; i<3; i++) {
            CGFloat width = 20;
            CGFloat allWidth = 300;
            CGFloat itemWidth = allWidth/3.0;
            CGFloat kxWidth = itemWidth - width;
            ProgressBar2Item * item = [ProgressBar2Item new];
            item.left = kxWidth/2.0 + itemWidth*i;
            item.width = width;
            item.color = [UIColor redColor];
            [itemArr addObject:item];
        }
        self.customProgressBar2.itemArr = itemArr;
        
    }
    return _customProgressBar2;
}
#pragma mark -

- (UISlider *)createSlider:(CGRect)frame target:(NSObject *)target action:(SEL)action tintColor:(UIColor *)tintColor thumbImage:(UIImage *)thumbImage {
    UISlider * slider = [[UISlider alloc]initWithFrame:frame];
    slider.maximumValue = 1.0;
    slider.minimumValue = 0.0;
    slider.value = 0.0;
    [slider addTarget:target action:action forControlEvents:UIControlEventValueChanged];
    slider.tintColor = tintColor;
    if (thumbImage) {
        [slider setThumbImage:thumbImage forState:UIControlStateNormal];
    }
    return slider;
}

@end
