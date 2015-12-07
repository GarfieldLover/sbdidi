//
//  ticketAllVIew.h
//  sbdidi
//
//  Created by ZK on 15/12/4.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ticketAllVIew : UIView

@property (nonatomic,strong) IBOutlet UIView* view1;


@property (nonatomic,strong) IBOutlet UILabel* label1;
@property (nonatomic,strong) IBOutlet UILabel* label2;
@property (nonatomic,strong) IBOutlet UILabel* label3;
@property (nonatomic,strong) IBOutlet UILabel* label4;

- (id)initWithFrame:(CGRect)frame dic:(NSDictionary*)dic;


@end
