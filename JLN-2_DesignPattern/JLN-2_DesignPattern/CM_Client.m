//
//  CM_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CM_Client.h"
#import "CM_Controller.h"

@implementation CM_Client

- (void)watchTV {
    CM_Controller *controller = [CM_Controller new];
    [controller executeTurnOnCommand];
    [controller executeChangeChannelCommand];
    [controller executeTurnOffCommand];
}

@end
