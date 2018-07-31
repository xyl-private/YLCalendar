//
//  JYJobCalendarEventNorView.m
//  JYJobCalendar
//
//  Created by xyanl on 2018/7/3.
//  Copyright © 2018年 McIntosh. All rights reserved.
//

#import "JYJobCalendarEventNorView.h"

#import <UIColor+YLColor.h>
#import <Masonry.h>
@interface JYJobCalendarEventNorView ()

/** 图片 */
@property (nonatomic, strong) UIImageView * imageView;

/** Description */
@property (nonatomic, strong) UILabel * messageLabel;

/** Description */
@property (nonatomic, strong) UIButton * actionBtn;

@end


@implementation JYJobCalendarEventNorView
#pragma mark - 布局控件
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(16);
        make.centerX.equalTo(self.mas_centerX);
        make.size.equalTo(@(self.imageView.image.size));
    }];
    
    [self.messageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.imageView.mas_bottom).offset(8);
    }];
    
    [self.actionBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX);
        make.top.equalTo(self.messageLabel.mas_bottom).offset(8);
        make.height.equalTo(@40);
        make.width.equalTo(@180);
    }];
}
#pragma mark - 懒加载
-(UIImageView *)imageView{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc]initWithFrame:CGRectZero];
        _imageView.image = [UIImage imageNamed:@"icon_eventNor"];
        [self addSubview:_imageView];
    }
    return _imageView;
}

- (UILabel *)messageLabel{
    if (_messageLabel == nil) {
        _messageLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        _messageLabel.text = @"暂无待办事项";
        _messageLabel.textColor = [UIColor yl_colorWithHexString:@"999999"];
        _messageLabel.font = [UIFont systemFontOfSize:14];
        [self addSubview:_messageLabel];
    }
    return _messageLabel;
}

- (UIButton *)actionBtn{
    if (_actionBtn == nil) {
        _actionBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        [_actionBtn setTitle:@"立即创建" forState:(UIControlStateNormal)];
        [_actionBtn setTitleColor:[UIColor yl_colorWithHexString:@"4A78F8"] forState:(UIControlStateNormal)];
        _actionBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [_actionBtn addTarget:self action:@selector(createCalendarEvent) forControlEvents:(UIControlEventTouchUpInside)];
        
        _actionBtn.layer.masksToBounds = YES;
        _actionBtn.layer.cornerRadius = 20.f;
        _actionBtn.layer.borderWidth = 1.0;
        _actionBtn.layer.borderColor = [UIColor yl_colorWithHexString:@"4A78F8"].CGColor;
        
        [self addSubview:_actionBtn];
    }
    return _actionBtn;
}

- (void)createCalendarEvent{
    if (self.delegate && [self.delegate respondsToSelector:@selector(JYJobCalendarEventNorViewAction)]) {
        [self.delegate JYJobCalendarEventNorViewAction];
    }
}

@end
