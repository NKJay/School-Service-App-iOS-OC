//
//  ImageButton.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "ImageButton.h"
IB_DESIGNABLE
@implementation ImageButton

- (instancetype)initWithTitle:(NSString*) title andImageName:(NSString*) imageName
{
    self = [super init];
    if (self) {
        [self setupButton];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self=[super initWithCoder:aDecoder]) {
        [self setupButton];
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame{
    if (self=[super initWithFrame:frame]) {
        [self setupButton];
    }
    return self;
}

- (void)setupButton{
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:12];
    
    CALayer *bottomBorder = [CALayer layer];
    
    bottomBorder.frame = CGRectMake(21.0f, self.frame.size.height, self.frame.size.width - 42, 1.0f);
    
    bottomBorder.backgroundColor = [UIColor colorWithRed:0.41 green:0.38 blue:0.35 alpha:1.00].CGColor;
    
    [self.layer addSublayer:bottomBorder];
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 64, contentRect.size.width, 12);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageSideLength = CGRectGetWidth(contentRect) *0.50 - 12;
    return CGRectMake(imageSideLength, 34, 24, 24);
}

@end
