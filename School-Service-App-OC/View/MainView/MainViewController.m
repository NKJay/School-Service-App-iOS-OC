 //
//  MainViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainViewController.h"
#import "LessonTableViewCell.h"
#import "MenuViewController.h"
#import "MenuViewAnimationDelegate.h"

@interface MainViewController()
@property(weak,nonatomic) NSArray* lessons;
@property(weak,nonatomic) NSMutableArray* news;
@property(assign,nonatomic) CGFloat screanHeight;
@property(strong,nonatomic) MenuViewAnimationDelegate *animationDelegate;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)leftBarButtonDidClick:(id)sender {
    UIViewController *menuViewController = [[UIStoryboard storyboardWithName:@"MenuView" bundle:nil] instantiateInitialViewController];
    menuViewController.transitioningDelegate = self.animationDelegate;
    menuViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self presentViewController:menuViewController animated:true completion:nil];
}



#pragma mark 懒加载


#pragma mark tableView dataSource&delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  indexPath.section == 0 ? 60.0 : 117.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section == 0 ? 5 : self.news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        LessonTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"lessonCell"];
        cell.position = indexPath.item;
        return cell;
    } else{
        LessonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newsCell"];
        return cell;
    }
}

@end
