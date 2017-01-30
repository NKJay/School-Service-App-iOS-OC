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
    self.titleLabel.textColor = [UIColor blackColor];
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    return CGRectMake(0, 64, contentRect.size.width, 12);
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageSideLength = CGRectGetWidth(contentRect) *0.50 - 12;
    return CGRectMake(imageSideLength, 34, 24, 24);
}

@end
