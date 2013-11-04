//
//  NavigationView.h
//  PhoneShop
//
//  Created by 付 亚明 on 13-11-1.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

typedef enum
{
    BackButtonType = 0,
    RightButtonType,
}AllButtonType;

#import <UIKit/UIKit.h>

@class NavigationView;

@protocol NavigationViewDelegate <NSObject>

- (void)navigationView:(NavigationView *)view didClickedButtonWithType:(AllButtonType)buttonType;

@end

@interface NavigationView : UIView

@property (copy, nonatomic) NSString *title;
@property (strong, nonatomic) UIImage *backgroundImg;
@property (weak, nonatomic) IBOutlet UIImageView *bgImgView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *backBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;
@property (unsafe_unretained,nonatomic) id<NavigationViewDelegate> delegate;

@end
