//
//  MapEngine.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "MapEngine.h"
#import "BaduFactory.h"

@implementation MapEngine

- (id<MyMapFactory>)getMapFactory {
    
    return [[BaduFactory alloc] init];
//    return [[GaodeFactory alloc] init];
}


@end
