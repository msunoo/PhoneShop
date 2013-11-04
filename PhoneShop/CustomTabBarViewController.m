//
//  CustomTabBarViewController.m
//  PhoneShop
//
//  Created by 付 亚明 on 13-11-1.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

#import "CustomTabBarViewController.h"

@interface CustomTabBarViewController ()

@end

@implementation CustomTabBarViewController

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //添加通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBadgeValue) name:@"AddCommodityToShoppingCartNotification" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBadgeValue) name:@"CommodityCountsChangedNotification" object:nil];
    
    //设置tabbar背景
    self.tabBar.backgroundImage = [UIImage imageNamed:@"softkey.png"];
    
    //设置tabbarItem背景
    UIStoryboard *mainPage_storyboard = [UIStoryboard storyboardWithName:MAINPAGE_STORYBOARD bundle:[NSBundle mainBundle]];
    UIViewController *mainPageVC = mainPage_storyboard.instantiateInitialViewController;
    UITabBarItem *tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"softkey_icon01_down.png"] tag:0];
    [tabBarItem1 setFinishedSelectedImage:[UIImage imageNamed:@"softkey_icon01_down.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"softkey_icon01.png"]];
    mainPageVC.tabBarItem = tabBarItem1;
    
    UIStoryboard *searchPage_storyboard = [UIStoryboard storyboardWithName:SEARCHPAGE_STORYBOARD bundle:[NSBundle mainBundle]];
    UIViewController *searchpageVC = searchPage_storyboard.instantiateInitialViewController;
    UITabBarItem *tabBarItem2 = [[UITabBarItem alloc] initWithTitle:@"搜索" image:[UIImage imageNamed:@"softkey_icon02_down.png"] tag:1];
    [tabBarItem2 setFinishedSelectedImage:[UIImage imageNamed:@"softkey_icon02_down.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"softkey_icon02.png"]];
    searchpageVC.tabBarItem = tabBarItem2;
    
    UIStoryboard *kind_storyboard = [UIStoryboard storyboardWithName:KIND_STORYBOARD bundle:[NSBundle mainBundle]];
    UIViewController *kindVC = kind_storyboard.instantiateInitialViewController;
    UITabBarItem *tabBarItem3 = [[UITabBarItem alloc] initWithTitle:@"分类" image:[UIImage imageNamed:@"softkey_icon03_down.png"] tag:2];
    [tabBarItem3 setFinishedSelectedImage:[UIImage imageNamed:@"softkey_icon03_down.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"softkey_icon03.png"]];
    kindVC.tabBarItem = tabBarItem3;
    
    UIStoryboard *shoppingCart_storyboard = [UIStoryboard storyboardWithName:SHOPPINGCART_STORYBOARD bundle:[NSBundle mainBundle]];
    UIViewController *shoppingCartVC = shoppingCart_storyboard.instantiateInitialViewController;
    UITabBarItem *tabBarItem4 = [[UITabBarItem alloc] initWithTitle:@"购物车" image:[UIImage imageNamed:@"softkey_icon04_down.png"] tag:3];
    [tabBarItem4 setFinishedSelectedImage:[UIImage imageNamed:@"softkey_icon04_down.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"softkey_icon04.png"]];
    shoppingCartVC.tabBarItem = tabBarItem4;
    
    UIStoryboard *more_storyboard = [UIStoryboard storyboardWithName:MORE_STORYBOARD bundle:[NSBundle mainBundle]];
    UIViewController *moreVC = more_storyboard.instantiateInitialViewController;
    UITabBarItem *tabBarItem5 = [[UITabBarItem alloc] initWithTitle:@"更多" image:[UIImage imageNamed:@"softkey_icon05_down.png"] tag:4];
    [tabBarItem5 setFinishedSelectedImage:[UIImage imageNamed:@"softkey_icon05_down.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"softkey_icon05.png"]];
    moreVC.tabBarItem = tabBarItem5;
    
    NSArray *viewControllers = [NSArray arrayWithObjects:mainPageVC,searchpageVC,kindVC,shoppingCartVC,moreVC, nil];
    self.viewControllers = viewControllers;
    
    //设置购物车下标
    [self changeBadgeValue];
}

- (void)changeBadgeValue
{
//    //获取购物车商品
//    NSArray *tempArray = [Sql_ShoppingCart getCommoditys];
//    NSString *badgeValue = nil;
//    if (tempArray.count > 0)
//    {
//        badgeValue = [NSString stringWithFormat:@"%d",tempArray.count];
//    }
//    
//    UIViewController *viewController = (UIViewController *)self.viewControllers[3];
//    //设置下标
//    viewController.tabBarItem.badgeValue = badgeValue;
}
@end
