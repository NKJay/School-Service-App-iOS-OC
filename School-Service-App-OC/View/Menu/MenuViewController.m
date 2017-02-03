//
//  MenuViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuViewController.h"

#import "MenuImageButton.h"

#import <Masonry/Masonry.h>
#import "ConsumptionViewController.h"
#import "LostAndFoundCollectionViewController.h"
#import "PersonalInformationViewController.h"
#import "RegisterViewController.h"
#import "RepairViewController.h"
#import "ParcelViewController.h"

@interface MenuViewController ()
@property(nonatomic,strong)MenuImageButton *parcelButton,*searchButton,*lostAndFoundButton,*consumptionButton;
@property(nonatomic,strong)MenuImageButton *repairButton,*eventButton;
@property(nonatomic,strong)UIButton *personalButton;
@property(nonatomic,strong)UILabel *nameLabel,*balanceLabel;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
    [self setupNavigationbar];
    [self setupBackView];

}


#pragma mark Action
- (void)toPersonalView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (void)toLostAndFoundView:(id)sender {
    LostAndFoundCollectionViewController *viewController = [[LostAndFoundCollectionViewController alloc] initWithCollectionViewLayout:[[UICollectionViewLayout alloc] init]];
    [self.navigationController pushViewController:viewController animated:true];
}
- (void)toSearchView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (void)toCosumptionView:(id)sender {
    UIViewController *consumptionViewController = [[UIStoryboard storyboardWithName:@"ConsumptionViewController" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:consumptionViewController animated:true];
}
- (void)toRepairView:(id)sender {;
    [self.navigationController pushViewController:[[RepairViewController alloc] init] animated:true];
}
- (void)toEventView:(id)sender {
    [self.navigationController pushViewController:[[ParcelViewController alloc] init] animated:true];
}

- (void)toParcelView:(id)sender {
    [self.navigationController pushViewController:[[ParcelViewController alloc] init] animated:true];
}

- (void)close{
    [self dismissViewControllerAnimated:true completion:nil];
}

#pragma mark setupView

- (void)setupBackView{
    
    UIBlurEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:effect];
    effectView.frame = self.view.bounds;
    effectView.alpha = 0.9;
    [self.view insertSubview:effectView atIndex:0];
    
}
- (void)setupNavigationbar{
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor clearColor]];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"X" style:UIBarButtonItemStylePlain target:self action:@selector(close)];
}
- (void)setupSubviews{
    self.view.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:self.parcelButton];
    [self.view addSubview:self.searchButton];
    [self.view addSubview:self.lostAndFoundButton];
    [self.view addSubview:self.consumptionButton];
    [self.view addSubview:self.repairButton];
    [self.view addSubview:self.eventButton];
    [self.view addSubview:self.personalButton];
    [self.view addSubview:self.nameLabel];
    [self.view addSubview:self.balanceLabel];
    
    [self.personalButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.and.height.equalTo(@58);
        make.top.equalTo(@78);
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.personalButton.mas_bottom).offset(20);
    }];
    
    [self.balanceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.nameLabel.mas_bottom).offset(38);
    }];
    
    
    [self.searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.top.equalTo(self.balanceLabel.mas_bottom);
        make.height.equalTo(@91);
        make.width.equalTo(self.view).multipliedBy(1.0/3.0);
    }];
    
    [self.lostAndFoundButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(_searchButton);
        make.left.equalTo(_searchButton.mas_right);
        make.centerY.equalTo(_searchButton);
    }];
    
    [self.consumptionButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(_searchButton);
        make.left.equalTo(_lostAndFoundButton.mas_right);
        make.centerY.equalTo(_searchButton);
    }];
    
    [self.repairButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_searchButton.mas_bottom);
        make.height.width.equalTo(_searchButton);
        make.left.equalTo(@0);
    }];
    
    [self.eventButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(_searchButton);
        make.left.equalTo(_repairButton.mas_right);
        make.centerY.equalTo(_repairButton);
    }];

    [self.parcelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(_searchButton);
        make.left.equalTo(_eventButton.mas_right);
        make.centerY.equalTo(_eventButton);
    }];
    
}

#pragma lazy load
- (MenuImageButton *)parcelButton{
    if (!_parcelButton) {
        _parcelButton = [[MenuImageButton alloc] init];
        _parcelButton.title = @"包裹";
        _parcelButton.image = [UIImage imageNamed:@"settings_icon"];
        [_parcelButton addTarget:self action:@selector(toParcelView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _parcelButton;
}
- (MenuImageButton *)searchButton{
    if (!_searchButton) {
        _searchButton = [[MenuImageButton alloc] init];
        _searchButton.title = @"查找";
        _searchButton.image = [UIImage imageNamed:@"settings_icon"];
        [_searchButton addTarget:self action:@selector(toSearchView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _searchButton;
}
- (MenuImageButton *)lostAndFoundButton{
    if (!_lostAndFoundButton) {
        _lostAndFoundButton = [[MenuImageButton alloc] init];
        _lostAndFoundButton.title = @"失物招领";
        _lostAndFoundButton.image = [UIImage imageNamed:@"settings_icon"];
        [_lostAndFoundButton addTarget:self action:@selector(toLostAndFoundView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lostAndFoundButton;
}
- (MenuImageButton *)consumptionButton{
    if (!_consumptionButton) {
        _consumptionButton = [[MenuImageButton alloc] init];
        _consumptionButton.title = @"消费明细";
        _consumptionButton.image = [UIImage imageNamed:@"settings_icon"];
        [_consumptionButton addTarget:self action:@selector(toCosumptionView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _consumptionButton;
}
- (MenuImageButton *)repairButton{
    if (!_repairButton) {
        _repairButton = [[MenuImageButton alloc] init];
        _repairButton.title = @"电脑维修";
        _repairButton.image = [UIImage imageNamed:@"settings_icon"];
        [_repairButton addTarget:self action:@selector(toRepairView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _repairButton;
}
- (MenuImageButton *)eventButton{
    if (!_eventButton) {
        _eventButton = [[MenuImageButton alloc] init];
        _eventButton.title = @"事件查询";
        _eventButton.image = [UIImage imageNamed:@"settings_icon"];
        [_eventButton addTarget:self action:@selector(toEventView:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _eventButton;
}

- (UIButton *)personalButton{
    if (!_personalButton) {
        _personalButton = [[UIButton alloc] init];
        [_personalButton setTitle:@"头像" forState:UIControlStateNormal];
        [_personalButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _personalButton;
}

- (UILabel *)nameLabel{
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] init];
        _nameLabel.text = @"名字";
        _nameLabel.font = [UIFont systemFontOfSize:14.0];
    }
    return _nameLabel;
}

- (UILabel *)balanceLabel{
    if (!_balanceLabel) {
        _balanceLabel = [[UILabel alloc] init];
        _balanceLabel.text = @"钱";
        _balanceLabel.font = [UIFont systemFontOfSize:28.0];
    }
    return _balanceLabel;
}
@end
