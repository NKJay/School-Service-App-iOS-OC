//
//  NewsTableViewCell.h
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsModel.h"

@interface NewsTableViewCell : UITableViewCell
@property(nonatomic,strong) NewsModel *model;

- (void)setDecorationDotColor:(NSInteger)position;
@end
