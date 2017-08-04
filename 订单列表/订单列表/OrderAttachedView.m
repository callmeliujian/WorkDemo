//
//  OrderAttachedView.m
//  订单列表
//
//  Created by 刘健 on 04/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "OrderAttachedView.h"

@interface OrderAttachedView ()

/**
 回款
 */
@property (nonatomic, strong) UIImageView *backMoneyImageView;
/**
 装卸
 */
@property (nonatomic, strong) UIImageView *carryImageView;
/**
 备注
 */
@property (nonatomic, strong) UIImageView *remarkImageView;
/**
 回单
 */
@property (nonatomic, strong) UIImageView *returnImageView;
/**
 司机所需额外服务存在这个数组中
 */
@property (nonatomic, strong) NSMutableArray *typeArray;


@end

@implementation OrderAttachedView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self.typeArray addObject:self.backMoneyImageView];
        [self.typeArray addObject:self.carryImageView];
        [self.typeArray addObject:self.remarkImageView];
        [self.typeArray addObject:self.returnImageView];
        [self setUpUIWithTypeArray:self.typeArray];
    }
    return self;
}

- (void)setUpUIWithTypeArray:(NSMutableArray *)typeArray {
    NSUInteger i = 0;
    for (UIImageView *imageView in typeArray) {
        [self addSubview:imageView];
        imageView.frame = CGRectMake(i * 60, 0, 50, 30);
        i++;
    }
}

#pragma mark - Property

- (UIImageView *)backMoneyImageView {
    if (!_backMoneyImageView) {
        UIImage *image = [UIImage imageNamed:@"huikuan"];
        _backMoneyImageView = [[UIImageView alloc] init];
        _backMoneyImageView.image = image;
    }
    return _backMoneyImageView;
}

- (UIImageView *)carryImageView {
    if (!_carryImageView) {
        UIImage *image = [UIImage imageNamed:@"icon_carry"];
        _carryImageView = [[UIImageView alloc] init];
        _carryImageView.image = image;
    }
    return _carryImageView;
}

- (UIImageView *)remarkImageView {
    if (!_remarkImageView) {
        UIImage *image = [UIImage imageNamed:@"icon_remark"];
        _remarkImageView = [[UIImageView alloc] init];
        _remarkImageView.image = image;
    }
    return _remarkImageView;
}

- (UIImageView *)returnImageView {
    if (!_returnImageView) {
        UIImage *image = [UIImage imageNamed:@"icon_return"];
        _returnImageView = [[UIImageView alloc] init];
        _returnImageView.image = image;
    }
    return _returnImageView;
}

- (NSMutableArray *)typeArray {
    if (!_typeArray) {
        _typeArray = [[NSMutableArray alloc] init];
    }
    return _typeArray;
}

@end
