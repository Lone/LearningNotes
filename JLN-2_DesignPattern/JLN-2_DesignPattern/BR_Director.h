//
//  BR_Director.h
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BR_Car;
@class BR_CarBuilder;

@interface BR_Director : NSObject

- (instancetype)initWithCarBuilder:(BR_CarBuilder *)builder;
- (BR_Car *)construct;

@end
