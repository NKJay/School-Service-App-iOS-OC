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

@implementation LogoView

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.backgroundColor = [UIColor clearColor];
//    }
//    return self;
//}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupLayer];
    }
    return self;
}

- (void)setupLayer{
    CAReplicatorLayer *replicatorLayer = [CAReplicatorLayer layer];
    replicatorLayer.bounds          = CGRectMake(0, 0, 50, 50);
    replicatorLayer.position        =  self.center;
    replicatorLayer.backgroundColor = [UIColor clearColor].CGColor;
    
    [self.layer addSublayer:replicatorLayer];
    
    CALayer *dotLayer        = [CALayer layer];
    dotLayer.bounds          = CGRectMake(0, 0, 10, 10);
    dotLayer.position        = CGPointMake(5, replicatorLayer.frame.size.height/2 );
    dotLayer.backgroundColor = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:0.6].CGColor;
    dotLayer.cornerRadius    = 5.0;
    
    [replicatorLayer addSublayer:dotLayer];
    
    CGFloat count                     =  6.0;
    replicatorLayer.instanceCount     = count;
    CGFloat angel                     = 2* M_PI/count;
    replicatorLayer.instanceTransform = CATransform3DMakeRotation(angel, 0, 0, 1);
}

- (void)startAnimation{
    [UIView beginAnimations:nil context:nil];
    self.transform = CGAffineTransformMakeRotation(2 * M_PI);
    [UIView commitAnimations];
}

#pragma mark 懒加载
- (NSArray *)colors{
    if (!_colors) {
        _colors = [UIColor decorationColor];
    }
    return _colors;
}


@end
