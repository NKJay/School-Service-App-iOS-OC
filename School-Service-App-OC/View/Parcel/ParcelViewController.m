//
//  ParcelViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "ParcelViewController.h"
#import "MenuButton.h"
#import "SearchTextField.h"

@interface ParcelViewController ()
@property(strong,nonatomic)MenuButton *catagoryButton,*campusButton;
@property(strong,nonatomic)UILabel *recipients,*timeLabel;
@property(strong,nonatomic)UIView *backView;
@property(strong,nonatomic)UITableView *tableView;
@property(strong,nonatomic)SearchTextField *searchTextField;

@end

@implementation ParcelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.96 alpha:1.00];
    [self setupSubViews];
    // Do any additional setup after loading the view.
}

- (void)setupSubViews{
    [self.view addSubview:self.backView];
    [self.backView addSubview:self.tableView];
    [self.view addSubview:self.catagoryButton];
    [self.view addSubview:self.searchTextField];
    
    [self.searchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(73);
        make.right.equalTo(self.view).offset(-73);
        make.top.equalTo(self.view).offset(138);
        make.height.equalTo(@18);
    }];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(175, 20, -20, 20));
    }];
    
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView).offset(33);
        make.left.right.equalTo(self.backView);
        make.bottom.equalTo(self.view);
    }];
//    [self.catagoryButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.equalTo(self.view);
//        make.height.equalTo(@100);
//        make.top.equalTo(@100);
//    }];
}

#pragma mark 懒加载
- (SearchTextField *)searchTextField{
    if (!_searchTextField) {
        _searchTextField = [[SearchTextField alloc] init];
        _searchTextField.placeholder = @"包裹查询";
    }
    return _searchTextField;
}
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor colorWithRed:0.21 green:0.21 blue:0.21 alpha:1.00];
        _backView.layer.cornerRadius = 15;
    }
    return _backView;
}

- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
    }
    return _tableView;
}
- (MenuButton *)catagoryButton{
    if (!_catagoryButton) {
        _catagoryButton = [[MenuButton alloc] init];
        _catagoryButton.backgroundColor = [UIColor blackColor];
        [_catagoryButton setTitle:@"类型" forState:UIControlStateNormal];
    }
    return _catagoryButton;
}

@end
