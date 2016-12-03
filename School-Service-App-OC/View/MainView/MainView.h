//
//  MainView.h
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainView : UIView
@property(strong,nonatomic) UITableView *tableView;
@property(nonatomic,strong) NSArray* lessons;
@property(nonatomic,strong) NSMutableArray* news;
@end
