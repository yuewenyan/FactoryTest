//
//  BaiduMapView.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "BaiduMapView.h"

@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        _bMapView = [[BMKMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (UIView *)getMapView {
    
    return _bMapView;
}

@end
