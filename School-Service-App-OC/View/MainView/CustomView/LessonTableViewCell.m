//
//  LessonCellTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "LessonTableViewCell.h"
#import "UIColor_DefaultColor.h"

@interface LessonTableViewCell()
@property(nonatomic,strong)UILabel *subjectLabel;
@property(nonatomic,strong)UIView *decorationDot;
@property(nonatomic,weak)NSArray *dotColor;
@property(nonatomic)BOOL wasSelected;

@end

@implementation LessonTableViewCell

-(UILabel *)subjectLabel{
    if (!_subjectLabel) {
        _subjectLabel = [[UILabel alloc] init];
        _subjectLabel.text = _lesson.subject;
    }
    return _subjectLabel;
}

-(NSArray*)dotColor{
    return [UIColor defaultColor];
}

-(UIView*) decorationDot{
    UIView *view = [[UIView alloc] init];
    UIColor *currentColor = self.dotColor[(self.position % 6)];
    view.backgroundColor = self.wasSelected ? currentColor : [UIColor whiteColor];
    view.layer.borderColor = (__bridge CGColorRef _Nullable)currentColor;
    return view;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


@end
