//
//  JYJobCalendarEventInfoTitleCell.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/2.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventInfoTitleCell.h"

#import <UIColor+YLColor.h>
#import <Masonry.h>
#import <NSString+YLString.h>

@interface JYJobCalendarEventInfoTitleCell ()

/** 名字 */
@property (nonatomic, strong) UIButton * nameButton;

/** 提醒类型 */
@property (nonatomic, strong) UILabel * remindTypeLabel;

/** 线 */
@property (nonatomic, strong) UIView * lineView;

@end

@implementation JYJobCalendarEventInfoTitleCell
- (void)setEventModel:(JYJobCalendarEventModel *)eventModel{
    _eventModel = eventModel;
    [self.nameButton setTitle:eventModel.custName forState:(UIControlStateNormal)];
    self.remindTypeLabel.text = eventModel.remindTypeStr;
}

#pragma mark - 布局控件
- (void)layoutSubviews{
    [super layoutSubviews];
   CGFloat width = [self.eventModel.custName boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, 30) options: NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]} context:nil].size.width;
    if (width > 0) {
        width += 16;
    }
    [self.nameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.height.equalTo(@30);
        make.width.equalTo(@(width));
    }];
    [self.remindTypeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView.mas_centerY);
        make.left.equalTo(self.nameButton.mas_right).offset(10);
        make.height.equalTo(@24);
        make.width.equalTo(@(self.eventModel.typeW));
    }];
    [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.contentView);
        make.height.equalTo(@1);
    }];
}

- (UIButton *)nameButton{
    if (_nameButton == nil) {
        _nameButton = [[UIButton alloc]initWithFrame:CGRectZero];
        [_nameButton setTitleColor:[UIColor yl_colorWithHexString:@"29354D"] forState:(UIControlStateNormal)];
        _nameButton.titleLabel.font = [UIFont systemFontOfSize:18];
        [_nameButton addTarget:self action:@selector(customerInfo) forControlEvents:(UIControlEventTouchUpInside)];
        [self.contentView addSubview:_nameButton];
    }
    return _nameButton;
}
// 客户详情
- (void)customerInfo{
    if (self.delegate && [self.delegate respondsToSelector:@selector(JYJobCalendarEventInfoTitleCell:)]) {
        [self.delegate JYJobCalendarEventInfoTitleCell:self];
    }
}

- (UILabel *)remindTypeLabel{
    if (_remindTypeLabel == nil) {
        _remindTypeLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _remindTypeLabel.textColor = [UIColor yl_colorWithHexString:@"4A78F8"];
        _remindTypeLabel.font = [UIFont systemFontOfSize:14];
        _remindTypeLabel.textAlignment = NSTextAlignmentCenter;
        
        _remindTypeLabel.layer.masksToBounds = YES;
        _remindTypeLabel.layer.borderWidth = 1.0f;
        _remindTypeLabel.layer.borderColor = [UIColor yl_colorWithHexString:@"4A78F8"].CGColor;
        _remindTypeLabel.layer.cornerRadius = 4.0f;
        [self.contentView addSubview:_remindTypeLabel];
    }
    return _remindTypeLabel;
}

- (UIView *)lineView{
    if (_lineView == nil) {
        _lineView = [[UIView alloc]initWithFrame:CGRectZero];
        _lineView.backgroundColor = [UIColor yl_colorWithHexString:@"E6E7EA"];
        [self.contentView addSubview:_lineView];
    }
    return _lineView;
}
@end
