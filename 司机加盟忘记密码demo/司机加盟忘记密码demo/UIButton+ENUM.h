//
//  UIButton+ENUM.h
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/26.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ButtonType) {
    ButtonTypeNone,
    ButtonTypeDriveJion,
    ButtonTypeForgetPWD
};

@interface UIButton (ENUM)

@property (nonatomic, assign) ButtonType buttonType;

@end
