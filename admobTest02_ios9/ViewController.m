//
//  ViewController.m
//  admobTest02_ios9
//
//  Created by tikomo on 2015/11/19.
//  Copyright © 2015年 tikomo. All rights reserved.
//
@import GoogleMobileAds;

#import "ViewController.h"

@interface ViewController () {
    GADBannerView *banner;
}


@property (weak, nonatomic) IBOutlet GADBannerView *viewAdmob;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // この方法だと大丈夫
    banner = [[GADBannerView alloc] initWithAdSize:GADAdSizeFullWidthPortraitWithHeight(GAD_SIZE_320x50.height)];
    
    banner.adUnitID = @"ca-app-pub-5768712291641162/5041310539";
    banner.rootViewController = self;
    [self.viewAdmob addSubview:banner];
    
    [banner loadRequest:[GADRequest request]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
