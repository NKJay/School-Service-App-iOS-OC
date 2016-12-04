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
        
        self.titleEdgeInsets = UIEdgeInsetsMake(30, 0, 0, 30);
        self.imageEdgeInsets = UIEdgeInsetsMake(0, 30, 30, 0);

    }
    return self;
}

@end
