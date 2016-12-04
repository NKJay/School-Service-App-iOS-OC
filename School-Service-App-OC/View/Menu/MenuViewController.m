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

@interface MenuViewController ()
@property(strong,nonatomic)ImageButton *searchButton;
@property(strong,nonatomic)ImageButton *lostAndFoundButton;
@property(strong,nonatomic)ImageButton *consumptionButton;
@property(strong,nonatomic)ImageButton *repairButton;
@property(strong,nonatomic)ImageButton *scheduleButton;
@property(strong,nonatomic)ImageButton *lectureButton;
@property(strong,nonatomic)ImageButton *activitiesButton;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupBlurEffect];
    [self setupViews];
}

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
    
    [self.searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.view.mas_width).multipliedBy(1.0/3.0);
        make.height.equalTo(self.searchButton.mas_width).multipliedBy(1.3);
        make.left.equalTo(@0);
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
    [self.consumptionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //make.centerY.equalTo(self.scheduleButton);
        make.size.equalTo(self.searchButton);
        make.left.equalTo(self.scheduleButton.mas_right);
    }];
    [self.activitiesButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.width.and.height.equalTo(self.view.mas_width).multipliedBy(1.0/3.0);
        make.top.equalTo(self.repairButton.mas_bottom);
    }];
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

@end
