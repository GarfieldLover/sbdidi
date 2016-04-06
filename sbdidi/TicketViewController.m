//
//  TicketViewController.m
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "TicketViewController.h"
#import <MapKit/MapKit.h>
#import "ticketVIew.h"
#import "ticketAllVIew.h"
#import "StationTableViewCell.h"

@interface TicketViewController ()<MKMapViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UIView* backVIew;
@property(nonatomic,strong) ticketAllVIew* ticketvIew;
@property (nonatomic,strong) NSMutableArray* array;
@property (nonatomic,strong) UILabel* ti;



@end

@implementation TicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* start=[self.dic objectForKey:@"start"];
    NSString* end=[self.dic objectForKey:@"end"];
    
    if([start isEqualToString:@"清河"]){
        self.img2.image=[UIImage imageNamed:@"Snip20160128_6.png"];
    }else{
        self.img2.image=[UIImage imageNamed:@"Snip20160128_5.png"];
    }

    UILabel* ti=[[UILabel alloc] initWithFrame:CGRectMake(90, 0, self.navigationController.navigationBar.frame.size.width-90*2, 44)];
    ti.textAlignment=NSTextAlignmentCenter;
    ti.font=[UIFont systemFontOfSize:15.0f];
    ti.textColor=[UIColor colorWithRed:49/255.0 green:49/255.0 blue:49/255.0 alpha:1];
    ti.backgroundColor=[UIColor clearColor];
    ti.text=[start stringByAppendingFormat:@" - %@",end];
    [self.navigationController.navigationBar addSubview:ti];
    self.ti=ti;
    
    UIButton* left=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage* image=[UIImage imageNamed:@"round_back_btn_normal.png"];
    [left setImage:image forState:UIControlStateNormal];
    [left setFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    [left addTarget:self action:@selector(goBackTo) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:left];
    
    UIButton* right=[UIButton buttonWithType:UIButtonTypeCustom];
    [right setTitle:@"评价" forState:UIControlStateNormal];
    [right setFrame:CGRectMake(20, 0, 30, 30)];
    [right setTitleColor:[UIColor colorWithRed:120/255.0 green:120/255.0 blue:120/255.0 alpha:1] forState:UIControlStateNormal];
    right.titleLabel.font=[UIFont systemFontOfSize:15];
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:right];
    
    self.array=[NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"station" ofType:@"plist"]];
    [self.tableview reloadData];
    
    self.img1.layer.masksToBounds=YES;
    self.img1.layer.cornerRadius=self.img1.frame.size.width/2;
    
    NSDateFormatter* datef=[[NSDateFormatter alloc] init];
    [datef setDateFormat:@"MM月dd日"];
    self.label1.text=[NSString stringWithFormat:@"乘车日期：%@", [datef stringFromDate:[NSDate date]]];
}

-(void)goBackTo
{
    [self.ti removeFromSuperview];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)edit
{

}



-(IBAction)showTicket:(id)sender
{
    UIWindow* win=[UIApplication sharedApplication].keyWindow;

    self.backVIew=[[UIView alloc] initWithFrame:win.frame];
    self.backVIew.backgroundColor=[UIColor blackColor];
    self.backVIew.alpha=0.7;
    [win addSubview:self.backVIew];
    
    UITapGestureRecognizer* tap=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(backTap)];
    [self.backVIew addGestureRecognizer:tap];
    
    self.ticketvIew=[[ticketAllVIew alloc] initWithFrame:CGRectMake(10, 92, self.view.frame.size.width-10*2, 340) dic:self.dic];
    [win addSubview:self.ticketvIew];
    
    
}

-(void)backTap
{
    [self.backVIew removeFromSuperview];
    [self.ticketvIew removeFromSuperview];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    StationTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell){
        cell=[[StationTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSDictionary* dic=[self.array objectAtIndex:indexPath.row];
    
    cell.label1.text=[dic objectForKey:@"start"];
    cell.label2.text=[dic objectForKey:@"time"];
    if([[dic objectForKey:@"state"] isEqualToString:@"1"]){
        cell.ima1.image=[UIImage imageNamed:@"dgb_stopCell_begin.png"];
    }
        
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 44;
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
