//
//  MyBusViewController.h
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyBusViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView* tableview;

@end
