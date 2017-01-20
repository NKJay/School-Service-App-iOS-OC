//
//  TextFieldPickerViewController.m
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/20.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import "TextFieldPickerViewController.h"

@interface TextFieldPickerViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (weak, nonatomic) NSString *currentSelected;

@end

@implementation TextFieldPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark Action
- (IBAction)confirmButtonDidClick:(id)sender {
    [self.delegate PickerTextFieldDidSelected: self.currentSelected];
}
- (IBAction)cancelButtonDidClick:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

#pragma mark  pickerView delegate & dataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.data.count;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    self.currentSelected = self.data[row];
}
@end
