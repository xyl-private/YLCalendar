//
//  JYJobCalendarEventInfoTitleCell.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JYJobCalendarEventModel.h"
@class JYJobCalendarEventInfoTitleCell;
@protocol JYJobCalendarCustomerInfoDelegate <NSObject>

- (void)JYJobCalendarEventInfoTitleCell:(JYJobCalendarEventInfoTitleCell *)cell;

@end

@interface JYJobCalendarEventInfoTitleCell : UITableViewCell

/** Description */
@property (nonatomic, weak) id<JYJobCalendarCustomerInfoDelegate> delegate;

/** JYJobCalendarEventModel */
@property (nonatomic, strong) JYJobCalendarEventModel * eventModel;
@end
