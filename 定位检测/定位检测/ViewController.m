//
//  ViewController.m
//  定位检测
//
//  Created by 刘健 on 2017/8/10.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "ViewController.h"
#import "locationView.h"
#import "SYChangeOrderCity.h"

#import "PositioningDetectionView.h"
#import "Masonry.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PositioningDetectionView *postionView = [[PositioningDetectionView alloc] init];
    postionView.locationV.locationLabel.text = @"位置：北京市朝阳区北苑路北苑家园";
    [self.view addSubview:postionView];
    
    [postionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.left.right.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view.mas_top).mas_equalTo(600);
    }];
    
}



@end
