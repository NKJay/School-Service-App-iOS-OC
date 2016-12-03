 //
//  MainViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
#import "LessonTableViewCell.h"

@interface MainViewController()
@property(nonatomic,weak) NSArray* lessons;
@property(nonatomic,weak) NSMutableArray* news;
@property(nonatomic,strong) MainView* mainView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)setupNavBar{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:nil style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonDidClick)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:nil style:
                                              UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonDidClick)];
}

- (void)leftBarButtonDidClick{
    
}

- (void)rightBarButtonDidClick{
    
}

- (void)loadView{
    [super loadView];
    self.view = self.mainView;
}

#pragma mark 懒加载
-(MainView *)mainView{
    if (!_mainView) {
        _mainView = [[MainView alloc] init];
        _mainView.tableView.delegate = self;
        _mainView.tableView.dataSource = self;
    }
    return _mainView;
}

#pragma mark tableView dataSource&delegate
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  indexPath.section == 0 ? 213.0 : 274.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section == 0 ? 5 : _news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        LessonTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"lessonCell"];
        cell.indexPath = indexPath;
        return cell;
    } else{
        LessonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newsCell"];
        return cell;
    }
}

@end
