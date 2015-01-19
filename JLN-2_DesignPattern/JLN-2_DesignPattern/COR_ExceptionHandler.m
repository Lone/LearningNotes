//
//  COR_ExceptionHandler.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "COR_ExceptionHandler.h"

@implementation COR_ExceptionHandler

- (void)hanldeMessage:(COR_Message *)message {
    NSLog(@"%@ : %s : %@", [self className], __func__, message.messageName);
    NSLog(@"Will Raise Exception");
}

@end
