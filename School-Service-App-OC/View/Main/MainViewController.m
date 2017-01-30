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
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    [navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    [navigationBar setShadowImage:[UIImage new]];
}

- (IBAction)toMenuView:(id)sender {
    UIViewController *menuViewController = [[UIStoryboard storyboardWithName:@"MenuViewController" bundle:nil]
                                            instantiateInitialViewController];
//    [[self navigationController] pushViewController:menuViewController animated:true];
    [self presentViewController:menuViewController animated:true completion:nil];
}
- (IBAction)toSettingView:(id)sender {
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
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCell"];

    [cell setDecorationDotColor:indexPath.item];
    return cell;
}

@end
