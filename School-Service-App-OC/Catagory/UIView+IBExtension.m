//
//  UIView+IBExtension.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/25.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "UIView+IBExtension.h"

@implementation UIView (IBExtension)

- (void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.cornerRadius  = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius
{
    return self.layer.cornerRadius;
}
@end
