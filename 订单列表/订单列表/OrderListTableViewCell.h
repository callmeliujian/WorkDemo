//
//  OrderListTableViewCell.h
//  订单列表
//
//  Created by 刘健 on 01/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SYContentView.h"

@interface OrderListTableViewCell : UITableViewCell

@property (nonatomic, strong) SYContentView *syContentView;
@property (nonatomic, strong) NSObject *model;

@end
