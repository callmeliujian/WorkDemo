//
//  UIButton+ENUM.m
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/26.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import "UIButton+ENUM.h"
#import <objc/runtime.h>


@implementation UIButton (ENUM)

- (void)setButtonType:(ButtonType)buttonType {
    objc_setAssociatedObject(self,@selector(buttonType), [NSNumber numberWithInt:buttonType], OBJC_ASSOCIATION_ASSIGN);
}

- (ButtonType)buttonType {
    return [objc_getAssociatedObject(self, @selector(buttonType)) intValue];
}

@end
