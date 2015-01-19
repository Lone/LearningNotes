//
//  ST_TCPConnection.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ST_TCPConnection.h"

@interface ST_TCPConnection ()

@property (strong, nonatomic) id<ST_TCPState> state;

@end

@implementation ST_TCPConnection

- (instancetype)initWithState:(id<ST_TCPState>)state {
    self = [super init];
    if (self) {
        _state = state;
    }
    return self;
}

- (void)setCurrentState:(id<ST_TCPState>)curState {
    _state = curState;
}

- (void)open {
    [_state open];
}

- (void)close {
    [_state close];
}

@end
