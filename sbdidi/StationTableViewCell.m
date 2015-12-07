//
//  StationTableViewCell.m
//  sbdidi
//
//  Created by ZK on 15/12/4.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "StationTableViewCell.h"

@implementation StationTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[[[NSBundle mainBundle] loadNibNamed:@"StationTableViewCell" owner:nil options:nil] firstObject];
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
