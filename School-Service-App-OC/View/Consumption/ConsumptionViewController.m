//
//  ConsumptionViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/13.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "ConsumptionViewController.h"
#import "ConsumptionTableViewCell.h"

@interface ConsumptionViewController ()

@end

@implementation ConsumptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[ConsumptionTableViewCell class] forCellReuseIdentifier:@"itemCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return indexPath.item == 0 ? 96.0 : 69.0 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell;
//    if (indexPath.section != 0) {
        ConsumptionTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"itemCell"];
        cell.date = @"今天";
        cell.catagory = @"电费";
        cell.catagoryIcon = [UIImage imageNamed:@"settings_icon"];
        cell.time = @"11.00";
        
//    } else{
//        
//    }
    return cell;
}

@end
