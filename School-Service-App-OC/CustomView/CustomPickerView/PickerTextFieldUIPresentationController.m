//
//  PickerTextFieldUIPresentationController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/2/10.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "PickerTextFieldUIPresentationController.h"

@implementation PickerTextFieldUIPresentationController

- (instancetype)initWithPresentedViewController:(UIViewController *)presentedViewController presentingViewController:(UIViewController *)presentingViewController{
    return [super initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];
}

- (void)containerViewWillLayoutSubviews{
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    self.presentedView.frame = CGRectMake(0, height- 260, width, 260);
}
@end
