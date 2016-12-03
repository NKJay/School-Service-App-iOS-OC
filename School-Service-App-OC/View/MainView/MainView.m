//
//  MainView.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MainView.h"
#include "LessonTableViewCell.h"

@implementation MainView

-(UITableView *) tableView{
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.frame style:UITableViewStylePlain];
    return tableView;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.tableView];
}

@end
