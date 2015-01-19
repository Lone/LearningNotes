//
//  CM_TurnOffCommand.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "CM_TurnOffCommand.h"
#import "CM_TV.h"

@interface CM_TurnOffCommand ()

@property (strong, nonatomic) CM_TV *tv;

@end

@implementation CM_TurnOffCommand

- (instancetype)initWithTV:(CM_TV *)tv {
    self = [super init];
    if (self) {
        _tv = tv;
    }
    return self;
}

- (void)execute {
    [_tv turnOff];
}

@end
