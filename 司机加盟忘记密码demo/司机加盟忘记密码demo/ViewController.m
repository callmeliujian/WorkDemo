//
//  ViewController.m
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/25.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "ViewController.h"
#import "ContainerView.h"

@interface ViewController ()<ButtonProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ContainerView *containerView = [[ContainerView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 50)];
    containerView.backgroundColor = [UIColor blackColor];
    containerView.delegate = self;
    [self.view addSubview:containerView];
    
}

- (void)theMethodOfProtocol:(UIButton *)btn {
    NSLog(@"%ld",(long)btn.tag);
}


@end
