//
//  BaseViewController.h
//  PhoneShop
//
//  Created by 付 亚明 on 13-11-1.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationView.h"

@interface BaseViewController : UIViewController<NavigationViewDelegate>

@property (strong, nonatomic) NavigationView *navigationView;
@property (assign, nonatomic) BOOL navViewHidden;
@property (assign, nonatomic) BOOL backBtnHidden;
@property (assign, nonatomic) BOOL rightBtnHidden;

@end
