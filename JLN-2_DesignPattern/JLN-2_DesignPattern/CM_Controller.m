//
//  CM_Controller.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CM_Controller.h"
#import "CM_ChangeChannelCommand.h"
#import "CM_TurnOnCommand.h"
#import "CM_TurnOffCommand.h"
#import "CM_TV.h"

@interface CM_Controller ()

@property (strong, nonatomic) CM_TV *tv;

@end

@implementation CM_Controller

- (instancetype)init {
    self = [super init];
    if (self) {
        _tv = [CM_TV new];
    }
    return self;
}

- (void)executeChangeChannelCommand {
    CM_ChangeChannelCommand *command = [[CM_ChangeChannelCommand alloc] initWithTV:_tv Channel:100];
    [command execute];
}

- (void)executeTurnOnCommand {
    CM_TurnOnCommand *command = [[CM_TurnOnCommand alloc] initWithTV:_tv];
    [command execute];
}

- (void)executeTurnOffCommand {
    CM_TurnOffCommand *command = [[CM_TurnOffCommand alloc] initWithTV:_tv];
    [command execute];
}

@end
