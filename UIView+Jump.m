//
//  UIView+Jump.m
//  InstaGrab
//
//  Created by 陈越东 on 16/11/11.
//  Copyright © 2016年 JellyKit Inc. All rights reserved.
//

#import "UIView+Jump.h"

@implementation UIView (Jump)

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([viewController isKindOfClass:[UIViewController class]]) {
        UIViewController *currentVC = [self getCurrentVC];
        viewController.hidesBottomBarWhenPushed = YES;
        [currentVC.navigationController pushViewController:viewController animated:YES];
    }
}

- (UIViewController *)getCurrentVC
{
    UIResponder *responder = self;
    
    while (responder) {
        if ([responder.nextResponder isKindOfClass:[UIViewController class]]) {
            UIViewController *vc = (UIViewController *)responder.nextResponder;
            if (vc.navigationController) {
                responder = vc;
                break;
            } else {
                responder = responder.nextResponder;
            }
        } else {
            responder = responder.nextResponder;
        }
    }
    
    return (UIViewController *)responder;
}

@end
