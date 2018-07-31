//
//  JYJobCalendarEventModel.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/6/29.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventModel.h"
#import <NSString+YLString.h>
@implementation JYJobCalendarEventModel
- (BOOL)modelCustomTransformFromDictionary:(NSDictionary *)dic {
    self.remindTypeStr = [self remindTypeString:dic[@"remindType"]];
    
    NSString * remindContent = dic[@"remindContent"];
    CGFloat with = [UIScreen mainScreen].bounds.size.width - 20 - 12 - 10 - 36 - 10 - 20;
    self.rowH = [remindContent yl_sizeWithAdapterFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(with, CGFLOAT_MAX)].height + 58;
    self.typeW = [self.remindTypeStr yl_sizeWithAdapterFont:[UIFont systemFontOfSize:14] constrainedToSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)].width + 8;
    return YES;
}

- (NSString *)remindTypeString:(NSString *)type{
    if (type.intValue == 1) {
        return @"意向提醒";
    }else if (type.intValue == 2) {
        return @"日常提醒";
    }
    return @"其他";
}

+(NSDictionary *) dateList{
    return @{
             @"2018-07-01":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"08:59",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"10:12",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:18",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-06":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"欧阳上霜",
                         @"remindTime" : @"08:25",
                         @"remindContent" : @"窗前明月光,疑是地上霜.",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"2",
                         @"custName" : @"张",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"09:38",
                         @"remindContent" : @"牛牪犇山虎 马騳驫海龙",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"3",
                         @"custName" : @"爱新觉罗.玄烨",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:56",
                         @"remindContent" : @"我给你一颗糖，你很高兴，当你看到我给别人两颗，你就对我有看法了。但你不知道他也曾给我两颗糖，而你什么都没给过我。",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"15:44",
                         @"remindContent" : @"被门夹过的核桃还能补脑么？",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"2",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"09:38",
                         @"remindContent" : @"牛牪犇山虎 马騳驫海龙",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"3",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:56",
                         @"remindContent" : @"我给你一颗糖，你很高兴，当你看到我给别人两颗，你就对我有看法了。但你不知道他也曾给我两颗糖，而你什么都没给过我。",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"15:44",
                         @"remindContent" : @"被门夹过的核桃还能补脑么？",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-03":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"11:21",
                         @"remindContent" : @"这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有!",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-07-04":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-05":@[
                     ],
             @"2018-07-02":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     
                     ],
             @"2018-07-07":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-08":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-09":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-07-10":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-11":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-12":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-13":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-14":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-15":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-16":@[
                     
                     ],
             @"2018-07-17":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-18":@[
                     
                     ],
             @"2018-07-19":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-20":@[
                     
                     ],
             @"2018-07-21":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-22":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-23":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-24":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-25":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-07-26":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-27":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-28":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-29":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-07-30":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-09-01":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"08:59",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"10:12",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:18",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-02":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"欧阳上霜",
                         @"remindTime" : @"08:25",
                         @"remindContent" : @"窗前明月光,疑是地上霜.",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"2",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"09:38",
                         @"remindContent" : @"牛牪犇山虎 马騳驫海龙",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"3",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:56",
                         @"remindContent" : @"我给你一颗糖，你很高兴，当你看到我给别人两颗，你就对我有看法了。但你不知道他也曾给我两颗糖，而你什么都没给过我。",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"15:44",
                         @"remindContent" : @"被门夹过的核桃还能补脑么？",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"2",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"09:38",
                         @"remindContent" : @"牛牪犇山虎 马騳驫海龙",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"3",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"12:56",
                         @"remindContent" : @"我给你一颗糖，你很高兴，当你看到我给别人两颗，你就对我有看法了。但你不知道他也曾给我两颗糖，而你什么都没给过我。",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"15:44",
                         @"remindContent" : @"被门夹过的核桃还能补脑么？",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-03":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"11:21",
                         @"remindContent" : @"这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。这里是备注内容，有则显示，无责不显示。",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-09-04":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-05":@[
                     ],
             @"2018-09-06":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     
                     ],
             @"2018-09-07":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-08":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-09":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-09-10":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-11":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-12":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-13":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-14":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-15":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-16":@[
                     
                     ],
             @"2018-09-17":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-18":@[
                     
                     ],
             @"2018-09-19":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-20":@[
                     
                     ],
             @"2018-09-21":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-22":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-23":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-24":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-25":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-09-26":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-27":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-28":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-29":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-09-30":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             // *******
             @"2018-06-01":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-02":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-03":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-06-04":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-05":@[
                     ],
             @"2018-06-06":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     
                     ],
             @"2018-06-07":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-08":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-09":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-06-10":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-11":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-12":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-13":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-14":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-15":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-16":@[
                     
                     ],
             @"2018-06-17":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-18":@[
                     
                     ],
             @"2018-06-19":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-20":@[
                     
                     ],
             @"2018-06-21":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-22":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-23":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-24":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-25":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-06-26":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-27":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-28":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-29":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-06-30":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             
             // ***********
             @"2018-08-01":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-02":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-03":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-08-04":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-05":@[
                     ],
             @"2018-08-06":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     
                     ],
             @"2018-08-07":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-08":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-09":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-08-10":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-11":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-12":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-13":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-14":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-15":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-16":@[
                     
                     ],
             @"2018-08-17":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-18":@[
                     
                     ],
             @"2018-08-19":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-20":@[
                     
                     ],
             @"2018-08-21":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-22":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-23":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-24":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-25":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             @"2018-08-26":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-27":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-28":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-29":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         },
                     ],
             @"2018-08-30":@[
                     @{
                         @"remindType" : @"1",
                         @"custName" : @"张三",
                         @"custMobile" : @"18212345678",
                         @"remindTime" : @"13:13",
                         @"remindContent" : @"56651",
                         @"calenderId" : @"1"
                         }
                     ],
             
             
             // ***********
            
             };
}
@end
