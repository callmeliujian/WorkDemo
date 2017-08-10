//
//  SYChangeOrderCity.m
//  定位检测
//
//  Created by 刘健 on 2017/8/10.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "SYChangeOrderCity.h"

@implementation SYChangeOrderCity

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setImage:[UIImage imageNamed:@"arrow"] forState:UIControlStateNormal];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGRect titleLableRect = CGRectMake(0 + 10, self.titleLabel.frame.origin.y, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height);
    
    CGRect imageViewRect = CGRectMake(self.frame.size.width - self.imageView.frame.size.width - 10, self.imageView.frame.origin.y, self.imageView.frame.size.width, self.imageView.frame.size.height);
    self.titleLabel.frame = titleLableRect;
    self.imageView.frame = imageViewRect;
    
}

@end
