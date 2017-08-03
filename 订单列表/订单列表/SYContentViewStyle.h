//
//  SYContentViewStyle.h
//  订单列表
//
//  Created by 刘健 on 02/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYContentViewStyle : NSObject

/**
 订单类型
 */
@property (nonatomic, assign) CGRect orderTypeRect;
/**
 距离
 */
@property (nonatomic, assign) CGRect distanceLabelRect;
/**
 司机技能
 */
@property (nonatomic, assign) CGRect driverSkillViewRect;
/**
 细节
 */
@property (nonatomic, assign) CGRect detailViewRect;

@end
