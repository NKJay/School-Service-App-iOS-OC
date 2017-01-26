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
@property(strong,nonatomic)UITextField *textField;
@property(strong,nonatomic)UILabel *placeholderLabel;
@property(strong,nonatomic)UIImageView *searchIcon;
@end

@implementation SearchTextField

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidBeginEditing) name:UITextFieldTextDidBeginEditingNotification object:_textField];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldDidEndEditing) name:UITextFieldTextDidEndEditingNotification object:_textField];
    }
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
#pragma mark 监听事件
- (void)textFieldDidBeginEditing{
    [self.textField mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@0);
    }];
    
    [UIView animateWithDuration:0.5 animations:^{
        self.placeholderLabel.alpha = 0;
    }];
}

- (void)textFieldDidEndEditing{
    
}

#pragma mark 布局
- (void)layoutSubviews{
    [super layoutSubviews];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        self.layer.cornerRadius = self.bounds.size.height / 2.0;
        [self clipsToBounds];
        [self setupSubViews];
    });
}

-(void)setupSubViews{
    [self addSubview:self.textField];
    [self insertSubview:self.placeholderLabel atIndex:0];
    
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
    [self.placeholderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
}

#pragma mark 点击事件
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self endEditing:true];
}

#pragma mark 懒加载
- (UITextField *)textField{
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.textAlignment = NSTextAlignmentCenter;
        _textField.backgroundColor = [UIColor clearColor];
    }
    return _textField;
}

- (UILabel *)placeholderLabel{
    if (!_placeholderLabel) {
        _placeholderLabel = [[UILabel alloc] init];
        _placeholderLabel.text = _placeholder;
        _placeholderLabel.textColor = [UIColor blackColor];
        _placeholderLabel.textAlignment = NSTextAlignmentCenter;
        _placeholderLabel.font = [UIFont systemFontOfSize:9];
    }
    return _placeholderLabel;
}
@end
