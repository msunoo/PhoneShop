//
//  BaseViewController.m
//  PhoneShop
//
//  Created by 付 亚明 on 13-11-1.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    CGRect navViewRect = CGRectMake(0, 0, 320, 44);
    if (CurrentDeviceVersion >= 7.0)
    {
        navViewRect = CGRectMake(0, 20, 320, 44);
    }
    _navigationView = [[NavigationView alloc] initWithFrame:navViewRect];
    _navigationView.delegate = self;
    [self.view addSubview:_navigationView];
}

- (void)setNavViewHidden:(BOOL)navViewHidden
{
    if (navViewHidden)
    {
        self.navigationView.hidden = YES;
    }
    else
    {
        self.navigationView.hidden = NO;
    }
}

- (void)setBackBtnHidden:(BOOL)backBtnHidden
{
    if (backBtnHidden)
    {
        self.navigationView.backBtn.hidden = YES;
    }
    else
    {
        self.navigationView.backBtn.hidden = NO;
    }
}

- (void)setRightBtnHidden:(BOOL)rightBtnHidden
{
    if (rightBtnHidden)
    {
        self.navigationView.rightBtn.hidden = YES;
    }
    else
    {
        self.navigationView.rightBtn.hidden = NO;
    }
}

- (void)navigationView:(NavigationView *)view didClickedButtonWithType:(AllButtonType)buttonType
{
    
}

@end
