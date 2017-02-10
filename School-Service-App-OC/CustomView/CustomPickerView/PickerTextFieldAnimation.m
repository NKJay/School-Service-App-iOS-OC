//
//  PickerTextFieldAnimation.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/20.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "PickerTextFieldAnimation.h"
#import "PickerTextFieldUIPresentationController.h"

@implementation PickerTextFieldAnimation

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source{
    return [[PickerTextFieldUIPresentationController alloc] initWithPresentedViewController:presented presentingViewController:presenting];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return self;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return self;
}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext{
    return 0.35;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext{
    NSLog(@"123");
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    if (toViewController.presentingViewController == fromViewController) {
        UIView *toView = [transitionContext viewForKey:UITransitionContextToViewKey];
        [self pushViewControllerWith:toView and:containerView];
    } else{
        UIView *fromView = [transitionContext viewForKey:UITransitionContextFromViewKey];
        [self popViewControllerWith:fromView and:containerView];
    }
    [transitionContext completeTransition:true];
    
}

-(void)popViewControllerWith:(UIView *)fromView and:(UIView *)containerView{
    [fromView removeFromSuperview];
}

-(void)pushViewControllerWith:(UIView *)toView and:(UIView *)containerView{
    [containerView addSubview:toView];
}
@end
