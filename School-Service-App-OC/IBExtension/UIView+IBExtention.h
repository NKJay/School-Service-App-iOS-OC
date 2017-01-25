//
//  UIView+IBExtention.h
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/25.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (IBExtention)
/*!
 * 给UIView 设置圆角
 */
@property (assign,nonatomic) IBInspectable NSInteger cornerRadius;
@property (assign,nonatomic) IBInspectable BOOL  masksToBounds;

/*!
 * 设置 view的 边框颜色(选择器和Hex颜色)
 * 以及 边框的宽度
 */
@property (assign,nonatomic) IBInspectable NSInteger borderWidth;
@property (strong,nonatomic) IBInspectable NSString  *borderHexRgb;
@property (strong,nonatomic) IBInspectable UIColor   *borderColor;


/*!
 * 设置view的背景Hex颜色 (选择器颜色 是系统自带的不需要写)
 */
@property (assign,nonatomic) IBInspectable NSString  *hexRgbColor;
//TODO: 特别注意
/*!
 * 这个属性可以开启 Retina屏对 1px的支持
 * Retain屏的分辨率 [UIScreen mainScreen].scale分辨率是 >=2
 *
 */
@property (assign,nonatomic) IBInspectable BOOL      onePx;
@end
