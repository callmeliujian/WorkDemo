//
//  SYDriverSkillView.m
//  订单列表
//
//  Created by 刘健 on 04/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import "SYDriverSkillView.h"

@interface SYDriverSkillView ()

/**
 司机技能label文字
 */
@property (nonatomic, strong) NSMutableArray <NSString *>*driveSkillTextMuArray;
/**
 司机技能label背景颜色
 */
@property (nonatomic, strong) NSMutableArray <UIColor *>*driveSkillColorMuArray;

@end

@implementation SYDriverSkillView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI {
    if (self.driveSkillColorMuArray!= NULL && self.driveSkillColorMuArray.count >0 &&self.driveSkillTextMuArray!= NULL && self.driveSkillTextMuArray.count >0 && (self.driveSkillTextMuArray.count == self.driveSkillColorMuArray.count)) {
        NSUInteger i = 0;
        CGFloat j = 0;
        for (NSString *string in self.driveSkillTextMuArray) {
            UILabel *label = [[UILabel alloc] init];
            [self addSubview:label];
            label.text = string;
            label.backgroundColor = self.driveSkillColorMuArray[i];
            [label sizeToFit];
            i++;
            label.frame = CGRectMake(j , 0, label.bounds.size.width, label.bounds.size.height);
            j = label.bounds.size.width + 10;
        }
    }
    
}

#pragma mark - Property

- (NSMutableArray *)driveSkillTextMuArray {
    if (!_driveSkillTextMuArray) {
        _driveSkillTextMuArray = [NSMutableArray array];
    }
    return _driveSkillTextMuArray;
}

- (NSMutableArray *)driveSkillColorMuArray {
    if (_driveSkillColorMuArray) {
        _driveSkillColorMuArray = [NSMutableArray array];
    }
    return _driveSkillColorMuArray;
}

@end
