//
//  ST_Client.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "ST_Client.h"
#import "ST_TCPConnection.h"
#import "ST_TCPEstablished.h"
#import "ST_TCPListen.h"
#import "ST_TCPClosed.h"

@implementation ST_Client

- (void)tcpConnect {
    ST_TCPEstablished *establishedState = [ST_TCPEstablished new];
    ST_TCPConnection *connection = [[ST_TCPConnection alloc] initWithState:establishedState];
    [connection open];
    
    ST_TCPListen *listenState = [ST_TCPListen new];
    [connection close];
    [connection setCurrentState:listenState];
    [connection open];
    
    ST_TCPClosed *closedState = [ST_TCPClosed new];
    [connection close];
    [connection setCurrentState:closedState];
    [connection open];
    [connection close];
}

@end
