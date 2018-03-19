//
//  ViewController.m
//  FactoryPatternDemo
//
//  Created by 闫跃文 on 2018/3/19.
//  Copyright © 2018年 闫跃文. All rights reserved.
//

#import "ViewController.h"
#import <BaiduMapAPI_Map/BMKMapView.h>
#import <MAMapKit/MAMapKit.h>
#import "MapEngine.h"

#import "BaduFactory.h"
#import "BaiduMapView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MapEngine *engine = [[MapEngine alloc] init];
    BaduFactory *bdFactory = (BaduFactory *)[engine getMapFactory];
    BaiduMapView *map = (BaiduMapView *)[[bdFactory getMapView:self.view.bounds] getMapView];
    self.view = map;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
