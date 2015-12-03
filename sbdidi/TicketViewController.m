//
//  TicketViewController.m
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "TicketViewController.h"
#import <MapKit/MapKit.h>

@interface TicketViewController ()<MKMapViewDelegate>

@end

@implementation TicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* start=[self.dic objectForKey:@"start"];
    NSString* end=[self.dic objectForKey:@"end"];

    self.title=[start stringByAppendingFormat:@" - %@",end];
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"round_back_btn_normal.png"] style:UIBarButtonItemStylePlain target:self action:@selector(goBackTo)];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"评价" style:UIBarButtonItemStylePlain target:self action:@selector(edit)];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
