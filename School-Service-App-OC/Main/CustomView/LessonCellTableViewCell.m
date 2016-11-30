//
//  LessonCellTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "LessonCellTableViewCell.h"

@interface LessonCellTableViewCell()
@property(nonatomic,strong)UILabel *subjectLabel;
@property(nonatomic,strong)UIView *decorationDot;
@property(nonatomic,weak)NSArray *dotColor;
@property(nonatomic)BOOL wasSelected;

@end

@implementation LessonCellTableViewCell

-(UILabel *)subjectLabel{
    UILabel *label = [[UILabel alloc] init];
    label.text = _lesson.subject;
    return label;
}

-(NSArray*)dotColor{
    return @[[UIColor colorWithRed:0.99 green:0.17 blue:0.19 alpha:1.00],
             [UIColor colorWithRed:0.99 green:0.08 blue:0.50 alpha:1.00],
             [UIColor colorWithRed:0.99 green:0.45 blue:0.21 alpha:1.00],
             [UIColor colorWithRed:0.99 green:0.72 blue:0.17 alpha:1.00],
             [UIColor colorWithRed:0.35 green:0.79 blue:0.83 alpha:1.00],
             [UIColor colorWithRed:0.24 green:0.84 blue:0.27 alpha:1.00]];
}

-(UIView*) decorationDot{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = _wasSelected ? _dotColor[_indexPath.item % 6] : [UIColor whiteColor];
    view.layer.borderColor = (__bridge CGColorRef _Nullable)(_dotColor[_indexPath.item % 6]);
    return view;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
