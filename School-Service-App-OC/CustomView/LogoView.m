//
//  LogoView.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/22.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "LogoView.h"
#import "UIColor+decorationColor.h"

@interface LogoView ()
@property(nonatomic,strong) NSArray *colors,*dotViews;
@property(nonatomic,strong) UIView *redDot,*orangeDot,*greenDot,*blueDot,*yellowDot,*purpleDot,*backView;
@end

IB_DESIGNABLE
@implementation LogoView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupSubviews];
        [self beginAnimation];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self setupSubviews];
    }
    return self;
}

- (void)setupSubviews{
    self.backView.center = CGPointMake(self.frame.size.width / 2.0, self.frame.size.height / 2.0);
    [self addSubview:self.backView];
    
    ((UIView *)self.dotViews[0]).center = CGPointMake(20, 5);
    ((UIView *)self.dotViews[1]).center = CGPointMake(6, 13);
    ((UIView *)self.dotViews[2]).center = CGPointMake(6, 27);
    ((UIView *)self.dotViews[3]).center = CGPointMake(34, 13);
    ((UIView *)self.dotViews[4]).center = CGPointMake(34, 27);
    ((UIView *)self.dotViews[5]).center = CGPointMake(20, 35);
    for (int i = 0; i < self.dotViews.count; i++) {
        [self.backView addSubview:self.dotViews[i]];
    }
}

- (void)beginAnimation{
    
    CABasicAnimation *animation = [ CABasicAnimation
                                   animationWithKeyPath: @"transform" ];
    animation.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];
    
    //围绕Z轴旋转，垂直与屏幕
    animation.toValue = [ NSValue valueWithCATransform3D:
                         
                         CATransform3DMakeRotation(M_PI, 0.0, 0.0, 1.0) ];
    animation.duration = 1.5;
    //旋转效果累计，先转180度，接着再旋转180度，从而实现360旋转
    animation.cumulative = YES;
    animation.repeatCount = 1000;
    
    //在图片边缘添加一个像素的透明区域，去图片锯齿
    
    [self.backView.layer addAnimation:animation forKey:nil];
}

#pragma mark 懒加载

- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor clearColor];
        _backView.bounds = CGRectMake(0, 0, 40, 40);
    }
    return _backView;
}

- (NSArray *)dotViews{
    if (!_dotViews) {
        NSMutableArray *array = [[NSMutableArray alloc] init];
        for (int i = 0;  i < self.colors.count; i++) {
            UIView *view = [[UIView alloc] init];
            view.backgroundColor = self.colors[i];
            view.bounds = CGRectMake(0, 0, 10, 10);
            view.layer.cornerRadius = 5.0;
            [array addObject:view];
        }
        _dotViews = array;
    }
    return _dotViews;
}

- (NSArray *)colors{
    if (!_colors) {
        _colors = [UIColor decorationColor];
    }
    return  _colors;
}

@end
