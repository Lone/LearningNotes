//
//  ST_TCPState.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/30.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ST_TCPState <NSObject>

- (void)open;
- (void)close;

@end
