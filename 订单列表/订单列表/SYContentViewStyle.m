//
//  SYContentViewStyle.m
//  订单列表
//
//  Created by 刘健 on 02/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYContentViewStyle.h"

@implementation SYContentViewStyle

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpRect];
    }
    return self;
}

- (void)setUpRect {
    
    self.orderTypeRect = CGRectMake(0, 0, 50, 50);
    
    self.distanceLabelRect = CGRectMake(39, 16, [UIScreen mainScreen].bounds.size.width - 60, 18);
    
    self.dsOrOARect = CGRectMake(39, 40, [UIScreen mainScreen].bounds.size.width, 20);
    
    self.detailViewRect = CGRectMake(39, 70, [UIScreen mainScreen].bounds.size.width, 75);
    
}

+ (CGFloat)caculationContentViewHeight {
    return  16 + 18 + 110 + 18;
}

@end
