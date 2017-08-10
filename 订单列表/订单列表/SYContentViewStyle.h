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
 司机技能或者订单额外功能
 */
@property (nonatomic, assign) CGRect dsOrOARect;
/**
 细节
 */
@property (nonatomic, assign) CGRect detailViewRect;

@property (nonatomic, assign) CGFloat cellMaxY;

+ (CGFloat)caculationContentViewHeight;

@end
