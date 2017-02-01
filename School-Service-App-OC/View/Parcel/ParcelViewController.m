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
    self.title = @"邮包查询";
    self.view.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.96 alpha:1.00];
//    [self setupSubViews];
    // Do any additional setup after loading the view.
}

#pragma mark Action
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}


@end
