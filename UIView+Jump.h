//
//  UIView+Jump.h
//  InstaGrab
//
//  Created by 陈越东 on 16/11/11.
//  Copyright © 2016年 JellyKit Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Jump)

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

- (UIViewController *)getCurrentVC;

@end
