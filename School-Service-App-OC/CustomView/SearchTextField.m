//
//  SearchTextField.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/5.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import <Masonry/Masonry.h>
#import "SearchTextField.h"

@interface SearchTextField()
@property(strong,nonatomic)UILabel *placeholderLabel;
@property(strong,nonatomic)UIImageView *searchIcon;
@end
IB_DESIGNABLE
@implementation SearchTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupSubViews];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupSubViews];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
#pragma mark 监听事件
- (void)textFieldDidBeginEditing{
    [UIView animateWithDuration:0.5 animations:^{
        self.placeholderLabel.alpha = 0;
    }];
}

- (void)textFieldDidEndEditing{
    if (self.text.length == 0) {
        [UIView animateWithDuration:0.5 animations:^{
            self.placeholderLabel.alpha = 1;
        }];
    }
}

#pragma mark 布局

-(void)setupSubViews{
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidBeginEditing) name:UITextFieldTextDidBeginEditingNotification object:self];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidEndEditing) name:UITextFieldTextDidEndEditingNotification object:self];
    
    self.textAlignment = NSTextAlignmentCenter;
    self.backgroundColor = [UIColor whiteColor];
    self.borderStyle = UITextBorderStyleNone;
    
    [self insertSubview:self.placeholderLabel atIndex:0];
    
    [self.placeholderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}

#pragma mark 懒加载

- (UILabel *)placeholderLabel{
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.text = @"包裹查询";
        _placeholderLabel.textColor = [UIColor blackColor];
        _placeholderLabel.textAlignment = NSTextAlignmentCenter;
        _placeholderLabel.font = [UIFont systemFontOfSize:9];
    }
    return _placeholderLabel;
}
@end
