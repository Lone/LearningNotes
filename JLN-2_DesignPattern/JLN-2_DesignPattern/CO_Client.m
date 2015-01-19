//
//  CO_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CO_Client.h"
#import "CO_Picture.h"
#import "CO_Line.h"
#import "CO_Text.h"

@implementation CO_Client

- (void)drawPicture {
    NSLog(@"Begin Drawing Picture");
    CO_Picture *picture = [CO_Picture new];
    [picture draw];
    NSLog(@"Finish Drawing Picture");
}

- (void)drawLine {
    NSLog(@"Begin Drawing Line");
    CO_Line *line = [CO_Line new];
    [line draw];
    NSLog(@"Finish Drawing Line");
}

- (void)drawText {
    NSLog(@"Begin Drawing Text");
    CO_Text *text = [CO_Text new];
    [text draw];
    NSLog(@"Finish Drawing Text");
}

@end
