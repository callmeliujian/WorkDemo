//
//  SYContentView.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYContentView.h"
#import "Masonry.h"

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
- (void) setUpUI {
    UIImageView *typeOfOrderImageView = [[UIImageView alloc] init];
    typeOfOrderImageView.image = [UIImage imageNamed:@"realtime_script"];
    [typeOfOrderImageView sizeToFit];
    [self addSubview:typeOfOrderImageView];
    
    UILabel *distanceLabel = [[UILabel alloc] init];
    NSString *string = [NSString stringWithFormat:@"%@%@",@"距您",self.distance];
    distanceLabel.font = [UIFont systemFontOfSize:25];
    [distanceLabel setText:string];
    [distanceLabel sizeToFit];
    [self addSubview:distanceLabel];
    
    [typeOfOrderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(typeOfOrderImageView.bounds.size.width, typeOfOrderImageView.bounds.size.height));
    }];
    
    [distanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(typeOfOrderImageView.mas_right).mas_equalTo(5);
        make.top.mas_equalTo(self.mas_top).mas_equalTo(5);
    }];
    
    
}

#pragma  mark - Lazy 

- (NSString *)distance {
    if (!_distance) {
        _distance = [[NSString alloc] init];
        _distance = @"31米";
    }
    return _distance;
}


@end
