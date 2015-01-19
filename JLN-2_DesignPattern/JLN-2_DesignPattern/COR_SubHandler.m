//
//  COR_SubHandler.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "COR_SubHandler.h"
#import "COR_SuperHandler.h"

@interface COR_SubHandler ()

@property (strong, nonatomic) COR_SuperHandler *superHandler;

@end

@implementation COR_SubHandler

- (instancetype)init {
    self = [super init];
    if (self) {
        _superHandler = [COR_SuperHandler new];
    }
    return self;
}

- (void)hanldeMessage:(COR_Message *)message {
    if (message.handleLevel >= 1 && message.handleLevel <= 5) {
        NSLog(@"%@ : %s : %@", [self className], __func__, message.messageName);
    }
    else {
        [_superHandler hanldeMessage:message];
    }
}

@end
