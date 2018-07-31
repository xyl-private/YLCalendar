
//
//  YLHomeViewController.m
//  YLCalendar
//
//  Created by McIntosh on 2018/7/31.
//  Copyright © 2018年 xyanl. All rights reserved.
//

#import "YLHomeViewController.h"
#import "YLCalendarController.h"
@interface YLHomeViewController ()

@end

@implementation YLHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)calendarAction:(id)sender {
    YLCalendarController * cc = [[YLCalendarController alloc] init];
    [self.navigationController pushViewController:cc animated:YES];
}

@end
