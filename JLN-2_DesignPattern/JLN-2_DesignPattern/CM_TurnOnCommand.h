//
//  CM_TurnOnCommand.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CM_Command.h"

@class CM_TV;

@interface CM_TurnOnCommand : NSObject <CM_Command>

- (instancetype)initWithTV:(CM_TV *)tv;

@end
