//
//  OrderListTableViewCell.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "OrderListTableViewCell.h"

@implementation OrderListTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    for (UIView *subView in self.subviews) {
        NSString *subViewName = NSStringFromClass([subView class]);
        if ([subViewName isEqualToString:@"UITableViewCellDeleteConfirmationView"]) {
            //subView.backgroundColor = [UIColor blueColor];
            ((UIView *)[subView.subviews firstObject]).backgroundColor = [UIColor blueColor];
        }
    }
}

- (void)setUpUI {
    
}


@end
