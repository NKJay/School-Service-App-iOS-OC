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
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ConsumptionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


#pragma mark tableView dataSource & delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 69.0 ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    ConsumptionTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ConsumptionTableViewCell" owner:nil options:nil] firstObject];
    }
    return cell;
}

@end
