//
//  JYJobCalendarEventAddModel.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/4.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JYJobCalendarEventAddModel : NSObject
///** 工号 */
//@property (nonatomic, copy) NSString * userNo;
///** 唯一标识 */
//@property (nonatomic, copy) NSString * onlyId;
///** 设备唯一标识  */
//@property (nonatomic, copy) NSString * pid;
///** 项目编号 */
//@property (nonatomic, copy) NSString * projectNo;
///** 提醒类型 */
//@property (nonatomic, copy) NSString * remindType;
///** 客户姓名 */
//@property (nonatomic, copy) NSString * custName;
///** 客户手机号 */
@property (nonatomic, copy) NSString * custMobile;
///** 提醒时间 */
//@property (nonatomic, copy) NSString * remindTime;
///** 日历内容 */
//@property (nonatomic, copy) NSString * calenderContent;
///** 增加和修改标识 */
//@property (nonatomic, copy) NSString * addMark;
///** 日历ID */
//@property (nonatomic, copy) NSString * calendarId;
///** 客户 */
//@property (nonatomic, copy) NSString * custormId;

/** 辅助 */
/** 标题 */
@property (nonatomic, copy) NSString *title;
/** 内容 */
@property (nonatomic, copy) NSString *content;
/** 占位内容 */
@property (nonatomic, copy) NSString *placeholder;
/** 字典内容 */
@property (nonatomic, copy) NSString *dictValue;
/** 选中选项 */
@property (nonatomic, copy) NSString *selectedOption;
/** 选择内容 */
@property (nonatomic, strong) NSArray *options;
/** 正常高度 */
@property (nonatomic, assign) CGFloat itemH;
/** 组 */
@property (nonatomic, assign) NSInteger section;
/** 行 */
@property (nonatomic, assign) NSInteger row;
/** 选项宽 */
@property (nonatomic, assign) CGFloat optionW;
/** 选项高 */
@property (nonatomic, assign) CGFloat optionH;


+(NSDictionary *)loadBaseDataSource;

/**
 工作日历 提醒类型 数据字典
 */
+(NSDictionary *) jy_jobCalendarEventType;
@end
