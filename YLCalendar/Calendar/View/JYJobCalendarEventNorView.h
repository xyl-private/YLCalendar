//
//  JYJobCalendarEventNorView.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/3.
//  Copyright © 2018年 McIntosh. All rights reserved.
//
//  暂无待办事项
#import <UIKit/UIKit.h>
@class JYJobCalendarEventNorView;
@protocol JYJobCalendarEventNorViewDelegate <NSObject>

- (void) JYJobCalendarEventNorViewAction;

@end
@interface JYJobCalendarEventNorView : UIView

/** JYJobCalendarEventNorViewDelegate */
@property (nonatomic, weak) id<JYJobCalendarEventNorViewDelegate> delegate;

@end
