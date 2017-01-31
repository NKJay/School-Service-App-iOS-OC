//
//  RegisterViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/22.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

#pragma Action
- (IBAction)cancelButtonDidClick:(UIButton *)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}


@end
