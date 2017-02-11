//
//  PickerViewTextField.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/2/11.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "PickerViewTextField.h"

@interface PickerViewTextField ()
@property(nonatomic,strong) UIPickerView *pickerView;
@property(nonatomic,strong) UIToolbar *toolBar;
@end

@implementation PickerViewTextField
//
//21 - (void)viewDidLoad
//22 {
//    23     [super viewDidLoad];
//    24     //1
//    25     //添加一个时间选择器
//    26     UIDatePicker *date=[[UIDatePicker alloc]init];
//    27     /**
//            28      *  设置只显示中文
//            29      */
//    30     [date setLocale:[NSLocale localeWithLocaleIdentifier:@"zh-CN"]];
//    31     /**
//            32      *  设置只显示日期
//            33      */
//    34     date.datePickerMode=UIDatePickerModeDate;
//    35 //    [self.view addSubview:date];
//    36
//    37     //当光标移动到文本框的时候，召唤时间选择器
//    38     self.textfield.inputView=date;
//    39
//    40     //2
//    41     //创建工具条
//    42     UIToolbar *toolbar=[[UIToolbar alloc]init];
//    43     //设置工具条的颜色
//    44     toolbar.barTintColor=[UIColor brownColor];
//    45     //设置工具条的frame
//    46     toolbar.frame=CGRectMake(0, 0, 320, 44);
//    47
//    48     //给工具条添加按钮
//    49         UIBarButtonItem *item0=[[UIBarButtonItem alloc]initWithTitle:@"上一个" style:UIBarButtonItemStylePlain target:self action:@selector(click) ];
//    50
//    51         UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithTitle:@"下一个" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
//    52
//    53         UIBarButtonItem *item2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
//    54         UIBarButtonItem *item3=[[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
//    55
//    56      toolbar.items = @[item0, item1, item2, item3];
//    57     //设置文本输入框键盘的辅助视图
//    58     self.textfield.inputAccessoryView=toolbar;
//    59 }
//60 -(void)click
//61 {
//    62     NSLog(@"toolbar");
//    63 }

- (void)setupPopView{
    UIDatePicker *date=[[UIDatePicker alloc]init];
    [date setLocale:[NSLocale localeWithLocaleIdentifier:@"zh-CN"]];
    self.inputView=date;
}

#pragma mark Lazyload

@end
