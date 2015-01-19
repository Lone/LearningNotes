//
//  COR_Message.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/29.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface COR_Message : NSObject

@property (strong, nonatomic) NSString *messageName;

// SubHandler : 1 - 5
// SuperHandler : 6 - 10
// ExceptionHandler : > 10 or <= 0
@property (assign, nonatomic) int handleLevel;

@end
