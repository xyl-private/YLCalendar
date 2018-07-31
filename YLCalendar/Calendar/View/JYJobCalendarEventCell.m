//
//  JYJobCalendarEventCell.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventCell.h"

#import "JYJobCalendarEventModel.h"

#import <Masonry.h>
#import <UIColor+YLColor.h>
@interface JYJobCalendarEventCell ()
/** 圆点 view */
@property (nonatomic, strong) UIImageView * dotView;

/** 时间 label */
@property (nonatomic, strong) UILabel * timeLabel;

/** 提醒内容 View */
@property (nonatomic, strong) UIView * remindContentView;

/** 箭头 */
@property (nonatomic, strong) UIImageView * arrowsView;

/** 提醒内容 */
@property (nonatomic, strong) UILabel * remindContentLabel;

/** 提醒类型 */
@property (nonatomic, strong) UILabel * remindTypeLabel;
@end

@implementation JYJobCalendarEventCell

- (void)setEventModel:(JYJobCalendarEventModel *)eventModel{
    _eventModel = eventModel;
    self.timeLabel.text = eventModel.remindTime;
    self.remindTypeLabel.text = eventModel.remindTypeStr;
    self.remindContentLabel.text = eventModel.remindContent;
}

#pragma mark - 布局控件
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.dotView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.height.with.equalTo(@12);
        make.left.equalTo(self.contentView.mas_left).offset(20);
    }];
    [self.dotUpView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top);
        make.bottom.equalTo(self.dotView.mas_top).offset(-6);
        make.centerX.equalTo(self.dotView.mas_centerX);
        make.width.equalTo(@2);
    }];
    [self.dotDownView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.dotView.mas_bottom).offset(6);
        make.bottom.equalTo(self.contentView.mas_bottom);
        make.centerX.equalTo(self.dotView.mas_centerX);
        make.width.equalTo(@2);
    }];
    
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.dotView.mas_centerY);
        make.left.equalTo(self.dotView.mas_right).offset(10);
        make.height.equalTo(@16);
        make.width.equalTo(@36);
    }];
    
    CGFloat with = [UIScreen mainScreen].bounds.size.width - 20 - 12 - 10 - 36 - 10 - 20;
    [self.remindContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.dotView.mas_centerY);
        make.left.equalTo(self.timeLabel.mas_right).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-8);
        make.top.equalTo(self.contentView.mas_top).offset(8);
        make.width.equalTo(@(with));
    }];
    
    [self.arrowsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.remindContentView.mas_centerY);
        make.right.equalTo(self.remindContentView.mas_right).offset(-10);
        make.size.equalTo(@(self.arrowsView.image.size));
    }];
    
    [self.remindTypeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.remindContentView.mas_left).offset(15);
        make.bottom.equalTo(self.remindContentView.mas_bottom).offset(-8);
        make.height.equalTo(@20);
    }];
    
    [self.remindContentLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.remindContentView.mas_left).offset(16);
        make.top.equalTo(self.remindContentView.mas_top).offset(8);
        make.right.equalTo(self.arrowsView.mas_left).offset(-8);
        make.bottom.equalTo(self.remindTypeLabel.mas_top).offset(-4);
    }];
}

#pragma mark - 懒加载

- (UIImageView *)dotView{
    if (_dotView == nil) {
        _dotView = [[UIImageView alloc]initWithFrame:CGRectZero];
        _dotView.image = [UIImage imageNamed:@"icon_app_shijianjiedian"];
        [self.contentView addSubview:_dotView];
    }
    return _dotView;
}

- (UIView *)dotUpView{
    if (_dotUpView == nil) {
        _dotUpView = [[UIView alloc]initWithFrame:CGRectZero];
        _dotUpView.backgroundColor = [UIColor yl_colorWithHexString:@"FFCD4D"];
        [self.contentView addSubview:_dotUpView];
    }
    return _dotUpView;
}

- (UIView *)dotDownView{
    if (_dotDownView == nil) {
        _dotDownView = [[UIView alloc]initWithFrame:CGRectZero];
         _dotDownView.backgroundColor = [UIColor yl_colorWithHexString:@"FFCD4D"];
        [self.contentView addSubview:_dotDownView];
    }
    return _dotDownView;
}

- (UILabel *)timeLabel{
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _timeLabel.textColor = [UIColor yl_colorWithHexString:@"656E7B"];
        _timeLabel.font = [UIFont systemFontOfSize:12];
        _timeLabel.text = @"08:00";
        [self.contentView addSubview:_timeLabel];
    }
    return _timeLabel;
}

- (UIView *)remindContentView{
    if (_remindContentView == nil) {
        _remindContentView = [[UIView alloc]initWithFrame:CGRectZero];
        _remindContentView.backgroundColor = [UIColor whiteColor];
        _remindContentView.layer.shadowColor = [UIColor yl_colorWithHexString:@"4A98FB"].CGColor;//shadowColor阴影颜色
        _remindContentView.layer.shadowOffset = CGSizeMake(0, 0);//shadowOffset阴影偏移，默认(0, -3),这个跟shadowRadius配合使用
        _remindContentView.layer.shadowOpacity = 0.1f;//阴影透明度，默认0
        _remindContentView.layer.shadowRadius = 8.0f;//阴影半径，默认3
        
        [self addSubview:_remindContentView];
    }
    return _remindContentView;
}

- (UIImageView *)arrowsView{
    if (_arrowsView == nil) {
        _arrowsView = [[UIImageView alloc]initWithFrame:CGRectZero];
        _arrowsView.image = [UIImage imageNamed:@"icon_arrowRight"];
        [self.remindContentView addSubview:_arrowsView];
    }
    return _arrowsView;
}

- (UILabel *)remindContentLabel{
    if (_remindContentLabel == nil) {
        _remindContentLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _remindContentLabel.textColor = [UIColor yl_colorWithHexString:@"29354D"];
        _remindContentLabel.font = [UIFont systemFontOfSize:14];
        _remindContentLabel.numberOfLines = 0;
        [self.remindContentView addSubview:_remindContentLabel];
    }
    return _remindContentLabel;
}

- (UILabel *)remindTypeLabel{
    if (_remindTypeLabel == nil) {
        _remindTypeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _remindTypeLabel.textColor = [UIColor yl_colorWithHexString:@"656E7B"];
        _remindTypeLabel.font = [UIFont systemFontOfSize:14];
        _remindTypeLabel.text = @"日常提醒";
        [self.remindContentView addSubview:_remindTypeLabel];
    }
    return _remindTypeLabel;
}
@end
