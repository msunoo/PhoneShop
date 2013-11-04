//
//  NavigationView.m
//  PhoneShop
//
//  Created by 付 亚明 on 13-11-1.
//  Copyright (c) 2013年 Sunny_Fu. All rights reserved.
//

#import "NavigationView.h"

@implementation NavigationView

- (void)dealloc
{
    [self setTitle:nil];
    [self setBackgroundImg:nil];
    [self setBgImgView:nil];
    [self setTitleLabel:nil];
    [self setBackBtn:nil];
    [self setRightBtn:nil];
    [self setDelegate:nil];
}

- (id)initWithFrame:(CGRect)frame
{
    NSArray *tempArr = [[NSBundle mainBundle] loadNibNamed:@"NavigationView" owner:self options:nil];
    self = tempArr[0];
    if (self)
    {
        // Initialization code
        self.frame = frame;
    }
    return self;
}

- (IBAction)buttonClicked:(id)sender
{
    UIButton *button = (UIButton *)sender;
    if ([self.delegate respondsToSelector:@selector(navigationView:didClickedButtonWithType:)])
    {
        [self.delegate navigationView:self didClickedButtonWithType:button.tag];
    }
}

@end
