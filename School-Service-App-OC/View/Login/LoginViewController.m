//
//  LoginViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/2/1.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "LoginViewController.h"
#import <Masonry/Masonry.h>
#import "CustomTextField.h"
#import "LogoView.h"

@interface LoginViewController ()
@property(nonatomic,strong)CustomTextField *idTextField,*passwordTextField;
@property(nonatomic,strong)UILabel *idLabel,*passwordLabel;
@property(nonatomic,strong)UIButton *registerButton,*loginButton;
@property(nonatomic,strong)LogoView *logoView;
@end

@implementation LoginViewController

- (void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupSubviews];
}

- (void)setupSubviews{
    [self.view addSubview:self.logoView];
    [self.view addSubview:self.idTextField];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.idLabel];
    [self.view addSubview:self.passwordLabel];
    [self.view addSubview:self.registerButton];
    [self.view addSubview:self.loginButton];
    
    [self.logoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@0);
        make.height.equalTo(@100);
        make.left.right.equalTo(@0);
    }];
    
    [self.idTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@207);
        make.height.equalTo(@30);
        make.left.equalTo(@33);
        make.right.equalTo(@-33);
    }];
    
    [self.idLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.idTextField.mas_top).offset(-9);
        make.left.equalTo(@48);
    }];
    
    
    [self.passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(self.idTextField);
        make.top.equalTo(self.idTextField.mas_bottom).offset(33);
        make.centerX.equalTo(self.view);
    }];
    
    [self.passwordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.passwordTextField.mas_top).offset(-9);
        make.left.equalTo(@48);
    }];
    
    [self.registerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.passwordTextField.mas_bottom).offset(5);
        make.right.equalTo(@-44);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(@-117);
        make.centerX.equalTo(self.view);
        make.width.equalTo(@101);
        make.height.equalTo(@30);
    }];
}

#pragma mark Lazyload
- (LogoView *)logoView{
    if (!_logoView) {
        _logoView = [[LogoView alloc] init];
    }
    return _logoView;
}

- (CustomTextField *)idTextField{
    if (!_idTextField) {
        _idTextField = [[CustomTextField alloc] init];
    }
    return _idTextField;
}

- (CustomTextField *)passwordTextField{
    if (!_passwordTextField) {
        _passwordTextField = [[CustomTextField alloc] init];
        _passwordTextField.secureTextEntry = true;
    }
    return _passwordTextField;
}

- (UILabel *)idLabel{
    if (!_idLabel) {
        _idLabel = [[UILabel alloc] init];
        _idLabel.text = @"学号";
        _idLabel.font = [UIFont systemFontOfSize:10.0];
    }
    return _idLabel;
}

- (UILabel *)passwordLabel{
    if (!_passwordLabel) {
        _passwordLabel = [[UILabel alloc] init];
        _passwordLabel.text = @"密码";
        _passwordLabel.font = [UIFont systemFontOfSize:10.0];
    }
    return _passwordLabel;
}

- (UIButton *)registerButton{
    if (!_registerButton) {
        _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_registerButton setTitle:@"新用户注册" forState:UIControlStateNormal];
        [_registerButton setTintColor:[UIColor blackColor]];
        _registerButton.titleLabel.font = [UIFont systemFontOfSize:8.0];
    }
    return _registerButton;
}

- (UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginButton.backgroundColor = [UIColor colorWithRed:0.88 green:0.88 blue:0.88 alpha:1.00];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        [_loginButton setTintColor:[UIColor whiteColor]];
        _loginButton.layer.cornerRadius = 15.0;
    }
    return _loginButton;
}

@end
