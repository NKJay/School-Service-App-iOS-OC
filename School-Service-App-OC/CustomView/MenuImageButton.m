//
//  ImageButton.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuImageButton.h"

@implementation MenuImageButton

-(id)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self setupButton];
        
    }
    return self;
}

-(void)setTitle:(NSString *)title{
    [self setTitle:title forState:UIControlStateNormal];
}

- (void)setImage:(UIImage *)image{
    [self setImage:image forState:UIControlStateNormal];
}


- (void)setupButton{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self setTintColor:[UIColor clearColor]];
}
//模仿系统的点击变灰效果
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.alpha = 0.5;
//}
//
//- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    self.alpha = 1;
//}
//重新布局图片和标题位置
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 64, contentRect.size.width, 12);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageSideLength = CGRectGetWidth(contentRect) *0.50 - 12;
    return CGRectMake(imageSideLength, 34, 24, 24);
}

@end
