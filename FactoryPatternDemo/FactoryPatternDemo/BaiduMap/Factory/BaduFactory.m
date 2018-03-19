//
//  BaduFactory.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "BaduFactory.h"
#import "BaiduMapView.h"

// 百度头文件
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
//#import <BaiduMapAPI_Search/BMKSearchComponent.h>//引入检索功能所有的头文件
//#import <BaiduMapAPI_Cloud/BMKCloudSearchComponent.h>//引入云检索功能所有的头文件
//#import <BaiduMapAPI_Location/BMKLocationComponent.h>//引入定位功能所有的头文件
//#import <BaiduMapAPI_Utils/BMKUtilsComponent.h>//引入计算工具所有的头文件
//#import <BaiduMapAPI_Radar/BMKRadarComponent.h>//引入周边雷达功能所有的头文件
#import <BaiduMapAPI_Map/BMKMapView.h>//只引入所需的单个头文件

@interface BaduFactory ()
{
    BMKMapManager* _mapManager;
}


@end


@implementation BaduFactory

- (instancetype)init {
    
    if (self = [super init]) {
        
//    百度
        _mapManager = [[BMKMapManager alloc]init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        BOOL ret = [_mapManager start:@"LCFtc8OP1slMCpVXcgskDbpqpGNP7Gep"  generalDelegate:nil];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

- (id<MyMapView>)getMapView:(CGRect)rect {

    return [[BaiduMapView alloc] initWithFrame:rect];
}

@end
