//
//  TicketViewController.h
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TicketViewController : UIViewController

@property (nonatomic,strong) NSDictionary* dic;
@property (nonatomic,strong) IBOutlet UITableView* tableview;

@property (nonatomic,strong) IBOutlet UIImageView* img1;
@property (nonatomic,strong) IBOutlet UILabel* label1;


@end
