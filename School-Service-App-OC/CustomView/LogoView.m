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
@property(nonatomic,strong) NSArray *colors;
@property(nonatomic,strong) UIView *redDot,*orangeDot,*greenDot,*blueDot,*yellowDot,*purpleDot;
@end
IB_DESIGNABLE
@implementation LogoView

//@dynamic cornerRadius;
//- (void)setCornerRadius:(CGFloat)cornerRadius{
//    self.layer.cornerRadius  = cornerRadius;
//    self.layer.masksToBounds = YES;
//}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
//        [self setupLayer];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self setupLayer];
}

- (void)setupLayer{
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.bounds          = CGRectMake(0, 0, 50, 50);
    replicatorLayer.anchorPoint = CGPointMake(0.5, 0.5);
    replicatorLayer.position        =  self.center;
    replicatorLayer.backgroundColor = [UIColor blackColor].CGColor;

    [self.layer addSublayer:replicatorLayer];
    
    for (int i = 0; i < 6; i ++) {
        CALayer *dotLayer        = [CALayer layer];
        dotLayer.bounds          = CGRectMake(0, 0, 10, 10);
        dotLayer.position        = CGPointMake(replicatorLayer.frame.size.height/2, replicatorLayer.frame.size.height/2);
        dotLayer.cornerRadius    = 5.0;
        UIColor *color = self.colors[i];
        dotLayer.backgroundColor = color.CGColor;
        CGFloat angel                     = 2* M_PI/ 6.0 * i;
        dotLayer.anchorPoint = CGPointMake(0.5, 0);
        dotLayer.transform = CATransform3DMakeRotation(angel, 0, 0, 1);
        [replicatorLayer addSublayer:dotLayer];
    }
    
//    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
//    replicatorLayer.bounds          = CGRectMake(0, 0, 50, 50);
//    replicatorLayer.position        =  self.center;
//    replicatorLayer.backgroundColor = [UIColor clearColor].CGColor;
//    
//    [self.layer addSublayer:replicatorLayer];
//    
//    CALayer *dotLayer        = [CALayer layer];
//    dotLayer.bounds          = CGRectMake(0, 0, 10, 10);
//    dotLayer.position        = CGPointMake(5, replicatorLayer.frame.size.height/2 );
//    dotLayer.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.6].CGColor;
//    dotLayer.cornerRadius    = 5.0;
//    [replicatorLayer addSublayer:dotLayer];
//    
//    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
//    animation.duration    = 1.0;
//    animation.fromValue   = @1;
//    animation.toValue     = @0;
//    animation.repeatCount = MAXFLOAT;
//    [dotLayer addAnimation:animation forKey:nil];
//    
//    CGFloat count                     =  6.0;
//    replicatorLayer.instanceCount     = count;
//    CGFloat angel                     = 2* M_PI/count;
//    replicatorLayer.instanceTransform = CATransform3DMakeRotation(angel, 0, 0, 1);
    
    
    
    
//    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
//    replicatorLayer.bounds          = CGRectMake(0, 0, 100, 100);
//    replicatorLayer.cornerRadius    = 10.0;
//    replicatorLayer.position        =  self.center;
//    replicatorLayer.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.2].CGColor;
//    
//    [self.layer addSublayer:replicatorLayer];
    
    
}


- (void)startAnimation{

}

#pragma mark 懒加载
- (NSArray *)colors{
    if (!_colors) {
        _colors = [UIColor decorationColor];
//        NSMutableArray *cgcolors = [NSMutableArray alloc];
//        for (int i = 0; i < uicolors.count; i++) {
//            UIColor *color = uicolors[i];
//            [cgcolors addObject:color.CGColor];
//        }
    }
    return _colors;
}


@end
