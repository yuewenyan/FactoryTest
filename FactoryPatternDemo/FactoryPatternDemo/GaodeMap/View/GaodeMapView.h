//
//  GaodeMapView.h
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyMapView.h"

#import <MAMapKit/MAMapKit.h>


@interface GaodeMapView : UIView <MyMapView>

@property (nonatomic, strong) MAMapView * gaodeMapView;

@end
