//
//  JYJobCalendarEventCell.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <UIKit/UIKit.h>
@class JYJobCalendarEventModel;
@interface JYJobCalendarEventCell : UITableViewCell
/** 圆点上方的竖线 view */
@property (nonatomic, strong) UIView * dotUpView;

/** 圆点下方的竖线 view */
@property (nonatomic, strong) UIView * dotDownView;

/** JYJobCalendarEventModel model */
@property (nonatomic, strong) JYJobCalendarEventModel * eventModel;
@end
