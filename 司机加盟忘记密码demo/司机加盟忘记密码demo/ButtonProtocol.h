//
//  ButtonProtocol.h
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/25.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ButtonProtocol <NSObject>

@optional
- (void)theMethodOfProtocol:(UIButton *)btn;

@end
