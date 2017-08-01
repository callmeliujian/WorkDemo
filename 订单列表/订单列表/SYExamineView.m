//
//  SYExamineView.m
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYExamineView.h"
#import "Masonry.h"

@implementation SYExamineView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    
    UILabel *wordLabel = [[UILabel alloc] init];
    wordLabel.textColor = [UIColor whiteColor];
    [wordLabel setText:@"查看"];
    [wordLabel sizeToFit];
    [self addSubview:wordLabel];
    
    UILabel *secondLabel = [[UILabel alloc] init];
    secondLabel.font = [UIFont systemFontOfSize:15];
    secondLabel.textColor = [UIColor whiteColor];
    [secondLabel setText:@"38秒"];
    [secondLabel sizeToFit];
    [self addSubview:secondLabel];
    
    [wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY).mas_offset(-5);
        make.size.mas_equalTo(CGSizeMake(wordLabel.bounds.size.width, wordLabel.bounds.size.height));
    }];
    
    [secondLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.centerY.mas_equalTo(self.mas_centerY).mas_offset(15);
        make.size.mas_equalTo(CGSizeMake(secondLabel.bounds.size.width, secondLabel.bounds.size.height));
    }];
    
}


@end
