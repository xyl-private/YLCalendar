//
//  JYJobCalendarTitleDateView.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/6/28.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JYJobCalendarTitleDateViewDelegate <NSObject>

- (void)jy_lastMonthBtnAction;
- (void)jy_nextMonthBtnAction;
- (void)jy_todayMonthBtnAction;

@end

@interface JYJobCalendarTitleDateView : UIView
/** 代理 */
@property (nonatomic, weak) id<JYJobCalendarTitleDateViewDelegate> delegate;

/** 显示的日期 */
@property (nonatomic, copy) NSString * titleDate;

/** 今天 */
@property (nonatomic, strong) UIButton * todayBtn;
@end
