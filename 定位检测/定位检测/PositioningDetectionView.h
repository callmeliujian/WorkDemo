//
//  PositioningDetectionView.h
//  定位检测
//
//  Created by 刘健 on 10/08/2017.
//  Copyright © 2017 刘健. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "locationView.h"

@interface PositioningDetectionView : UIView

@property (nonatomic, assign) BOOL isInCurrentCity;

@property (nonatomic, strong) locationView *locationV;

@end
