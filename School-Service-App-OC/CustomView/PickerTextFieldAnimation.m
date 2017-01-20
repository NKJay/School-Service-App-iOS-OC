//
//  PickerTextFieldAnimation.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/20.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "PickerTextFieldAnimation.h"

@implementation PickerTextFieldAnimation
- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext{
    return 0.35;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext{
    
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    if (toViewController.presentingViewController == fromViewController) {
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        [self pushViewControllerWith:toView];
    } else{
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        [self popViewControllerWith:fromView];
    }
    
    
}

-(void)popViewControllerWith:(UIView *)fromView{
    
}

-(void)pushViewControllerWith:(UIView *)toView{
    
}
@end
