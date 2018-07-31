//
//  JYJobCalendarViewModel.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarViewModel.h"
#import "JYJobCalendarEventModel.h"
#import <YYModel.h>
@implementation JYJobCalendarViewModel

- (void) loadDataSource{
    NSDictionary * dateListDic = [JYJobCalendarEventModel dateList];
    NSMutableDictionary *mDic = [NSMutableDictionary dictionary];
    [dateListDic.allKeys enumerateObjectsUsingBlock:^(NSString * key, NSUInteger idx, BOOL * _Nonnull stop) {
        NSArray * array = dateListDic[key];
        NSArray * objs = [NSArray yy_modelArrayWithClass:[JYJobCalendarEventModel class] json:array];
        [objs enumerateObjectsUsingBlock:^(JYJobCalendarEventModel * eventModel, NSUInteger idx, BOOL * _Nonnull stop) {
            eventModel.remindDate = key;
        }];
        [mDic setObject:objs forKey:key];
    }];
    [self.dataSourceDic addEntriesFromDictionary:mDic];
}

- (NSMutableDictionary *)dataSourceDic {
    if (_dataSourceDic == nil) {
        _dataSourceDic = [[NSMutableDictionary alloc]init];
    }
    return _dataSourceDic;
}
@end
