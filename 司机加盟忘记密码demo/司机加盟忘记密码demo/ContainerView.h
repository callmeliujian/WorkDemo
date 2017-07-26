//
//  ContainerView.h
//  司机加盟忘记密码demo
//
//  Created by 刘健 on 2017/7/25.
//  Copyright © 2017年 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonProtocol.h"

@interface ContainerView : UIView <ButtonProtocol>

@property (nonatomic, weak) id<ButtonProtocol> delegate;

@end
