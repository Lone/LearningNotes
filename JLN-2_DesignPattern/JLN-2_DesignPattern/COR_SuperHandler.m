//
//  COR_SuperHandler.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "COR_SuperHandler.h"
#import "COR_ExceptionHandler.h"

@implementation COR_SuperHandler

- (void)hanldeMessage:(COR_Message *)message {
    if (message.handleLevel >= 6 && message.handleLevel <= 10) {
        NSLog(@"%@ : %s : %@", [self className], __func__, message.messageName);
    }
    else {
        COR_ExceptionHandler *exceptionHandler = [COR_ExceptionHandler new];
        [exceptionHandler hanldeMessage:message];
    }
}

@end
