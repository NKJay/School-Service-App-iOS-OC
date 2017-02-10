//
//  PickerTextFieldViewController.h
//  School-Service-App-OC
//
//  Created by NKJay on 2017/2/10.
//  Copyright © 2017年 NKjay. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PickerTextFieldDelegate <NSObject>

- (void)PickerTextFielddidSelectedDate;

@end

@interface PickerTextFieldViewController : UIViewController

@end
