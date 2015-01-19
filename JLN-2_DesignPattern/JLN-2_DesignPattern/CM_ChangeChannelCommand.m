//
//  CM_ChangeChannelCommand.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CM_ChangeChannelCommand.h"
#import "CM_TV.h"

@interface CM_ChangeChannelCommand ()

@property (strong, nonatomic) CM_TV *tv;
@property (assign, nonatomic) int channel;

@end

@implementation CM_ChangeChannelCommand

- (instancetype)initWithTV:(id)tv Channel:(int)channel {
    self = [super init];
    if (self) {
        _tv = tv;
        _channel = channel;
    }
    return self;
}

- (void)execute {
    [_tv changeChannel:_channel];
}

@end
