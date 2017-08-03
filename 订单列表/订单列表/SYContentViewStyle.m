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
    
    self.distanceLabelRect = CGRectMake(50, 10, [UIScreen mainScreen].bounds.size.width, 25);
    
    self.driverSkillViewRect = CGRectMake(50, 40, [UIScreen mainScreen].bounds.size.width, 20);
    
    self.detailViewRect = CGRectMake(50, 70, [UIScreen mainScreen].bounds.size.width, 200);
    
}

@end
