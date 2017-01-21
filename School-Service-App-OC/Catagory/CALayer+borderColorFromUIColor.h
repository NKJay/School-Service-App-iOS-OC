//
//  CALayer+borderColorFromUIColor.h
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/21.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface CALayer (borderColorFromUIColor)

- (void)setBorderColorFromUIColor:(UIColor *)color;
@end
