//
//  LessonCellTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/11/28.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "LessonTableViewCell.h"
#import "UIColor_decorationColor.h"
#import <Masonry/Masonry.h>

@interface LessonTableViewCell()
@property(strong,nonatomic)UILabel *subjectLabel,*timeLabel,*locationLabel,*titleLabel;
@property(strong,nonatomic)UIView *decorationDot,*detailView,*backView;

@end

@implementation LessonTableViewCell

- (void)setDecorationDotColor:(NSInteger)position{
    NSArray *dotColor = [UIColor decorationColor];
    _decorationDot.backgroundColor =  dotColor[position % 6];
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self setupSubViews];
    }
    return self;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    self.backgroundColor = [UIColor clearColor];
    [self setupSubViews];
    return self;
}

- (void)setupSubViews{

    [self addSubview:self.backView];
    [self.backView addSubview:self.titleLabel];
    [self.backView addSubview:self.decorationDot];
    [self.backView addSubview:self.detailView];
    [self.detailView addSubview:self.timeLabel];
    [self.detailView addSubview:self.locationLabel];
    [self.detailView addSubview:self.subjectLabel];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self).with.insets(UIEdgeInsetsMake(10, 20, 10, 20));
    }];
    
    [self.detailView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.backView);
        make.height.equalTo(@30);
    }];
    
    [self.decorationDot mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView).offset(7);
        make.left.equalTo(self.backView.mas_left).offset(15);
        make.width.height.equalTo(@10);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.decorationDot.mas_right).offset(6);
        make.centerY.equalTo(self.decorationDot);
    }];
    
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.detailView).offset(15);
        make.centerY.equalTo(self.detailView.mas_centerY);
    }];
    
    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.detailView).offset(100);
        make.centerY.equalTo(self.detailView.mas_centerY);
    }];
    
    [self.subjectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.detailView).offset(200);
        make.centerY.equalTo(self.detailView.mas_centerY);
    }];
    
}
#pragma mark 懒加载
-(UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor whiteColor];
        _backView.layer.cornerRadius = 10;
        _backView.clipsToBounds = true;
    }
    return _backView;
}

-(UIView *)detailView{
    if (!_detailView) {
        _detailView = [[UIView alloc] init];
        _detailView.backgroundColor = [UIColor colorWithRed:0.97 green:0.97 blue:0.97 alpha:1.00];
    }
    return _detailView;
}
-(UILabel *)subjectLabel{
    if (!_subjectLabel) {
        _subjectLabel = [[UILabel alloc] init];
        _subjectLabel.text = @"高数";
        _subjectLabel.font = [UIFont systemFontOfSize:11];
    }
    return _subjectLabel;
}

-(UILabel *)timeLabel{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.text = @"8:00";
        _timeLabel.font = [UIFont systemFontOfSize:11];
        [_timeLabel sizeToFit];
    }
    return _timeLabel;
}

-(UILabel *)locationLabel{
    if (!_locationLabel) {
        _locationLabel = [[UILabel alloc] init];
        _locationLabel.text = @"14楼";
        _locationLabel.font = [UIFont systemFontOfSize:11];
    }
    return _locationLabel;
}

-(UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = @"课程提醒";
        _titleLabel.font = [UIFont systemFontOfSize:11];
    }
    return _titleLabel;
}

-(UIView*) decorationDot{
    if(!_decorationDot){
        _decorationDot = [[UIView alloc] init];
        _decorationDot.layer.cornerRadius = 5;
    }
    return _decorationDot;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


@end
