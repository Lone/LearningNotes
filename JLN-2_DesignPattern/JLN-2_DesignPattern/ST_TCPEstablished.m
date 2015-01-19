//
//  ST_TCPEstablished.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ST_TCPEstablished.h"

@implementation ST_TCPEstablished

- (void)open {
    NSLog(@"%@ : %s", [self className], __func__);
}

- (void)close {
    NSLog(@"%@ : %s", [self className], __func__);
}

@end
