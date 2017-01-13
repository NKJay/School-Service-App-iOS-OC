//
//  ConsumptionTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/13.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "ConsumptionTableViewCell.h"
#import <Masonry/Masonry.h>

@interface ConsumptionTableViewCell ()
@property(strong,nonatomic) UIImageView *catagoryIconView;
@property(strong,nonatomic) UILabel *dateLabelView;
@property(strong,nonatomic) UILabel *timeLabelView;
@property(strong,nonatomic) UILabel *catagoryLabelView;
@property(strong,nonatomic) UILabel *priceLabelView;
@end

@implementation ConsumptionTableViewCell

- (void)layoutSubviews{
    [super layoutSubviews];
    [self setupSubViews];
}

- (void)setupSubViews{
    [self.contentView addSubview:self.catagoryIconView];
    [self.contentView addSubview:self.dateLabelView];
    [self.contentView addSubview:self.timeLabelView];
    [self.contentView addSubview:self.catagoryLabelView];
    [self.contentView addSubview:self.priceLabelView];
    
    [self.catagoryIconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@93);
        make.centerY.equalTo(self.contentView);
    }];
    [self.dateLabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(@18);
    }];
    [self.timeLabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dateLabelView.mas_bottom).offset(22);
        make.left.equalTo(self.dateLabelView.mas_left);
    }];
    [self.priceLabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@130);
        make.top.equalTo(@19);
    }];
    [self.catagoryLabelView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.priceLabelView);
        make.top.equalTo(self.priceLabelView.mas_bottom).offset(11);
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

#pragma mark 懒加载

- (UIImageView *)catagoryIconView{
    if (!_catagoryIconView) {
        _catagoryIconView = [[UIImageView alloc] init];
        _catagoryIconView.image = [UIImage imageNamed:@"settings_icon"];
    }
    return _catagoryIconView;
}
- (UILabel *)dateLabelView{
    if (!_dateLabelView) {
        _dateLabelView = [[UILabel alloc] init];
        _dateLabelView.text = @"今天";
    }
    return _dateLabelView;
}

- (UILabel *)timeLabelView{
    if (!_timeLabelView) {
        _timeLabelView = [[UILabel alloc] init];
        _timeLabelView.text = @"11:00";
    }
    return _timeLabelView;
}
- (UILabel *)catagoryLabelView{
    if (!_catagoryLabelView) {
        _catagoryLabelView = [[UILabel alloc] init];
        _catagoryLabelView.text = @"电费";
    }
    return _catagoryLabelView;
}
- (UILabel *)priceLabelView{
    if (!_priceLabelView) {
        _priceLabelView = [[UILabel alloc] init];
        _priceLabelView.text = @"-11";
    }
    return _priceLabelView;
}
@end
