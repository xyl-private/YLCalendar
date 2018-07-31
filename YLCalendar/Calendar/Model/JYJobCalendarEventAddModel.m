//
//  JYJobCalendarEventAddModel.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/4.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventAddModel.h"
@implementation JYJobCalendarEventAddModel

+(NSDictionary *) jy_jobCalendarEventType{
    return @{
             @"意向提醒":@"1",
             @"日常提醒":@"2",
             @"其他":@"3"
             };
}

+(NSDictionary *)loadBaseDataSource{
    return @{
             @"1":@[
                     @{
                         @"title":@"提醒类型",
                         @"content":@"",
                         @"options":@[@"意向提醒",@"日常提醒",@"其他"],
                         @"selectedOption" : @"",
                         @"dictValue" : @"",
                         @"optionW" : @80,
                         @"optionH" : @30,
                         @"edited" : @(YES),
                         @"placeholder":@"",
                         @"itemH":@"100",
                         @"section":@"0",
                         @"row":@"0",
                         },
                     @{
                         @"title":@"客户姓名（选填）",
                         @"content":@"张三",
                         @"edited" : @(YES),
                         @"dictValue" : @"",
                         @"placeholder":@"越努力 越幸运",
                         @"itemH":@"56",
                         @"section":@"0",
                         @"row":@"1",
                         },
                     @{
                         @"title":@"提醒时间",
                         @"content":@"",
                         @"edited" : @(YES),
                         @"dictValue" : @"",
                         @"placeholder":@"越努力 越幸运",
                         @"itemH":@"56",
                         @"section":@"0",
                         @"row":@"2",
                         },
                     ],
             @"2":@[
                     @{
                         @"title":@"备注（选填）",
                         @"content":@"",
                         @"placeholder":@"请填写备注信息",
                         @"itemH":@"200",
                         @"section":@"1",
                         @"row":@"0",
                         }
                     ]
             };
}
@end

