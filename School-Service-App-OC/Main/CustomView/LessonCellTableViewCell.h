//
//  LessonCellTableViewCell.h
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Lesson+CoreDataProperties.h"
#import "Lesson+CoreDataClass.h"

@interface LessonCellTableViewCell : UITableViewCell

@property(strong,nonatomic)Lesson *lesson;
@property(nonatomic,strong)NSIndexPath *indexPath;

@end
