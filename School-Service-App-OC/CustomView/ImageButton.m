//
//  ImageButton.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "ImageButton.h"

@implementation ImageButton

- (instancetype)initWithTitle:(NSString*) title andImageName:(NSString*) imageName
{
    self = [super init];
    if (self) {
        
        [self setTitle:title forState:UIControlStateNormal];
//        [self setTitle:<#(nullable NSString *)#> forState:<#(UIControlState)#>];
        [self setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        self.imageView.contentMode = UIViewContentModeScaleAspectFill;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super initWithCoder:aDecoder]) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = contentRect.size.height *0.6;
    CGFloat titleW = contentRect.size.width;
    CGFloat titleH = contentRect.size.height - titleY;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageSideLength = CGRectGetWidth(contentRect) *0.5;
    return CGRectMake(CGRectGetWidth(contentRect)*0.25, CGRectGetHeight(contentRect)*0.25, imageSideLength, imageSideLength);
}

@end
