//
//  COR_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "COR_Client.h"
#import "COR_SubHandler.h"

@implementation COR_Client

- (void)handleSubMessage {
    COR_SubHandler *subHandler = [COR_SubHandler new];
    COR_Message *message = [COR_Message new];
    message.messageName = @"helloMessage";
    message.handleLevel = 1;
    [subHandler hanldeMessage:message];
}

- (void)handleSuperMessage {
    COR_SubHandler *subHandler = [COR_SubHandler new];
    COR_Message *message = [COR_Message new];
    message.messageName = @"WarningMessage";
    message.handleLevel = 6;
    [subHandler hanldeMessage:message];
}

- (void)handleExceptionMessage {
    COR_SubHandler *subHandler = [COR_SubHandler new];
    COR_Message *message = [COR_Message new];
    message.messageName = @"ExceptionMessage";
    message.handleLevel = 11;
    [subHandler hanldeMessage:message];
}

@end
