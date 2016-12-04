//
//  MenuViewAnimationDelegate.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/4.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuViewAnimationDelegate.h"
#import "MenuViewAnimation.h"

@implementation MenuViewAnimationDelegate
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return [[MenuViewAnimation alloc] init];
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return [[MenuViewAnimation alloc] init];
}
@end
