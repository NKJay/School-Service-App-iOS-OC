//
//  TextFieldPickerViewController.h
//  School-Service-App-OC
//
//  Created by NKJay on 2017/1/20.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PickerTextFieldDelegate <NSObject>

- (void)PickerTextFieldDidSelected:(NSString*)content;

@end

@interface TextFieldPickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic, weak)NSArray *data;

@property (nonatomic, weak, nullable) id <PickerTextFieldDelegate> delegate;

@end
