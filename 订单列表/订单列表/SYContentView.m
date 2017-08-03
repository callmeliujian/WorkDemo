//
//  SYContentView.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYContentView.h"
#import "Masonry.h"
#import "SYContentViewStyle.h"
#import "SYDetailView.h"

@interface SYContentView()

/**
 设置frame的model
 */
@property (nonatomic, strong) SYContentViewStyle *contentViewStyle;

/**
 订单类型
 */
@property (nonatomic, strong) UIImageView *orderTypeImageView;
/**
 距离
 */
@property (nonatomic, strong) UILabel *distanceLabel;
/**
 司机技能
 */
@property (nonatomic, strong) UIView *driverSkillView;
/**
 细节展示（起点、终点、收入）
 */
@property (nonatomic, strong) SYDetailView *detailView;

@end

@implementation SYContentView

#pragma mark - LifeCycle
- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}

#pragma mark - function
- (void)setUpUI {
    
    self.orderTypeImageView.image = [UIImage imageNamed:@"realtime_script"];
    [self.orderTypeImageView sizeToFit];
    [self setAllFrame:self.contentViewStyle];
    [self setData];
    [self addSubview:self.orderTypeImageView];
    [self addSubview:self.distanceLabel];
    [self addSubview:self.driverSkillView];
    [self addSubview:self.detailView];
    
}

- (void)setAllFrame:(SYContentViewStyle *)contentViewStyle {
    self.orderTypeImageView.frame = contentViewStyle.orderTypeRect;
    self.distanceLabel.frame = contentViewStyle.distanceLabelRect;
    self.driverSkillView.frame = contentViewStyle.driverSkillViewRect;
    self.detailView.frame = contentViewStyle.detailViewRect;
}

- (void)setData {
    self.distance = [NSString stringWithFormat:@"%@%@",@"距您",self.distance];
    self.distanceLabel.text = self.distance;
}

#pragma mark - Property

- (SYContentViewStyle *)contentViewStyle {
    if (!_contentViewStyle) {
        _contentViewStyle = [[SYContentViewStyle alloc] init];
    }
    return _contentViewStyle;
}

- (UIImageView *)orderTypeImageView {
    if (!_orderTypeImageView) {
        _orderTypeImageView = [[UIImageView alloc] init];
    }
    return _orderTypeImageView;
}

- (UILabel *)distanceLabel {
    if (!_distanceLabel) {
        _distanceLabel = [[UILabel alloc] init];
        //_distanceLabel.backgroundColor = [UIColor blackColor];
    }
    return _distanceLabel;
}

- (UIView *)driverSkillView {
    if (!_driverSkillView) {
        _driverSkillView = [[UIView alloc] init];
        _driverSkillView.backgroundColor = [UIColor yellowColor];
    }
    return _driverSkillView;
}

- (SYDetailView *)detailView {
    if (!_detailView) {
        _detailView = [[SYDetailView alloc] init];
        _detailView.backgroundColor = [UIColor redColor];
    }
    return _detailView;
}

- (NSString *)distance {
    if (!_distance) {
        _distance = [[NSString alloc] init];
        _distance = @"31米";
    }
    return _distance;
}

@end

















//- (void) setUpUI {
//    UIImageView *typeOfOrderImageView = [[UIImageView alloc] init];
//    typeOfOrderImageView.image = [UIImage imageNamed:@"realtime_script"];
//    [typeOfOrderImageView sizeToFit];
//    [self addSubview:typeOfOrderImageView];
//    
//    UILabel *distanceLabel = [[UILabel alloc] init];
//    NSString *string = [NSString stringWithFormat:@"%@%@",@"距您",self.distance];
//    distanceLabel.font = [UIFont systemFontOfSize:25];
//    [distanceLabel setText:string];
//    [distanceLabel sizeToFit];
//    [self addSubview:distanceLabel];
//    
//    [typeOfOrderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.top.mas_equalTo(self);
//        make.size.mas_equalTo(CGSizeMake(typeOfOrderImageView.bounds.size.width, typeOfOrderImageView.bounds.size.height));
//    }];
//    
//    [distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(typeOfOrderImageView.mas_right).mas_equalTo(5);
//        make.top.mas_equalTo(self.mas_top).mas_equalTo(5);
//    }];
//    
//    
//}
