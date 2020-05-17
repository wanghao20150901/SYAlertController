//
//  SYViewController.m
//  SYAlertController
//
//  Created by wanghao on 05/17/2020.
//  Copyright (c) 2020 wanghao. All rights reserved.
//

#import "SYViewController.h"

#import <SYAlertController/SYAlertController.h>

@interface SYViewController ()

@end

@implementation SYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.view.frame];
    [imageView setImage:[UIImage imageNamed:@"background"]];
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
