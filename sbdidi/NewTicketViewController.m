//
//  NewTicketViewController.m
//  sbdidi
//
//  Created by ZK on 16/6/12.
//  Copyright © 2016年 sohu. All rights reserved.
//

#import "NewTicketViewController.h"
#import "ticketAllVIew.h"

@interface NewTicketViewController ()

@property (nonatomic,strong) IBOutlet UIView* view1;


@end

@implementation NewTicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIButton* left=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* image=[UIImage imageNamed:@"round_back_btn_normal.png"];
    [left setImage:image forState:UIControlStateNormal];
    [left setFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [left addTarget:self action:@selector(goBackTo) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:left];
    
    UILabel* ti=[[UILabel alloc] initWithFrame:CGRectMake(90, 0, self.navigationController.navigationBar.frame.size.width-90*2, 44)];
    ti.textAlignment=NSTextAlignmentCenter;
    ti.font=[UIFont systemFontOfSize:20.0f];
    ti.textColor=[UIColor colorWithRed:49/255.0 green:49/255.0 blue:49/255.0 alpha:1];
    ti.backgroundColor=[UIColor clearColor];
    ti.text=@"我的车票";
    [self.navigationController.navigationBar addSubview:ti];
    
    
   ticketAllVIew*ticketvIew= [[ticketAllVIew alloc] initWithFrame:CGRectMake(0, 0, self.view1.frame.size.width, self.view1.frame.size.height) dic:self.dic];
    [self.view1 addSubview:ticketvIew];
}

-(void)goBackTo
{
    [self.navigationController popViewControllerAnimated:YES];
}

-(IBAction)showTicket:(id)sender
{

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
