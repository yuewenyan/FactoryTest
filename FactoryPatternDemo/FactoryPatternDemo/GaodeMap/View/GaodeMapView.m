//
//  GaodeMapView.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "GaodeMapView.h"

@implementation GaodeMapView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        _gaodeMapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

- (UIView *)getMapView {
    
    return _gaodeMapView;
}


@end
