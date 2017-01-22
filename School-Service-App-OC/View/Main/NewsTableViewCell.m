//
//  NewsTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "NewsTableViewCell.h"
#import "UIColor+decorationColor.h"

@interface NewsTableViewCell()
@property(strong,nonatomic)UIView *decorationDot,*separaterLine;
@property(strong,nonatomic)UILabel *titleLabel,*catagoryLabel;
@property(strong,nonatomic)UIImageView *videoImageView,*photoImageView,*textImageView;
@property(assign,nonatomic)BOOL wasRead;
@end
@implementation NewsTableViewCell

- (void)setDecorationDotColor:(NSInteger)position{
    NSArray *dotColor = [UIColor decorationColor];
    UIColor *currentColor = dotColor[position % 6];
    
    self.decorationDot.backgroundColor = self.wasRead ? currentColor : [UIColor clearColor];
    self.decorationDot.layer.borderColor = currentColor.CGColor;
    
    self.catagoryLabel.textColor = currentColor;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    [self setupSubViews];
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.wasRead = true;
    }
    // Configure the view for the selected state
}

- (void)setupSubViews{
    [self addSubview:self.separaterLine];
    [self addSubview:self.decorationDot];
    [self addSubview:self.titleLabel];
    [self addSubview:self.catagoryLabel];
    [self addSubview:self.videoImageView];
    [self addSubview:self.photoImageView];
    [self addSubview:self.textImageView];
    
    [self.separaterLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self);
        make.height.equalTo(@1);
        make.left.equalTo(@36);
        make.width.equalTo(self).offset(-20);
    }];
    
    [self.decorationDot mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(12);
        make.top.equalTo(self).with.offset(12);
        make.height.width.equalTo(@20);
    }];
    
    [self.catagoryLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.decorationDot.mas_right).offset(5);
        make.centerY.equalTo(self.decorationDot);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@36);
        make.right.equalTo(@-36);
        make.centerY.equalTo(self);
    }];
    
    [self.videoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@17);
        make.left.equalTo(@36);
        make.bottom.equalTo(@-12);
    }];
    
    [self.photoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@17);
        make.centerY.equalTo(self.videoImageView);
        make.left.equalTo(self.videoImageView.mas_right).offset(4);
    }];
    
    [self.textImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@17);
        make.centerY.equalTo(self.photoImageView);
        make.left.equalTo(self.photoImageView.mas_right).offset(4);
    }];
}

#pragma mark 懒加载

- (UIView*)separaterLine{
    if (!_separaterLine) {
        _separaterLine = [[UIView alloc] init];
        _separaterLine.backgroundColor = [UIColor colorWithRed:0.87 green:0.87 blue:0.87 alpha:1.00];
    }
    return _separaterLine;
}
- (UIView*) decorationDot{
    if(!_decorationDot){
        _decorationDot = [[UIView alloc] init];
        _decorationDot.layer.borderWidth = 1;
        _decorationDot.layer.cornerRadius = 10;
    }
    return _decorationDot;
}

- (UIView*) titleLabel{
    if(!_titleLabel){
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.text = @"奥赛犯案司令范狂傲三番多拉空间扥爱兰陵asdasdassadasdasd";
        _titleLabel.numberOfLines = 2;
        _titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
    }
    return _titleLabel;
}

- (UIView*) catagoryLabel{
    if(!_catagoryLabel){
        _catagoryLabel = [[UILabel alloc] init];
        _catagoryLabel.font = [UIFont systemFontOfSize:8];
        _catagoryLabel.text = @"官方资讯";
    }
    return _catagoryLabel;
}

- (UIImageView *)videoImageView{
    if (!_videoImageView) {
        _videoImageView = [[UIImageView alloc] init];
        _videoImageView.image = [UIImage imageNamed:@"video_tip"];
    }
    return _videoImageView;
}

- (UIImageView *)photoImageView{
    if (!_photoImageView) {
        _photoImageView = [[UIImageView alloc] init];
        _photoImageView.image = [UIImage imageNamed:@"photo_tip"];
    }
    return _photoImageView;
}

- (UIImageView *)textImageView{
    if (!_textImageView) {
        _textImageView = [[UIImageView alloc] init];
        _textImageView.image = [UIImage imageNamed:@"text_tip"];
    }
    return _textImageView;
}

@end
