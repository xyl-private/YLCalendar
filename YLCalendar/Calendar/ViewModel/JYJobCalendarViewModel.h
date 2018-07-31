//
//  JYJobCalendarViewModel.h
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JYJobCalendarViewModel : NSObject

/** dataSource */
@property (nonatomic, strong) NSMutableDictionary * dataSourceDic;

- (void) loadDataSource;
@end
