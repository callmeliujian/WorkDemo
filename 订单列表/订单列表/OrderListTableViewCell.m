//
//  OrderListTableViewCell.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "OrderListTableViewCell.h"
#import "Masonry.h"
#import "SYExamineView.h"
#import "SYContentView.h"

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
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"work_order_item_bg.9"];
    imageView.userInteractionEnabled = YES;
    imageView.layer.cornerRadius = 5;
    imageView.layer.masksToBounds = YES;
    [self.contentView addSubview:imageView];
    
    SYContentView *contentView = [[SYContentView alloc] init];
    contentView.backgroundColor = [UIColor whiteColor];
    [imageView addSubview:contentView];
    
    SYExamineView *examineLabel = [[SYExamineView alloc] init];
    examineLabel.backgroundColor = [UIColor redColor];
    [examineLabel sizeToFit];
    [imageView addSubview:examineLabel];
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.right.mas_equalTo(self.contentView);
    }];
    
    [contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.mas_equalTo(self.contentView);
        make.right.mas_equalTo(examineLabel.mas_left);
    }];
    
    [examineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.mas_equalTo(self.contentView);
        make.width.mas_equalTo(80);
//        make.top.bottom.mas_equalTo(self.contentView);
//        make.width.mas_equalTo(examineLabel.bounds.size.width);
    }];
    
}


@end
