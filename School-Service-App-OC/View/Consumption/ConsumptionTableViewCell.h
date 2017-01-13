//
//  ConsumptionTableViewCell.h
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/13.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConsumptionTableViewCell : UITableViewCell
@property(copy,nonatomic) NSString *date;
@property(copy,nonatomic) NSString *time;
@property(copy,nonatomic) NSString *price;
@property(copy,nonatomic) NSString *catagory;
@property(strong,nonatomic) UIImage *catagoryIcon;

@end
