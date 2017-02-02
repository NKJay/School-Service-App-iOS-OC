 //
//  MainViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainViewController.h"
#import "NewsTableViewCell.h"
#import "MenuViewController.h"
#import "SettingViewController.h"

@interface MainViewController()
@property(copy,nonatomic) NSMutableArray* news;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupNavigationBar];
}

#pragma mark setupView
- (void)setupNavigationBar{
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    [navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [navigationBar setShadowImage:[[UIImage alloc] init]];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_icon"] style:UIBarButtonItemStylePlain target:self action:@selector(toMenuView:)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"settings_icon"] style:UIBarButtonItemStylePlain target:self action:@selector(toMenuView:)];
}

#pragma mark Action
- (void)toMenuView:(id)sender {
    UIViewController *menuViewController = [[UINavigationController alloc] initWithRootViewController:[[MenuViewController alloc] init]];
    [self presentViewController:menuViewController animated:true completion:nil];
}
- (void)toSettingView:(id)sender {
    UIViewController *settingViewController = [[UIStoryboard storyboardWithName:@"SettingView" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:settingViewController animated:true];
}

#pragma mark tableView dataSource&delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setDecorationDotColor:indexPath.item];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  117.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NewsTableViewCell *cell = [self setupNewsCell:tableView cellForRowAtIndexPath:indexPath];
    return cell;
}


- (NewsTableViewCell *)setupNewsCell:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *identifier = @"cell";
    
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];

    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"NewsTableViewCell" owner:nil options:nil] firstObject];
    }
    
    [cell setDecorationDotColor:indexPath.item];
    return cell;
}

@end
