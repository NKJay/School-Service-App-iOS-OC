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
#import "LostAndFoundCheckinViewController.h"
#import "PersonalInformationViewController.h"
#import "RegisterViewController.h"
#import "RepairViewController.h"
#import "ParcelViewController.h"

@interface MenuViewController ()
@property(nonatomic,strong)MenuImageButton *parcelButton,*searchButton,*lostAndFoundButton,*consumptionButton;
@property(nonatomic,strong)MenuImageButton *repairButton,*eventButton;
@property(nonatomic,strong)UIButton *closeButton;
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupSubviews];
    [self setupNavigationbar];

}


#pragma mark Action
- (IBAction)toPersonalView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (IBAction)toLostAndFoundView:(id)sender {
    [self.navigationController pushViewController:[[LostAndFoundCheckinViewController alloc] init] animated:true];
}
- (IBAction)toSearchView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (IBAction)toCosumptionView:(id)sender {
    UIViewController *consumptionViewController = [[UIStoryboard storyboardWithName:@"ConsumptionViewController" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:consumptionViewController animated:true];
}
- (IBAction)toRepairView:(id)sender {
    [self.navigationController pushViewController:[[RepairViewController alloc] init] animated:true];
}
- (IBAction)toEventView:(id)sender {
    [self.navigationController pushViewController:[[ParcelViewController alloc] init] animated:true];
}

- (void)close{
    [self dismissViewControllerAnimated:true completion:nil];
}

#pragma mark setupView
- (void)setupNavigationbar{
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor clearColor]];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"X" style:UIBarButtonItemStylePlain target:self action:@selector(close)];
}
- (void)setupSubviews{
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.parcelButton];
    [self.view addSubview:self.searchButton];
    [self.view addSubview:self.lostAndFoundButton];
    [self.view addSubview:self.consumptionButton];
    [self.view addSubview:self.repairButton];
    [self.view addSubview:self.eventButton];
    [self.view addSubview:self.closeButton];
    
    [self.searchButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
        make.top.equalTo(@40);
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
    
    [self.closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(@-30);
    }];
}

#pragma lazy load
- (MenuImageButton *)parcelButton{
    if (!_parcelButton) {
        _parcelButton = [MenuImageButton buttonWithType:UIButtonTypeSystem];
        _parcelButton.title = @"包裹";
        _parcelButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _parcelButton;
}
- (MenuImageButton *)searchButton{
    if (!_searchButton) {
        _searchButton = [[MenuImageButton alloc] init];
        _searchButton.title = @"包裹";
        _searchButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _searchButton;
}
- (MenuImageButton *)lostAndFoundButton{
    if (!_lostAndFoundButton) {
        _lostAndFoundButton = [[MenuImageButton alloc] init];
        _lostAndFoundButton.title = @"包裹";
        _lostAndFoundButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _lostAndFoundButton;
}
- (MenuImageButton *)consumptionButton{
    if (!_consumptionButton) {
        _consumptionButton = [[MenuImageButton alloc] init];
        _consumptionButton.title = @"包裹";
        _consumptionButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _consumptionButton;
}
- (MenuImageButton *)repairButton{
    if (!_repairButton) {
        _repairButton = [[MenuImageButton alloc] init];
        _repairButton.title = @"包裹";
        _repairButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _repairButton;
}
- (MenuImageButton *)eventButton{
    if (!_eventButton) {
        _eventButton = [[MenuImageButton alloc] init];
        _eventButton.title = @"包裹";
        _eventButton.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _eventButton;
}

- (UIButton *)closeButton{
    if (!_closeButton) {
        _closeButton = [[UIButton alloc] init];
        [_closeButton setTitle:@"x" forState:UIControlStateNormal];
        [_closeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return _closeButton;
}
@end
