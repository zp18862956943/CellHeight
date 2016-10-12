//
//  DetailTableViewCell.m
//  CellHeight
//
//  Created by zhoupeng on 2016/10/11.
//  Copyright © 2016年 zhoupeng. All rights reserved.
//

#import "DetailTableViewCell.h"
#import "Masonry.h"
@implementation DetailTableViewCell
{
    UILabel *Label1;
    
    UIView *View;
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UILabel *label = [[UILabel alloc]init];
        label.numberOfLines = 0;
        label.font = [UIFont systemFontOfSize:16.0f];
        label.textColor = [UIColor grayColor];
        [self.contentView addSubview:label];
        Label1 = label;
        
        UIView *view = [[UIView alloc]init];
        view.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:view];
        View = view;
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView.mas_left).offset(50);
            make.right.equalTo(self.contentView.mas_right).offset(-50);
            make.top.equalTo(self.contentView.mas_top).offset(0);
            make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-50);
        }];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset(20);
            make.right.offset(-20);
            make.top.equalTo(label.mas_bottom).offset(0);
            make.height.equalTo(@50);
        }];
    }
    return self;
}


-(void)setTitle:(NSString *)title{
    Label1.text = title;
}


@end
