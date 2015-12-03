//
//  MyBusViewController.m
//  sbdidi
//
//  Created by zhangke on 15/12/3.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "MyBusViewController.h"
#import "BusTableViewCell.h"
#import "TicketViewController.h"

@interface MyBusViewController ()

@property (nonatomic,strong) NSMutableArray* array;

@end

@implementation MyBusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"我的行程";
    
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"round_back_btn_normal.png"] style:UIBarButtonItemStylePlain target:self action:@selector(goBackTo)];
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(edit)];
    
    
    self.array=[NSMutableArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"ticket" ofType:@"plist"]];
    [self.tableview reloadData];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BusTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell){
        cell=[[BusTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    NSDictionary* dic=[self.array objectAtIndex:indexPath.row];
    
    NSDateFormatter* datef=[[NSDateFormatter alloc] init];
    [datef setDateFormat:@"MM月dd日 "];
    cell.label1.text=[[datef stringFromDate:[NSDate date]] stringByAppendingString:[dic objectForKey:@"time"]];
    cell.label2.text=[dic objectForKey:@"start"];
    cell.label3.text=[dic objectForKey:@"end"];
    
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;

    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 70;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSDictionary* dic=[self.array objectAtIndex:indexPath.row];

    TicketViewController* tick=[[TicketViewController alloc] init];
    tick.dic=dic;
    [self.navigationController pushViewController:tick animated:YES];
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
