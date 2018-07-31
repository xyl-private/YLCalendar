//
//  JYJobCalendarEventModel.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/6/29.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JYJobCalendarEventModel : NSObject
/** 代办事件 id */
@property (nonatomic, copy) NSString * calenderId;
/** 提醒类型 */
@property (nonatomic, copy) NSString * remindType;
/** 客户姓名 */
@property (nonatomic, copy) NSString * custName;
/** 提醒时间 */
@property (nonatomic, copy) NSString * remindTime;
/** 提醒内容 */
@property (nonatomic, copy) NSString * remindContent;
/** 客户id */
@property (nonatomic, copy) NSString * custId;
/** 客户手机号 */
@property (nonatomic, copy) NSString * custMobile;

/** 辅助 */
/** 提醒类型 */
@property (nonatomic, copy) NSString * remindTypeStr;
/** 提醒日期 只含有 年月日*/
@property (nonatomic, copy) NSString * remindDate;
/** cell 高度 */
@property (nonatomic, assign) CGFloat rowH;

/** 意向类型的宽度 */
@property (nonatomic, assign) CGFloat typeW;
+ (NSDictionary *) dateList;
- (NSString *)remindTypeString:(NSString *)type;
@end
