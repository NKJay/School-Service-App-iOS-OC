 //
//  MainViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainViewController.h"
#import "LessonTableViewCell.h"
#import "NewsTableViewCell.h"
#import "MenuViewController.h"
#import "MenuViewAnimationDelegate.h"
#import "SettingViewController.h"

@interface MainViewController()
@property(weak,nonatomic) NSArray* lessons;
@property(weak,nonatomic) NSMutableArray* news;
@property(assign,nonatomic) CGFloat screanHeight;
@property(strong,nonatomic) MenuViewAnimationDelegate *animationDelegate;
@property(strong,nonatomic) UITableView *tableView;
@property(strong,nonatomic) UIImageView *backgroundImageView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeView];
    [self setupNavBar];
    // Do any additional setup after loading the view.
}

- (void)rightBarButtonDidClick {
    UIViewController *settingViewController = [[UIStoryboard storyboardWithName:@"SettingView" bundle:nil] instantiateInitialViewController];
    
    [self.navigationController pushViewController:settingViewController animated:true];
}

- (void)leftBarButtonDidClick {
    UIViewController *menuViewController = [[MenuViewController alloc] init];
    menuViewController.transitioningDelegate = self.animationDelegate;
    menuViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:menuViewController animated:true completion:nil];
}

- (void)initializeView{
//    [self.view addSubview:self.backgroundImageView];
    [self.view addSubview:self.tableView];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"back"]];
}

- (void)setupNavBar{
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu_icon"] style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonDidClick)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"settings_icon"] style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonDidClick)];
}



#pragma mark 懒加载
- (UIImageView *)backgroundImageView{
    if (!_backgroundImageView) {
        _backgroundImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"back"]];
        _backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
        _backgroundImageView.frame = self.view.bounds;
    }
    return _backgroundImageView;
}
- (UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.bounces = false;
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.scrollEnabled = true;
    }
    return _tableView;
}

#pragma mark tableView dataSource&delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 1) {
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  indexPath.section == 0 ? 70.0 : 117.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section == 0 ? 5 : 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (indexPath.section == 0) {
        cell = [self setupLessonCell:tableView cellForRowAtIndexPath:indexPath];
    } else{
        cell = [self setupNewsCell:tableView cellForRowAtIndexPath:indexPath];
        return cell;
    }
    return cell;
}

- (UITableViewCell *)setupLessonCell:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LessonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"lessonCell"];
    if (!cell) {
        cell = [[LessonTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"lessonCell"];
    }
    [cell setDecorationDotColor:indexPath.item];
    return cell;
}

- (UITableViewCell *)setupNewsCell:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newsCell"];
    if (!cell) {
        cell = [[NewsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"newsCell"];
    }
    [cell setDecorationDotColor:indexPath.item];
    return cell;
}

@end
