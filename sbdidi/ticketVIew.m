//
//  ticketVIew.m
//  sbdidi
//
//  Created by ZK on 15/12/4.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "ticketVIew.h"

@interface ticketVIew ()

@property (assign) int xxx;

@end

@implementation ticketVIew

- (id)initWithFrame:(CGRect)frame dic:(NSDictionary*)dic
{
    self = [super initWithFrame:frame];
    if (self) {
        self=[[[NSBundle mainBundle] loadNibNamed:@"ticketVIew" owner:nil options:nil] firstObject];
        self.backgroundColor=[UIColor clearColor];
        self.frame=frame;
        
        [NSTimer scheduledTimerWithTimeInterval:0.18 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
        
        NSDateFormatter* datef=[[NSDateFormatter alloc] init];
        [datef setDateFormat:@"MM月dd日"];
        self.label1.text=[datef stringFromDate:[NSDate date]];
        self.label2.text=[dic objectForKey:@"start"];
        self.label3.text=[dic objectForKey:@"end"];
        
        if([self.label2.text isEqualToString:@"中关村"]){
            CGRect rect=self.label2.frame;
            rect.origin.x+=15;
            self.label2.frame=rect;
            
            rect=self.img1.frame;
            rect.origin.x+=15;
            self.img1.frame=rect;
            
            rect=self.label3.frame;
            rect.origin.x+=15;
            self.label3.frame=rect;
        }
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    int i= rand()%10;
    switch (i) {
        case 0:
            CGContextSetRGBFillColor(context, 63/255.0, 172/255.0, 247/255.0, 1);
            break;
        case 1:
            CGContextSetRGBFillColor(context, 65/255.0, 205/255.0, 107/255.0, 1);
            break;
        case 2:
            CGContextSetRGBFillColor(context, 104/255.0, 141/255.0, 172/255.0, 1);
            break;
        case 3:
            CGContextSetRGBFillColor(context, 60/255.0, 196/255.0, 195/255.0, 1);
            break;
        case 4:
            CGContextSetRGBFillColor(context, 165/255.0, 75/255.0, 253/255.0, 1);
            break;
        case 5:
            CGContextSetRGBFillColor(context, 65/255.0, 211/255.0, 118/255.0, 1);
            break;
        case 6:
            CGContextSetRGBFillColor(context, 79/255.0, 150/255.0, 247/255.0, 1);
            break;
        case 7:
            CGContextSetRGBFillColor(context, 61/255.0, 200/255.0, 187/255.0, 1);
            break;
        case 8:
            CGContextSetRGBFillColor(context, 154/255.0, 85/255.0, 250/255.0, 1);
            break;
        case 9:
            CGContextSetRGBFillColor(context, 59/255.0, 186/255.0, 242/255.0, 1);
            break;
        default:
            break;
    }
    CGContextSetRGBStrokeColor(context,0,0,1,0);
    
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, 0,self.frame.size.height);
    CGContextAddLineToPoint(context, self.frame.size.width,self.frame.size.height);
    CGContextAddLineToPoint(context, self.frame.size.width,0);
    
    NSInteger width=10;
    
    NSInteger num= self.frame.size.width/width;
    for(NSInteger i=num+1;i>0;i--){
            CGContextAddLineToPoint(context, width*i,0);
            CGContextAddLineToPoint(context, width*i-width/4,0);
            CGContextAddArc(context,
                            width*i-width/2-width/4,
                            0,
                            (width-2)/4,
                            0,
                            3.14,
                            0);

        
    }
    CGContextDrawPath(context,kCGPathFillStroke);
    
    //宽度
    /*
    CGContextSetLineWidth(context, 1.5);
    CGContextSetRGBStrokeColor(context,1,1,1,1);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    
    CGContextMoveToPoint(context, self.frame.size.width/2-15, self.frame.size.height/2);
    CGContextAddLineToPoint(context, self.frame.size.width/2+15,self.frame.size.height/2);
    CGContextAddLineToPoint(context, self.frame.size.width/2+9,self.frame.size.height/2-3);
    
    CGContextDrawPath(context,kCGPathStroke);
*/
}



@end
