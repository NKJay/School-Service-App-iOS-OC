//
//  NewsTableViewCell.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "NewsTableViewCell.h"
#import "UIColor+decorationColor.h"

@interface NewsTableViewCell()
@property (weak, nonatomic) IBOutlet UIView *decorationDot;
@property (weak, nonatomic) IBOutlet UILabel *catagoryLabel;
@property(assign,nonatomic)BOOL wasRead;
@end
@implementation NewsTableViewCell

- (void)setDecorationDotColor:(NSInteger)position{
    NSArray *dotColor = [UIColor decorationColor];
    UIColor *currentColor = dotColor[position % 6];
    
    self.decorationDot.backgroundColor = self.wasRead ? currentColor : [UIColor clearColor];
    self.decorationDot.layer.borderColor = currentColor.CGColor;
    
    self.catagoryLabel.textColor = currentColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    if (selected) {
        self.wasRead = true;
    }
    // Configure the view for the selected state
}

@end
