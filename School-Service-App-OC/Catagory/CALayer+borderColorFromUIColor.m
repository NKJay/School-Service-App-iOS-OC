//
//  CALayer+borderColorFromUIColor.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/21.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "CALayer+borderColorFromUIColor.h"

@implementation CALayer (borderColorFromUIColor)

- (void)setBorderColorFromUIColor:(UIColor *)color

{
    
    self.borderColor = color.CGColor;
    
}
@end
