//
//  DetailTableViewCell.m
//  CellHeight
//
//  Created by zhoupeng on 2016/10/11.
//  Copyright © 2016年 zhoupeng. All rights reserved.
//

#import "DetailTableViewCell.h"
#import "Masonry.h"
#import "TestModel.h"
@implementation DetailTableViewCell
{
    UILabel *Label;
    
    UILabel *Label2;
    
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        UILabel *label = [[UILabel alloc]init];
        label.numberOfLines = 0;
        label.backgroundColor = [UIColor greenColor];
        label.font = [UIFont systemFontOfSize:16.0f];
        label.textColor = [UIColor grayColor];
        [self.contentView addSubview:label];
        Label = label;
        
        UILabel *label2 = [[UILabel alloc]init];
        label2.numberOfLines = 0;
        label2.backgroundColor = [UIColor orangeColor];
        label2.textAlignment = NSTextAlignmentCenter;
        label2.font = [UIFont systemFontOfSize:20.0f];
        label2.textColor = [UIColor redColor];
        [self.contentView addSubview:label2];
        Label2 = label2;
        
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset(50);
            make.right.offset(-50);
            make.top.offset(0);
            make.bottom.mas_equalTo(label2.mas_top).offset(0);
        }];
        
        [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset(20);
            make.right.offset(-20);
            make.top.equalTo(label.mas_bottom).offset(0);
            make.bottom.offset(0);
           
        }];
        
        
    }
    return self;
}


-(void)setModel:(TestModel *)model
{
    Label.text = model.title;
    Label2.text = model.title2;
}

@end
