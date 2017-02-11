//
//  CustomTextField.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/31.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "CustomTextField.h"

IB_DESIGNABLE
@implementation CustomTextField

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupTextField];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupTextField];
    }
    return self;
}


- (void)setupTextField{
    self.borderStyle = UITextBorderStyleNone;
    self.layer.cornerRadius = 15.0;
    self.layer.masksToBounds = true;
//    
    self.backgroundColor = [UIColor colorWithRed:0.91 green:0.91 blue:0.91 alpha:1.00];
//    //设置光标偏移
    UIView *blankView = [[UIView alloc] initWithFrame:CGRectMake(self.frame.origin.x,self.frame.origin.y,20, self.frame.size.height)];
    self.leftView = blankView;
    self.leftViewMode =UITextFieldViewModeAlways;
    self.tintColor = [UIColor whiteColor];
}


@end
