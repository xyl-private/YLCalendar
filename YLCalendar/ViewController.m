//
//  ViewController.m
//  YLCalendar
//
//  Created by McIntosh on 2018/7/31.
//  Copyright © 2018年 xyanl. All rights reserved.
//

#import "ViewController.h"

#import "YLCalendarController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)calendarAction:(id)sender {
    YLCalendarController * cc = [[YLCalendarController alloc] init];
    [self.navigationController pushViewController:cc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
