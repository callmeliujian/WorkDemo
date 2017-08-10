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
            ((UIView *)[subView.subviews firstObject]).backgroundColor = [UIColor colorWithRed:0.55 green:0.73 blue:0.93 alpha:1.0];
        }
    }
}

//- (void)setFrame:(CGRect)frame {
//    frame.origin.x += 10;
//    frame.origin.y += 10;
//    frame.size.height -= 10;
//    frame.size.width -= 20;
//    [super setFrame:frame];
//}

- (void)setUpUI {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.backgroundColor = [UIColor greenColor];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"work_notify_item_bg"];
    imageView.userInteractionEnabled = YES;
    imageView.layer.cornerRadius = 4;
    imageView.layer.masksToBounds = YES;
    [self.contentView addSubview:imageView];
    
    self.syContentView = [[SYContentView alloc] init];
    self.syContentView.backgroundColor = [UIColor whiteColor];
    [imageView addSubview:self.syContentView];
    
    SYExamineView *examineLabel = [[SYExamineView alloc] init];
    examineLabel.backgroundColor = [UIColor colorWithRed:255/255.0 green:99/255.0 blue:91/255.0 alpha:1/1.0];
;
    [examineLabel sizeToFit];
    [imageView addSubview:examineLabel];
    
    UIEdgeInsets padding = UIEdgeInsetsMake(10, 10, 10, 10);
    
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.top.bottom.left.right.mas_equalTo(self.contentView);
        
        make.top.equalTo(self.contentView.mas_top).with.offset(padding.top);
        make.left.equalTo(self.contentView.mas_left).with.offset(padding.left);
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-padding.bottom);
        make.right.equalTo(self.contentView.mas_right).with.offset(-padding.right);
        
    }];
    
    [self.syContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.mas_equalTo(self.contentView);
        make.right.mas_equalTo(examineLabel.mas_left);
    }];
    
    [examineLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.right.mas_equalTo(self.contentView);
        make.width.mas_equalTo(80);
    }];
    
}

- (void)setModel:(NSObject *)model {
    self.syContentView.distance = @"51";
}


@end
