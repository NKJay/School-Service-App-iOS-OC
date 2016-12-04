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
@property(strong,nonatomic)UILabel *subjectLabel;
@property(strong,nonatomic)UIView *decorationDot;
@property(copy,nonatomic)NSArray *dotColor;
@property(assign,nonatomic)BOOL wasSelected;

@end

@implementation LessonTableViewCell

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.subjectLabel];
    }
    return self;
}

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
    view.layer.borderColor = currentColor.CGColor;
    return view;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


@end
