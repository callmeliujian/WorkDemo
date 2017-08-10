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
    wordLabel.font = [UIFont systemFontOfSize:19];
    wordLabel.numberOfLines = 0;
    [wordLabel setText:@"查\n看"];
    [wordLabel sizeToFit];
    [self addSubview:wordLabel];
    
    UILabel *secondLabel = [[UILabel alloc] init];
    secondLabel.font = [UIFont systemFontOfSize:12];
    secondLabel.textColor = [UIColor whiteColor];
    [secondLabel setText:@"(38秒)"];
    [secondLabel sizeToFit];
    [self addSubview:secondLabel];
    
    [wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.center);
    }];
    
    [secondLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.mas_centerX);
        make.top.mas_equalTo(wordLabel.mas_bottom).mas_equalTo(20);
    }];
    
}


@end
