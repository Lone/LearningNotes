//
//  COR_MessageHandler.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "COR_Message.h"

@protocol COR_MessageHandler <NSObject>

- (void)hanldeMessage:(COR_Message *)message;

@end
