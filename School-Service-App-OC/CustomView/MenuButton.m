//
//  MenuButton.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//
#import <Masonry/Masonry.h>
#import "MenuButton.h"

@interface MenuButton()
@property(assign,nonatomic)BOOL isSelected;
@end
IB_DESIGNABLE
@implementation MenuButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setImage:[UIImage imageNamed:@"arrow"] forState:UIControlStateNormal];
    }
    return self;
}

-(void)setupSubViews{

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if (self.isSelected) {
        [UIView animateWithDuration:0.5 animations:^{
            self.imageView.transform = CGAffineTransformMakeRotation(0);
        }];
    } else{
        [UIView animateWithDuration:0.5 animations:^{
            self.imageView.transform = CGAffineTransformMakeRotation(M_PI);
        }];
    }
    self.isSelected = !self.isSelected;
}

#pragma mark 懒加载

- (BOOL)isSelected{
    if (!_isSelected) {
        _isSelected = false;
    }
    return _isSelected;
}

@end
