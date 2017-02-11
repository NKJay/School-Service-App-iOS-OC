//
//  RepairViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/31.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "RepairViewController.h"
#import "CustomTextField.h"
#import "PickerTextFieldViewController.h"

@interface RepairViewController ()
@property (weak, nonatomic) IBOutlet CustomTextField *textField;

@end

@implementation RepairViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    //datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    //datePicker.minuteInterval = 30;
    [datePicker setDatePickerMode:UIDatePickerModeDate];
//    [datePicker addTarget:self action:@selector(chooseDate:) forControlEvents:UIControlEventValueChanged];
//
//    
//    选择日期的函数
//    //选择日期
    //设置输入的界面是时间选择的datepicker
    self.textField.inputView = datePicker;
    // Do any additional setup after loading the view from its nib.
}

//-(void)chooseDate:(UIDatePicker *)sender
//{
//    NSDate *selectedDate = sender.date;
//    *formatter = [[NSDateFormatter alloc]init];
//    formatter.dateFormat = @"yyyy-MM-dd";
//    NSString *dateString = [formatter stringFromDate:selectedDate];
//    textFileDate.text = dateString;
//}


#pragma mark Action
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}

@end
