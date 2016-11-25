//
//  ticketAllVIew.m
//  sbdidi
//
//  Created by ZK on 15/12/4.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "ticketAllVIew.h"
#import "ticketVIew.h"
#import "ticketDownVIew.h"


@implementation ticketAllVIew

- (id)initWithFrame:(CGRect)frame dic:(NSDictionary*)dic
{
    self = [super initWithFrame:frame];
    if (self) {
        self=[[[NSBundle mainBundle] loadNibNamed:@"ticketAllVIew" owner:nil options:nil] firstObject];
        self.frame=frame;
        
        ticketVIew* ti=[[ticketVIew alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 80) dic:dic];
        [self addSubview:ti];
    
        
        
//        ticketDownVIew* tic=[[ticketDownVIew alloc] initWithFrame:CGRectMake(0, frame.size.height-20, frame.size.width, 30)];
//        [self insertSubview:tic belowSubview:self.viewffff];
        
        self.view1.layer.masksToBounds=YES;
        self.view1.layer.cornerRadius=2;
        
        self.label1.text=[dic objectForKey:@"time"];
        self.label2.text=[dic objectForKey:@"time2"];
        self.label3.text=[dic objectForKey:@"start1"];
        self.label4.text=[dic objectForKey:@"end1"];
        
        [self.label3 sizeToFit];
        [self.label4 sizeToFit];

        CGRect rect=self.label6.frame;
        rect.origin.x=CGRectGetMaxX(self.label3.frame)+10;
        self.label6.frame=rect;
        
        rect=self.label7.frame;
        rect.origin.x=CGRectGetMaxX(self.label4.frame)+10;
        self.label7.frame=rect;

    }
    return self;
}



@end
