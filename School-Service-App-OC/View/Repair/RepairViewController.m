//
//  RepairViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/31.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "RepairViewController.h"

@interface RepairViewController ()

@end

@implementation RepairViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark Action
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}

@end
