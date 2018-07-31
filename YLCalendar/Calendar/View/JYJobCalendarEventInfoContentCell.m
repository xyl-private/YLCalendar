//
//  JYJobCalendarEventInfoContentCell.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/3.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventInfoContentCell.h"

#import <UIColor+YLColor.h>
#import <Masonry.h>
@interface JYJobCalendarEventInfoContentCell ()
/** 名字 */
@property (nonatomic, strong) UILabel * timeLabel;

/** 提醒内容 */
@property (nonatomic, strong) UITextView * remindContentTextView;


@end

@implementation JYJobCalendarEventInfoContentCell
- (void)setEventModel:(JYJobCalendarEventModel *)eventModel{
    _eventModel = eventModel;
    self.timeLabel.text = [NSString stringWithFormat:@"%@ %@",eventModel.remindDate,eventModel.remindTime];
    self.remindContentTextView.text = eventModel.remindContent;
}

#pragma mark - 布局控件
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.top.equalTo(self.contentView.mas_top).offset(8);
        make.height.equalTo(@16);
    }];
    [self.remindContentTextView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.timeLabel.mas_bottom).offset(16);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.bottom.equalTo(self.contentView);
    }];
    
}
- (UILabel *)timeLabel{
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _timeLabel.textColor = [UIColor yl_colorWithHexString:@"999999"];
        _timeLabel.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:_timeLabel];
    }
    return _timeLabel;
}

- (UITextView *)remindContentTextView{
    if (_remindContentTextView == nil) {
        _remindContentTextView = [[UITextView alloc]initWithFrame:CGRectZero];
        _remindContentTextView.textColor = [UIColor yl_colorWithHexString:@"656E7B"];
        _remindContentTextView.font = [UIFont systemFontOfSize:16];
        _remindContentTextView.editable = NO;
        _remindContentTextView.scrollEnabled = NO;
        [self.contentView addSubview:_remindContentTextView];
    }
    return _remindContentTextView;
}



@end
