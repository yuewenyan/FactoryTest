//
//  GaodeFactory.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "GaodeFactory.h"
#import "GaodeMapView.h"

@implementation GaodeFactory

- (instancetype)init {
    
    if (self = [super init]) {
        // 高德
        [AMapServices sharedServices].apiKey = @"ee7c5c632ce97fe740569f2302efc4f7";
        [AMapServices sharedServices].enableHTTPS = YES;
    }
    return self;
}

- (id<MyMapView>)getMapView:(CGRect)rect {
    
    return [[GaodeMapView alloc] initWithFrame:rect];
}

@end
