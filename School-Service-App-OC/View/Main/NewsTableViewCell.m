//
//  NewsTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "NewsTableViewCell.h"
#import "UIColor_decorationColor.h"

@interface NewsTableViewCell()
@property(strong,nonatomic)UIView *decorationDot;
@property(assign,nonatomic)BOOL wasSelected;
@end
@implementation NewsTableViewCell

- (void)setDecorationDotColor:(NSInteger)position{
    NSArray *dotColor = [UIColor decorationColor];
    UIColor *currentColor = dotColor[position % 6];
    _decorationDot.backgroundColor = self.wasSelected ? currentColor : [UIColor whiteColor];
    _decorationDot.layer.borderColor = currentColor.CGColor;
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
#pragma mark 懒加载
-(UIView*) decorationDot{
    if(!_decorationDot){
        _decorationDot = [[UIView alloc] init];
        _decorationDot.layer.borderWidth = 1;
        _decorationDot.layer.cornerRadius = 5;
    }
    return _decorationDot;
}

@end
