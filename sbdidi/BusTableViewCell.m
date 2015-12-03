//
//  BusTableViewCell.m
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "BusTableViewCell.h"

@implementation BusTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[[[NSBundle mainBundle] loadNibNamed:@"BusTableViewCell" owner:nil options:nil] firstObject];
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
