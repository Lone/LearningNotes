//
//  FM_ConcreteCreatorA.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import "FM_ConcreteCreatorA.h"
#import "FM_ConcreteProductA.h"

@implementation FM_ConcreteCreatorA

- (FM_ConcreteProductA *)fm_product {
    return [[FM_ConcreteProductA alloc] initWithPrice:100.0f];
}

@end
