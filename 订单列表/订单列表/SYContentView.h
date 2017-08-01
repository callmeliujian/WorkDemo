//
//  SYContentView.h
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYContentView : UIView

/**
 距离
 */
@property (nonatomic, strong) NSString *distance;

/**
 起点
 */
@property (nonatomic, strong) NSString *startingPoint;

/**
 终点
 */
@property (nonatomic, strong) NSString *endingPoint;

/**
 价格
 */
@property (nonatomic, strong) NSString *price;

@end
