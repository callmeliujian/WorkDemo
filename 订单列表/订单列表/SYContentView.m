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
#import "OrderAttachedView.h"
#import "SYDriverSkillView.h"

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
@property (nonatomic, strong) SYDriverSkillView *driverSkillView;
/**
 订单额外需求
 */
@property (nonatomic, strong) OrderAttachedView *orderAttView;
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
    //[self setAllFrame:self.contentViewStyle withImageView:(UIImageView*)self.orderAttView];
    [self setAllFrame:self.contentViewStyle withImageView:(UIImageView *)self.driverSkillView];
    [self setData];
    [self addSubview:self.orderTypeImageView];
    [self addSubview:self.distanceLabel];
    [self addSubview:self.driverSkillView];
    [self addSubview:self.detailView];
    
}


/**
 设置所有元素frame布局

 @param contentViewStyle 所有元素的frame
 @param imageViwe 额外的image（司机技能、订单额外功能）
 */
- (void)setAllFrame:(SYContentViewStyle *)contentViewStyle withImageView:(UIImageView *)imageViwe{
    self.orderTypeImageView.frame = contentViewStyle.orderTypeRect;
    self.distanceLabel.frame = contentViewStyle.distanceLabelRect;
    imageViwe.frame = contentViewStyle.driverSkillViewRect;
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

- (SYDriverSkillView *)driverSkillView {
    if (!_driverSkillView) {
        _driverSkillView = [[SYDriverSkillView alloc] init];
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

- (OrderAttachedView *)orderAttView {
    if (!_orderAttView) {
        _orderAttView = [[OrderAttachedView alloc] init];
        _orderAttView.backgroundColor = [UIColor blueColor];
    }
    return _orderAttView;
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
