//
//  ticketDownVIew.m
//  sbdidi
//
//  Created by ZK on 15/12/4.
//  Copyright © 2015年 sohu. All rights reserved.
//

#import "ticketDownVIew.h"

@implementation ticketDownVIew

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor=[UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetRGBFillColor(context, 251.0/255.0, 251.0/255.0, 251.0/255.0, 1);
    CGContextSetRGBStrokeColor(context,0,0,1,0);
    
    CGContextMoveToPoint(context, 0, self.frame.size.height);
    CGContextAddLineToPoint(context, 0,0);
    CGContextAddLineToPoint(context, self.frame.size.width,0);
    CGContextAddLineToPoint(context, self.frame.size.width,self.frame.size.height);
    
    NSInteger width=10;
    
    NSInteger num= self.frame.size.width/width;
    for(NSInteger i=num+1;i>0;i--){
        CGContextAddLineToPoint(context, width*i,self.frame.size.height);
        CGContextAddLineToPoint(context, width*i-width/4,self.frame.size.height);
        CGContextAddArc(context,
                        width*i-width/2-width/4,
                        self.frame.size.height,
                        (width-2)/4,
                        0,
                        3.14,
                        1);
        
        
    }
    CGContextDrawPath(context,kCGPathFillStroke);
    
    
}

@end
