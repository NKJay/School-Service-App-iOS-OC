//
//  MenuViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuViewController.h"
#import <Masonry/Masonry.h>
#import "ImageButton.h"
#import "ConsumptionViewController.h"
#import "LostAndFoundCheckinViewController.h"
#import "RegisterViewController.h"

@interface MenuViewController ()
@property (weak, nonatomic) IBOutlet ImageButton *abc;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",NSStringFromUIEdgeInsets(_abc.imageEdgeInsets));

}


#pragma mark 点击事件
- (void)consumptionButtonDidClick{
    [self presentViewController:[[ConsumptionViewController alloc] init] animated:true completion:nil];
}

- (void)avaterButtonDidClick{
    UIViewController *vc = [[RegisterViewController alloc] init];
    [self presentViewController:vc animated:true completion:nil];
    
}
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
