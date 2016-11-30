 //
//  MainViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainViewController.h"
#import "LessonCellTableViewCell.h"

@interface MainViewController()
@property(nonatomic,strong) NSArray* lessons;
@property(nonatomic,strong) NSMutableArray* news;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return section == 0 ? _lessons.count : _news.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        LessonCellTableViewCell* cell = (LessonCellTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"lessonCell"];
        cell.indexPath = indexPath;
        return cell;
    } else{
        LessonCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"newsCell"];
        return cell;
    }
}

@end
