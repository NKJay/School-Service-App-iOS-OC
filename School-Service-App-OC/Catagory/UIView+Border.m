//
//  UIView+Border.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/4.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "UIView+Border.h"

@implementation UIView (Border)
-(void)addbottomBorderWith:(CGFloat)lenght AndColor:(UIColor *)color{
    
    CALayer *bottomBorder = [CALayer layer];
    
    bottomBorder.frame = CGRectMake(0, self.bounds.size.height - 1,lenght, 1);
    
    bottomBorder.backgroundColor = color.CGColor;
    
    [self.layer addSublayer:bottomBorder];
}
@end
