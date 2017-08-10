//
//  PositioningDetectionView.m
//  定位检测
//
//  Created by 刘健 on 10/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "PositioningDetectionView.h"

#include "SYChangeOrderCity.h"

@interface PositioningDetectionView ()

@property (nonatomic, strong) SYChangeOrderCity *changeOrderCity;

@end

@implementation PositioningDetectionView

#pragma mark -LifeCycle

- (instancetype)init {
    self = [super init];
    if (self) {
        _isInCurrentCity = NO;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setUpUI];
}

#pragma mark - Function

- (void)setUpUI {
    if (!self.isInCurrentCity) {
        
        self.changeOrderCity.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height / 2);
        [self addSubview:self.changeOrderCity];
        
        UIView *dividingView = [[UIView alloc] initWithFrame:CGRectMake(0, self.bounds.size.height / 2, self.bounds.size.width, 1)];
        dividingView.backgroundColor = [UIColor colorWithRed:224/255.0 green:224/255.0 blue:224/255.0 alpha:1/1.0];
        [self addSubview:dividingView];
        
        self.locationV.frame = CGRectMake(0, self.bounds.size.height / 2 - 1, self.bounds.size.width, self.bounds.size.height / 2);
        self.locationV.backgroundColor = [UIColor blueColor];
        
        [self addSubview:self.locationV];
        
    }
    
}

#pragma mark - Property

- (locationView *)locationV {
    if (!_locationV) {
        _locationV = [[locationView alloc] init];
    }
    return _locationV;
}

- (SYChangeOrderCity *)changeOrderCity {
    if (!_changeOrderCity) {
        _changeOrderCity = [[SYChangeOrderCity alloc] init];
        _changeOrderCity.titleLabel.font = [UIFont systemFontOfSize:16];
        _changeOrderCity.backgroundColor = [UIColor redColor];
        [_changeOrderCity setTitle:@"切换到定位城市接单" forState:UIControlStateNormal];
        [_changeOrderCity setTitleColor:[UIColor colorWithRed:41/255.0 green:45/255.0 blue:51/255.0 alpha:1/1.0] forState:UIControlStateNormal];
    }
    return _changeOrderCity;
}



@end
