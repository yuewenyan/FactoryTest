//
//  MyMapFactory.h
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyMapView.h"


@protocol MyMapFactory <NSObject>

- (id<MyMapView>)getMapView:(CGRect)rect;

@end
