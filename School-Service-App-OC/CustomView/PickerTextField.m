//
//  PickerTextField.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/20.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "PickerTextField.h"

@interface PickerTextField ()
@property(nonatomic,strong) UIViewController *controller;

@end

@implementation PickerTextField


- (instancetype)initWithController:(UIViewController *) controller{
    self = [super init];
    if (self) {
        self.enabled = false;
        self.controller = controller;
        [self addTarget:self action:@selector(didClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)PickerTextFieldDidSelected:(NSString *)content{
    self.text = content;
}

#pragma mark 点击事件监听
- (void)didClick{
    [self.controller presentViewController:self.controller animated:true completion:nil];
}
@end
