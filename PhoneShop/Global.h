//
//  Global.h
//  Test
//
//  Created by 付 亚明 on 13-5-25.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

#define iPhone4                 ([UIScreen mainScreen].bounds.size.height == 480 ? YES : NO)
#define iPhone5                 ([UIScreen mainScreen].bounds.size.height == 568 ? YES : NO)
#define iPad                    ([UIDevice currentDevice].userInterfaceIdiom == UIUserInterfaceIdiomPad ? YES : NO)
#define MainScreenWidth         [UIScreen mainScreen].bounds.size.width
#define MainScreenHeight        [UIScreen mainScreen].bounds.size.height
#define UserDefault             [NSUserDefaults standardUserDefaults]
#define CurrentDeviceVersion    [[[UIDevice currentDevice] systemVersion] floatValue]
