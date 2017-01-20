//
//  MenuViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuViewController.h"
#import <Masonry/Masonry.h>
#import "ImageButton.h"
#import "ConsumptionViewController.h"

@interface MenuViewController ()
@property(strong,nonatomic)ImageButton *searchButton,*activitiesButton,*lectureButton,*lostAndFoundButton;
@property(strong,nonatomic)ImageButton *consumptionButton,*repairButton,*scheduleButton,*avatarButton;
@property(strong,nonatomic) UILabel *balanceLabel;
@property(strong,nonatomic)UIButton *closeButton;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBlurEffect];
    [self setupViews];
}
//设置背景虚化
-(void)setupBlurEffect{
    self.view.backgroundColor = [UIColor clearColor];
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.alpha = 0.7;
    effectView.frame = self.view.frame;
    [self.view insertSubview:effectView atIndex:0];
}

- (void)setupViews{
    [self.view addSubview:self.searchButton];
    [self.view addSubview:self.lostAndFoundButton];
    [self.view addSubview:self.consumptionButton];
    [self.view addSubview:self.repairButton];
    [self.view addSubview:self.scheduleButton];
    [self.view addSubview:self.lectureButton];
    [self.view addSubview:self.activitiesButton];
    [self.view addSubview:self.avatarButton];
    [self.view addSubview:self.closeButton];
    [self.view addSubview:self.balanceLabel];
    
    
    [self.avatarButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.height.equalTo(@98);
        make.width.equalTo(@58);
        make.top.equalTo(self.view);
    }];
    
    [self.balanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.avatarButton.mas_bottom);
    }];
    
    [self.searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.mas_width).multipliedBy(1.0/3.0);
        make.height.equalTo(self.searchButton.mas_width);
        make.left.equalTo(@0);
        make.top.equalTo(self.balanceLabel.mas_bottom);
    }];
    [self.lostAndFoundButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.searchButton);
         make.size.equalTo(self.searchButton);
        make.left.equalTo(self.searchButton.mas_right);
    }];
    [self.consumptionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lostAndFoundButton);
         make.size.equalTo(self.searchButton);
        make.left.equalTo(self.lostAndFoundButton.mas_right);
    }];
    [self.repairButton mas_makeConstraints:^(MASConstraintMaker *make) {
         make.size.equalTo(self.searchButton);
        make.left.equalTo(@0);
        make.top.equalTo(self.searchButton.mas_bottom);
    }];
    [self.scheduleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.repairButton);
        make.size.equalTo(self.searchButton);
        make.left.equalTo(self.repairButton.mas_right);
    }];
    [self.lectureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.scheduleButton);
        make.size.equalTo(self.searchButton);
        make.left.equalTo(self.scheduleButton.mas_right);
    }];
    [self.activitiesButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.width.and.height.equalTo(self.view.mas_width).multipliedBy(1.0/3.0);
        make.top.equalTo(self.repairButton.mas_bottom);
    }];

    [self.closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@20);
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(@-40);
        
    }];
}

#pragma mark 点击事件
- (void)closeButtonDidClick{
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)consumptionButtonDidClick{
    [self presentViewController:[[ConsumptionViewController alloc] init] animated:true completion:nil];
}

- (void)avaterButtonDidClick{
    
}

#pragma mark 懒加载
-(ImageButton *)searchButton{
    if (!_searchButton) {
        _searchButton = [[ImageButton alloc] initWithTitle:@"查找" andImageName:@"settings_icon"];
    }
    return  _searchButton;
}

-(ImageButton *)lostAndFoundButton{
    if (!_lostAndFoundButton) {
        _lostAndFoundButton = [[ImageButton alloc] initWithTitle:@"失物招领" andImageName:@"settings_icon"];
    }
    return  _lostAndFoundButton;
}

-(ImageButton *)consumptionButton{
    if (!_consumptionButton) {
        _consumptionButton = [[ImageButton alloc] initWithTitle:@"消费明细" andImageName:@"settings_icon"];
        [_consumptionButton addTarget:self action:@selector(consumptionButtonDidClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return  _consumptionButton;
}

-(ImageButton *)repairButton{
    if (!_repairButton) {
        _repairButton = [[ImageButton alloc] initWithTitle:@"电脑维修" andImageName:@"settings_icon"];
    }
    return  _repairButton;
}

-(ImageButton *)scheduleButton{
    if (!_scheduleButton) {
        _scheduleButton = [[ImageButton alloc] initWithTitle:@"课表查询" andImageName:@"settings_icon"];
    }
    return  _scheduleButton;
}

-(ImageButton *)lectureButton{
    if (!_lectureButton) {
        _lectureButton = [[ImageButton alloc] initWithTitle:@"讲座通知" andImageName:@"settings_icon"];
    }
    return  _lectureButton;
}

-(ImageButton *)activitiesButton{
    if (!_activitiesButton) {
        _activitiesButton = [[ImageButton alloc] initWithTitle:@"校园活动" andImageName:@"settings_icon"];
    }
    return  _activitiesButton;
}

-(ImageButton *)avatarButton{
    if (!_avatarButton) {
        _avatarButton = [[ImageButton alloc] initWithTitle:@"pei" andImageName:@"settings_icon"];
        [_avatarButton addTarget:self action:@selector(avaterButtonDidClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return  _avatarButton;
}

-(UIButton *)closeButton {
    if (!_closeButton) {
        _closeButton = [[UIButton alloc] init];
        [_closeButton setImage:[UIImage imageNamed:@"settings_icon"] forState:UIControlStateNormal];
        [_closeButton addTarget:self action:@selector(closeButtonDidClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeButton;
}

-(UILabel *)balanceLabel {
    if (!_balanceLabel) {
        _balanceLabel = [[UILabel alloc] init];
        _balanceLabel.text = @"99.70";
        _balanceLabel.font = [UIFont systemFontOfSize:28];
    }
    return _balanceLabel;
}

@end
