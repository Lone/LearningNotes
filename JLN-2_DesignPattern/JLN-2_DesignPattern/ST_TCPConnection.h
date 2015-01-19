//
//  ST_TCPConnection.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ST_TCPState.h"

@interface ST_TCPConnection : NSObject

- (instancetype)initWithState:(id<ST_TCPState>)state;
- (void)setCurrentState:(id<ST_TCPState>)curState;

- (void)open;
- (void)close;

@end
