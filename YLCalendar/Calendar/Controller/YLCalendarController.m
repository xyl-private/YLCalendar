//
//  YLCalendarController.m
//  YLCalendar
//
//  Created by McIntosh on 2018/7/31.
//  Copyright © 2018年 xyanl. All rights reserved.
//

#import "YLCalendarController.h"

#import <UIColor+YLColor.h>
#import <Masonry.h>
@interface YLCalendarController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, weak) UITableView * tableViewList;
@end
static NSString * ContentCellIdentifier = @"JYJobCalendarEventInfoContentCell";

@implementation YLCalendarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"日历";
    self.view.backgroundColor = [UIColor whiteColor];
}

/**
 *  布局
 */
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    [self.tableViewList mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).insets(UIEdgeInsetsMake(64, 0, 0, 0));
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 6;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"cell header %ld",(long)section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:ContentCellIdentifier];
    //cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = @"cell";
    return cell;
    
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    NSIndexPath *path = [NSIndexPath indexPathForItem:0 inSection:3];
    [tableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionTop];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    UIView * view = [[UIView alloc]init];
//    view.backgroundColor = [UIColor redColor];
//    return view;
//}

#pragma mark - 懒加载
- (UITableView *)tableViewList
{
    if (_tableViewList == nil) {
        UITableView * tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        if (@available(iOS 11.0, *)) {
            tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            tableView.estimatedRowHeight = 0;
            tableView.estimatedSectionHeaderHeight = 0;
            tableView.estimatedSectionFooterHeight = 0;
        }
        tableView.backgroundColor = [UIColor whiteColor];
        
        //tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        tableView.dataSource = self;
        tableView.delegate = self;
//        [tableView registerClass:[JYJobCalendarEventInfoTitleCell class] forCellReuseIdentifier:TitleCellIdentifier];
        
        _tableViewList = tableView;
        [self.view addSubview:_tableViewList];
    }
    return _tableViewList;
}

@end
