//
//  BG_MacWindow.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BG_MacWindow.h"

@implementation BG_MacWindow

- (void)drawBorder {
    [self drawRect];
    [self drawText];
}

@end
