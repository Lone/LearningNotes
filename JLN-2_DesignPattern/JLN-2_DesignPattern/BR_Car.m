//
//  BR_Car.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/27.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "BR_Car.h"

@implementation BR_Car

- (NSString *)description {
    return [NSString stringWithFormat:@"Glass = %@, Engine = %@, Wheel = %@", _glass, _engine, _wheel];
}

@end
