//
//  MenuViewController.m
//  School-Service-App-OC
//
//  Created by NKjay on 2016/12/3.
//  Copyright © 2016年 NKjay. All rights reserved.
//

#import "MenuViewController.h"
#import "ConsumptionViewController.h"
#import "LostAndFoundCheckinViewController.h"
#import "PersonalInformationViewController.h"
#import "RegisterViewController.h"
#import "RepairViewController.h"
#import "ParcelViewController.h"

@interface MenuViewController ()
@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
    [self.navigationController.navigationBar setBackgroundColor:[UIColor clearColor]];
}


#pragma mark Action
- (IBAction)toPersonalView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (IBAction)toLostAndFoundView:(id)sender {
    [self.navigationController pushViewController:[[LostAndFoundCheckinViewController alloc] init] animated:true];
}
- (IBAction)toSearchView:(id)sender {
    [self.navigationController pushViewController:[[PersonalInformationViewController alloc] init] animated:true];
}
- (IBAction)toCosumptionView:(id)sender {
    UIViewController *consumptionViewController = [[UIStoryboard storyboardWithName:@"ConsumptionViewController" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:consumptionViewController animated:true];
}
- (IBAction)toRepairView:(id)sender {
    [self.navigationController pushViewController:[[RepairViewController alloc] init] animated:true];
}
- (IBAction)toEventView:(id)sender {
    [self.navigationController pushViewController:[[ParcelViewController alloc] init] animated:true];
}
@end
