//
//  ContainerView.m
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/25.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "ContainerView.h"
#import "UIButton+ENUM.h"
#import "Masonry.h"

@implementation ContainerView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpUIWithFrame:frame];
    }
    return self;
}

- (void)setUpUIWithFrame:(CGRect)frame {
//    CALayer *redLayer = [CALayer layer];
//    redLayer.frame = CGRectMake([UIScreen mainScreen].bounds.size.width / 2, 0, 0.6, frame.size.height);
//    redLayer.backgroundColor = [UIColor redColor].CGColor;
//    [self.layer addSublayer:redLayer];
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self addSubview:redView];
    
    UIButton *driverJoinButton = [[UIButton alloc] init];
    [driverJoinButton setTitle:@"司机加盟" forState:UIControlStateNormal];
    [driverJoinButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [driverJoinButton addTarget:self action:@selector(driverJoinBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    driverJoinButton.buttonType = ButtonTypeDriveJion;
    [self addSubview:driverJoinButton];
    
    UIButton *forgetPasswordButton = [[UIButton alloc] init];
    [forgetPasswordButton setTitle:@"忘记密码" forState:UIControlStateNormal];
    [forgetPasswordButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [forgetPasswordButton addTarget:self action:@selector(fogetPasswordBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    forgetPasswordButton.buttonType = ButtonTypeForgetPWD;
    [self addSubview:forgetPasswordButton];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(1);
    }];
    
    [driverJoinButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(forgetPasswordButton.mas_width);
        make.centerX.equalTo(self).mas_equalTo(-80);
    }];
    
    [forgetPasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(self);
        make.width.mas_equalTo(driverJoinButton.mas_width);
        make.centerX.equalTo(self).mas_equalTo(80);
    }];
}

- (void)driverJoinBtnClicked:(UIButton *)btn {
    btn.enabled = NO;
    if ([self.delegate respondsToSelector:@selector(theMethodOfProtocol:)]) {
        [self.delegate theMethodOfProtocol:btn];
    }
}

- (void)fogetPasswordBtnClicked:(UIButton *)btn {
    btn.enabled = NO;
    if ([self.delegate respondsToSelector:@selector(theMethodOfProtocol:)]) {
        [self.delegate theMethodOfProtocol:btn];
    }
}

@end
