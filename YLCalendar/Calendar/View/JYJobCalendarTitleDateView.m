//
//  JYJobCalendarTitleDateView.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/6/28.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarTitleDateView.h"

#import <Masonry.h>
#import <UIColor+YLColor.h>
#import "NSDate+YLDate.h"
@interface JYJobCalendarTitleDateView ()
/** 显示 当前年月份 */
@property (nonatomic, strong) UILabel * timeLabel;
/** 上一个月 */
@property (nonatomic, strong) UIButton * lastMonthBtn;
/** 下一个月 */
@property (nonatomic, strong) UIButton * nextMonthBtn;
/** 线 */
@property (nonatomic, strong) UIView * lineView;

/** meng ban  */
@property (nonatomic, strong) UIView * markView;
@end

@implementation JYJobCalendarTitleDateView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setTitleDate:(NSString *)titleDate{
    _titleDate = titleDate;
    self.timeLabel.text = titleDate;
}
/**
 * 布局控件
 */
- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@10);
        make.top.left.right.equalTo(self);
    }];
    
    [self.markView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lineView.mas_bottom);
        make.bottom.left.right.equalTo(self);
    }];
    
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.markView);
        make.height.equalTo(@17);
        make.width.equalTo(@70);
    }];
    [self.lastMonthBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.markView.mas_centerY);
        make.right.equalTo(self.timeLabel.mas_left).offset(-8);
        make.height.equalTo(@24);
        make.width.equalTo(@24);
    }];
    [self.nextMonthBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.markView.mas_centerY);
        make.left.equalTo(self.timeLabel.mas_right).offset(8);
        make.height.equalTo(@24);
        make.width.equalTo(@24);
    }];
    [self.todayBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.markView.mas_centerY);
        make.right.equalTo(self.markView.mas_right).offset(-20);
        make.height.equalTo(@20);
        make.width.equalTo(@32);
    }];
}

- (UIView *)lineView{
    if (_lineView == nil) {
        _lineView = [[UIView alloc]initWithFrame:CGRectZero];
        _lineView.backgroundColor = [UIColor yl_colorWithHexString:@"F6F6FB"];
        [self addSubview:_lineView];
    }
    return _lineView;
}

- (UIView *)markView{
    if (_markView == nil) {
        _markView = [[UIView alloc]initWithFrame:CGRectZero];
        _markView.backgroundColor = [UIColor whiteColor];
        [self addSubview:_markView];
    }
    return _markView;
}

- (UILabel *)timeLabel{
    if (_timeLabel == nil) {
        _timeLabel = [[UILabel alloc]init];
        _timeLabel.text = [NSDate yl_stringCurrentDateWithDateFormat:@"yyyy年MM月"];
        _timeLabel.font = [UIFont systemFontOfSize:12];
        [self.markView addSubview:_timeLabel];
    }
    return _timeLabel;
}

- (UIButton *)lastMonthBtn{
    if (_lastMonthBtn == nil) {
        _lastMonthBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        [_lastMonthBtn setImage:[UIImage imageNamed:@"icon_calendar_leftArrows"] forState:(UIControlStateNormal)];
        [_lastMonthBtn addTarget:self action:@selector(lastMonthBtnAction) forControlEvents:(UIControlEventTouchUpInside)];
        [self.markView addSubview:_lastMonthBtn];
    }
    return _lastMonthBtn;
}
- (void)lastMonthBtnAction{
    if (self.delegate && [self.delegate respondsToSelector:@selector(jy_lastMonthBtnAction)]) {
        [self.delegate jy_lastMonthBtnAction];
    }
}

- (UIButton *)nextMonthBtn{
    if (_nextMonthBtn == nil) {
        _nextMonthBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        [_nextMonthBtn setImage:[UIImage imageNamed:@"icon_calendar_rightArrows"] forState:(UIControlStateNormal)];
        [_nextMonthBtn addTarget:self action:@selector(nextMonthBtnAction) forControlEvents:(UIControlEventTouchUpInside)];
        [self.markView addSubview:_nextMonthBtn];
    }
    return _nextMonthBtn;
}
- (void)nextMonthBtnAction{
    if (self.delegate && [self.delegate respondsToSelector:@selector(jy_nextMonthBtnAction)]) {
        [self.delegate jy_nextMonthBtnAction];
    }
}

- (UIButton *)todayBtn{
    if (_todayBtn == nil) {
        _todayBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        [_todayBtn setTitle:@"今日" forState:(UIControlStateNormal)];
        [_todayBtn setTitleColor:[UIColor yl_colorWithHexString:@"4A78F8"] forState:(UIControlStateNormal)];
        _todayBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        [_todayBtn addTarget:self action:@selector(todayBtnAction) forControlEvents:(UIControlEventTouchUpInside)];
        [self.markView addSubview:_todayBtn];
    }
    return _todayBtn;
}
- (void)todayBtnAction{
    if (self.delegate && [self.delegate respondsToSelector:@selector(jy_todayMonthBtnAction)]) {
        [self.delegate jy_todayMonthBtnAction];
    }
}

@end
