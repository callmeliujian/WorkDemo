//
//  SYDetailView.m
//  订单列表
//
//  Created by 刘健 on 03/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYDetailView.h"
#import "Masonry.h"

@interface SYDetailView ()

@property (nonatomic, strong) UIImageView *startImageView;
@property (nonatomic, strong) UIImageView *endImageView;
@property (nonatomic, strong) UIImageView *priceImageView;

@property (nonatomic, strong) UILabel *startLabel;
@property (nonatomic, strong) UILabel *endLabel;
@property (nonatomic, strong) UILabel *priceLabel;

@property (nonatomic, assign) BOOL isMultipleAdd;
@property (nonatomic, strong) UIImageView *multipleAddImageView;

@end

@implementation SYDetailView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    
    [self addSubview:self.startImageView];
    [self addSubview:self.endImageView];
    [self addSubview:self.priceImageView];
    [self addSubview:self.startLabel];
    [self addSubview:self.endLabel];
    [self addSubview:self.priceLabel];
        
    [self.startImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(self);
    }];
    
    [self.startLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.startImageView.mas_right).mas_offset(8);
        make.top.mas_equalTo(self.startImageView.mas_top);
        make.right.mas_lessThanOrEqualTo(self.mas_right).mas_offset(-150);
    }];
    
    
    [self.endImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.startImageView.mas_bottom).mas_offset(8);
        make.left.mas_equalTo(self.startImageView.mas_left);
    }];
    
    if (self.isMultipleAdd) {
        [self addSubview:self.multipleAddImageView];
        [self.multipleAddImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.startImageView.mas_bottom).mas_offset(8);
            make.right.mas_equalTo(self).mas_offset(-140);
        }];
        
        [self.endLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.startImageView.mas_bottom).mas_offset(8);
            make.left.mas_equalTo(self.endImageView.mas_right).mas_offset(8);
            make.right.mas_lessThanOrEqualTo(self.multipleAddImageView.mas_left);
        }];
        
    } else {
        [self.endLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.startImageView.mas_bottom).mas_offset(8);
            make.left.mas_equalTo(self.endImageView.mas_right).mas_offset(8);
            make.right.mas_lessThanOrEqualTo(self.mas_right).mas_offset(-120);
        }];
    }
    
    [self.priceImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.endImageView.mas_bottom).mas_offset(8);
        make.left.mas_equalTo(self.startImageView.mas_left);
    }];
    
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.endImageView.mas_bottom).mas_offset(8);
        make.left.mas_equalTo(self.priceImageView.mas_right).mas_offset(8);
        make.right.mas_lessThanOrEqualTo(self.mas_right).mas_offset(-120);
    }];
}

#pragma mark - Property

-(UIImageView *)startImageView {
    if (!_startImageView) {
        UIImage *image = [UIImage imageNamed:@"startlocal"];
        _startImageView = [[UIImageView alloc] initWithImage:image];
    }
    return _startImageView;
}

- (UIImageView *)endImageView {
    if (!_endImageView) {
        UIImage *image = [UIImage imageNamed:@"endlocal"];
        _endImageView = [[UIImageView alloc] initWithImage:image];
    }
    return _endImageView;
}

- (UIImageView *)priceImageView {
    if (!_priceImageView) {
        UIImage *image = [UIImage imageNamed:@"orderlocal_fee"];
        _priceImageView = [[UIImageView alloc] initWithImage:image];
    }
    return _priceImageView;
}

- (UILabel *)startLabel {
    if (!_startLabel) {
        _startLabel = [[UILabel alloc] init];
        _startLabel.text = @"桑普大厦恍恍惚惚恍恍惚惚恍恍惚惚恍恍惚惚恍恍惚惚恍恍惚惚哈哈哈";
        _startLabel.font = [UIFont systemFontOfSize:16];
    }
    return _startLabel;
}

- (UILabel *)endLabel {
    if (!_endLabel) {
        _endLabel = [[UILabel alloc] init];
        _endLabel.text = @"友谊社区（北三环西三天0hhhhhhhhhhhhhhhhhh";
        _endLabel.font = [UIFont systemFontOfSize:16];
        [_endLabel sizeToFit];
    }
    return _endLabel;
}

- (UILabel *)priceLabel {
    if (!_priceLabel) {
        _priceLabel = [[UILabel alloc] init];
        _priceLabel.text = @"$69.0(总收入)";
        _priceLabel.font = [UIFont systemFontOfSize:16];
        [_priceLabel sizeToFit];
    }
    return _priceLabel;
}

- (UIImageView *)multipleAddImageView {
    if (!_multipleAddImageView && self.isMultipleAdd) {
        UIImage *image = [UIImage imageNamed:@"icon_multi"];
        _multipleAddImageView = [[UIImageView alloc] initWithImage:image];
    }
    return _multipleAddImageView;
}

- (BOOL)isMultipleAdd {
    _isMultipleAdd = YES;
    return _isMultipleAdd;
}


@end
