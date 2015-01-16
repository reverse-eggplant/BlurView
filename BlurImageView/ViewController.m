//
//  ViewController.m
//  BlurImageView
//
//  Created by malong on 15/1/13.
//  Copyright (c) 2015年 LanOu3g. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ML_BlurView.h"
#include <dispatch/dispatch.h>

#define IMAGE_FILE(imageName,type) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:imageName ofType:type]]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    UIImageView * blurImageView = [[UIImageView alloc]initWithImage:IMAGE_FILE(@"guoke", @"png")];
    blurImageView.frame = self.view.bounds;
    [self.view addSubview:blurImageView];
    [blurImageView showBlurWithDuration:5.0 blurStyle:kUIBlurEffectStyleLight hidenViews:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
