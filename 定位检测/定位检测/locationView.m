//
//  locationView.m
//  定位检测
//
//  Created by 刘健 on 2017/8/10.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "locationView.h"
#import "Masonry.h"

@interface locationView ()

@property (nonatomic, strong) UIButton *locationButton;

@property (nonatomic, strong) UIImageView *refreshImageView;

@end

@implementation locationView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    
    [self addSubview:self.locationLabel];
    [self addSubview:self.locationButton];
    [self addSubview:self.refreshImageView];
    
    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.mas_centerY);
        make.left.mas_equalTo(self.mas_left).mas_offset(10);
        make.width.mas_lessThanOrEqualTo([UIScreen mainScreen].bounds.size.width - 92);
    }];
    
    [self.refreshImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.mas_centerY);
        make.right.mas_equalTo(self.locationButton.mas_left).mas_offset(-4);
    }];
    
    [self.locationButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.mas_centerY);
        make.right.mas_equalTo(self.mas_right).mas_offset(-8);
    }];
    
    [self startAnimation];
    
}

- (void)startAnimation {
    CABasicAnimation *animation =  [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fromValue = [NSNumber numberWithFloat:0.f];
    animation.toValue =  [NSNumber numberWithFloat: M_PI *2];
    animation.duration  = 2;
    animation.autoreverses = NO;
    animation.fillMode =kCAFillModeForwards;
    animation.repeatCount = MAXFLOAT; //如果这里想设置成一直自旋转，可以设置为MAXFLOAT，否则设置具体的数值则代表执行多少次
    [self.refreshImageView.layer addAnimation:animation forKey:nil];
}

- (void)stopAnimation {
    [self.refreshImageView.layer removeAllAnimations];
}

#pragma mark - Property

- (UILabel *)locationLabel {
    if (!_locationLabel) {
        _locationLabel = [[UILabel alloc] init];
        _locationLabel.font = [UIFont systemFontOfSize:16];
        _locationLabel.textColor =  [UIColor colorWithRed:41/255.0 green:45/255.0 blue:51/255.0 alpha:1/1.0];
    }
    return _locationLabel;
}

- (UIImageView *)refreshImageView {
    if (!_refreshImageView) {
        _refreshImageView = [[UIImageView alloc] init];
        UIImage *image = [UIImage imageNamed:@"refresh"];
        _refreshImageView.image = image;
    }
    return _refreshImageView;
}

- (UIButton *)locationButton {
    if (!_locationButton) {
        _locationButton = [[UIButton alloc] init];
        [_locationButton setTitle:@"刷新" forState:UIControlStateNormal];
        [_locationButton sizeToFit];
        [_locationButton setTitleColor:  [UIColor colorWithRed:250/255.0 green:88/255.0 blue:86/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        _locationButton.titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _locationButton;
}

@end
